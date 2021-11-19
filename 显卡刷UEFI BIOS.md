怎么给显卡刷vBIOS支持UEFI启动 
---

> 刷Bios有风险，任何损坏请自行承担责任！

### 如何查看自己的显卡是否支持UEFI

### 准备工作
先下载如下软件，N卡A卡按需选择刷机软件。
- [GPU-Z](https://www.techpowerup.com/download/techpowerup-gpu-z/)
- [AMD and Nvidia GOP update]()
- [NVIDIA NVFlash](https://www.techpowerup.com/download/nvidia-nvflash/)
- [AMD VBFlash/ATI ATIFlash](https://www.techpowerup.com/download/ati-atiflash/)

安装python3环境，并使用pip安装扩展

### 开始刷入vbios

这里以我的GTX770（N卡）为例：

1.用GPU-Z备份显卡BIOS（点击UEFI左边的转发小图标），备份时会暂时禁用显卡，出现短暂黑屏，恢复后会弹窗选择BIOS保存路径。或者从[这里](https://www.techpowerup.com/vgabios/)下载对应显卡型号的BIOS。

2.把备份下来的BIOS文件，放到 AMD and Nvidia GOP update 文件夹里面，并且把备份出来的 BIOS文件 拖动 到 GOPupd.bat 文件上，如图：

3.会弹出一个窗口，界面提示 没有找到 EFI ROM，然后选择 Y，回车继续

4.这里是重点了，下面界面提示  Product name = GK104 Board，这里的 GF104B Board 就是你的显卡GPU，要选择对，这里选择的是 4。然后提示 File 'GK104_updGOP.rom' with updated GOP 0x1001F was written，表示就是在BIOS里面添加UEFI了。

5.可以验证一下 GK104_updGOP.rom 是否添加上 UEFI了，确认无误后，就可以开始刷入显卡了。如下图，如果看到 UEFI VERSION信息表示BIOS已经带UEFI了！

6.把生成的 BIOS 文件，复制到 nvflash 文件夹里面，然后 开始菜单 → 命令提示符 → 右键以管理员身份运行，cd到nvflash文件夹目录输入命令 `nvflash -6 GK104_updGOP.rom` (替换成自己显卡bios的文件名)。然后 CMD 先不要按回车，窗口也不要关闭！到设备管理器里面看下显卡是否处于禁用状态。未禁用的话禁用一下显卡，接着回到CMD窗口，回车，按Y，正常的话出现滴的一声，等刷入进度条读完就成功了。

7.重启电脑验证是否生效。
