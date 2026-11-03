// SPDX-License-Identifier: GPL-2.0-only
/* DMA-owned framebuffer for a PYNQ-controlled display engine.
 * Stop the display engine and close Qt before unbinding this device.
 */
#include <linux/module.h>
#include <linux/platform_device.h>
#include <linux/of.h>
#include <linux/fb.h>
#include <linux/dma-mapping.h>

struct skill_fb {
    struct device *dev;
    void *pixels;
    dma_addr_t dma;
    size_t bytes;
    u32 palette[16];
};

static int skill_mmap(struct fb_info *info, struct vm_area_struct *vma)
{
    struct skill_fb *fb = info->par;
    return dma_mmap_wc(fb->dev, vma, fb->pixels, fb->dma, fb->bytes);
}

static int skill_setcolreg(unsigned reg, unsigned r, unsigned g, unsigned b,
                          unsigned a, struct fb_info *info)
{
    struct skill_fb *fb = info->par;
    if (reg >= 16) return -EINVAL;
    fb->palette[reg] = ((r >> 8) << 16) | ((g >> 8) << 8) | (b >> 8);
    return 0;
}

static const struct fb_ops skill_ops = {
    .owner = THIS_MODULE,
    .fb_read = fb_sys_read,
    .fb_write = fb_sys_write,
    .fb_mmap = skill_mmap,
    .fb_setcolreg = skill_setcolreg,
    .fb_fillrect = sys_fillrect,
    .fb_copyarea = sys_copyarea,
    .fb_imageblit = sys_imageblit,
};

static int skill_probe(struct platform_device *pdev)
{
    struct fb_info *info;
    struct skill_fb *fb;
    u32 width, height;
    int error;
    if (of_property_read_u32(pdev->dev.of_node, "width", &width) ||
        of_property_read_u32(pdev->dev.of_node, "height", &height)) return -EINVAL;
    if (!width || !height || width > 2048 || height > 2048) return -EINVAL;
    error = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
    if (error) return error;
    info = framebuffer_alloc(sizeof(*fb), &pdev->dev);
    if (!info) return -ENOMEM;
    fb = info->par;
    fb->dev = &pdev->dev;
    fb->bytes = PAGE_ALIGN(width * height * 3);
    fb->pixels = dma_alloc_wc(fb->dev, fb->bytes, &fb->dma, GFP_KERNEL);
    if (!fb->pixels) { framebuffer_release(info); return -ENOMEM; }
    memset(fb->pixels, 0, fb->bytes);
    strscpy(info->fix.id, "pynq-skill-fb", sizeof(info->fix.id));
    info->fix.smem_start = fb->dma;
    info->fix.smem_len = fb->bytes;
    info->fix.type = FB_TYPE_PACKED_PIXELS;
    info->fix.visual = FB_VISUAL_TRUECOLOR;
    info->fix.line_length = width * 3;
    info->var.xres = info->var.xres_virtual = width;
    info->var.yres = info->var.yres_virtual = height;
    info->var.bits_per_pixel = 24;
    info->var.red.offset = 16; info->var.red.length = 8;
    info->var.green.offset = 8; info->var.green.length = 8;
    info->var.blue.offset = 0; info->var.blue.length = 8;
    info->var.height = info->var.width = -1;
    info->var.activate = FB_ACTIVATE_NOW;
    info->screen_base = (char __iomem *)fb->pixels;
    info->screen_size = fb->bytes;
    info->pseudo_palette = fb->palette;
    info->fbops = &skill_ops;
    info->flags = FBINFO_DEFAULT;
    error = register_framebuffer(info);
    if (error) {
        dma_free_wc(fb->dev, fb->bytes, fb->pixels, fb->dma);
        framebuffer_release(info); return error;
    }
    platform_set_drvdata(pdev, info);
    dev_info(&pdev->dev, "fb%d: %ux%u BGR888 DMA=%pad bytes=%zu\n",
             info->node, width, height, &fb->dma, fb->bytes);
    return 0;
}

static int skill_remove(struct platform_device *pdev)
{
    struct fb_info *info = platform_get_drvdata(pdev);
    struct skill_fb *fb = info->par;
    unregister_framebuffer(info);
    dma_free_wc(fb->dev, fb->bytes, fb->pixels, fb->dma);
    framebuffer_release(info);
    return 0;
}

static const struct of_device_id skill_match[] = {
    { .compatible = "pynq-skill,dma-framebuffer" }, { }
};
MODULE_DEVICE_TABLE(of, skill_match);
static struct platform_driver skill_driver = {
    .probe = skill_probe, .remove = skill_remove,
    .driver = { .name = "pynq-skill-dmafb", .of_match_table = skill_match },
};
module_platform_driver(skill_driver);
MODULE_LICENSE("GPL v2");
MODULE_DESCRIPTION("DMA framebuffer bridge for PYNQ Qt display");
