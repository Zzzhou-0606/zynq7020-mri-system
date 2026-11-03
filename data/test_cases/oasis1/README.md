# OASIS-1 五例演示用例

五例来自冻结网络的 evaluation40/development40 集合：OAS1_0179_MR1、OAS1_0234_MR1、OAS1_0279_MR1、OAS1_0365_MR1、OAS1_0424_MR1。目录使用小写；数据集公开编号保留在 JSON 和 CSV 正文中。

该集合曾用于开发与调参，不作为新的独立测试集。分类和分割结果为已有结果副本，本次未重新运行模型或开发板。

## 输入选择

在工作台中分别选择同一用例的：

- 分类 MRI：`classification_t88/mri.hdr`，配对的 `.img` 同目录保留。
- 分类脑掩膜：`classification_t88/brain_mask.hdr`，配对的 `.img` 同目录保留。
- 原生空间 MRI：`native_mri/mri.nii.gz`。

T88 数据含单例第四维，读取时 squeeze 为 176×208×176。保持原始网格和方向。`segmentation/mri.mgz` 与 `segmentation/labels.mgz` 为配套的重采样 MRI 和分割标签，只在二者共同空间中叠加。

## 已有结果

`results/frozen_classification_and_volumes.json` 保存浮点冻结参考预测、临床标签和海马体积；预测与临床标签分别记录。`results/measurements.json` 保存已有量测及几何信息。PNG 为已有质控切片或脑区叠加图，未新做专家边界验收。

总览见 [results_summary.csv](results_summary.csv)，文件索引及影像 SHA-256 见 [manifest.json](manifest.json)。浮点参考值与板端 INT16 输出存在量化差异，不能直接要求两者逐位相等。当前硬件保存结果的精确回归比较另见 [正式验证结果](../../../sim/README.md)。

## 数据来源与使用条款

影像来源为 OASIS-1 Cross-Sectional，数据由 OASIS 项目提供。项目研究负责人为
D. Marcus、R. Buckner、J. Csernansky 和 J. Morris；资助项目为 P50 AG05681、P01 AG03991、
P01 AG026276、R01 AG021910、P20 MH071616、U24 RR021382。

引用：Marcus et al. (2007), *Open Access Series of Imaging Studies (OASIS):
Cross-sectional MRI Data in Young, Middle Aged, Nondemented, and Demented Older Adults*.
[论文 DOI](https://doi.org/10.1162/jocn.2007.19.9.1498)。

这些数据及其派生成果不适用主项目的 MIT 许可，须遵守取得数据时适用的来源条款和授权。
OASIS 官网现行条款限定非商业学术研究用途，禁止尝试识别或联系受试者，并对数据共享作出限制。
获取和使用要求见 [OASIS 官方网站](https://sites.wustl.edu/oasisbrains/)
及 [数据条款](https://sites.wustl.edu/oasisbrains/home/access/)。
