# 第三方组件

此目录包保留依赖的许可证及元数据，不更换现有项目依赖版本。具体版本见根目录 `portable.json`。

- CPython：`runtime/LICENSE.txt`。
- Python 依赖（含 PyTorch、torchvision、NumPy、SciPy、pywebview、pythonnet 等）：`runtime/Lib/site-packages/*.dist-info/` 内的 LICENSE、NOTICE 或 licenses 文件夹，以及各组件自带的许可证。
- FastSurfer：`runtime/app/host/segmentation/vendor/FastSurfer/LICENSE`；代码和三个方向的模型来自项目现有 FastSurfer 副本。
- 冻结分类模型：`models/classification`，对应 `runtime/app/shared/model_contract/system_frozen_20261022.json`；仅复制运行所需权重。
- Microsoft Edge WebView2：使用固定版本 x64 Runtime，文件位于 `runtime/webview2`。微软提供的发布说明及许可入口：https://developer.microsoft.com/microsoft-edge/webview2/ 。组件自带第三方许可也保留在该目录内。
- Microsoft Visual C++ Redistributable x64：采用应用本地 DLL 部署。构建时取自本机已安装的微软签名可再分发运行库，放在 `runtime` 中。部署说明：https://learn.microsoft.com/cpp/windows/choosing-a-deployment-method 。

固定版本 WebView2 和应用本地 C++ DLL 随工作台新版本更新，不会依赖用户电脑的全局 Python 或浏览器安装。GPU 驱动和 Windows .NET 桌面组件由操作系统提供。
