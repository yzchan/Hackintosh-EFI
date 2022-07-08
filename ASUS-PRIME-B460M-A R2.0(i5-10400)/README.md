# About

| 组件 | 名称 |
| --- | --- |
| CPU | [i3-10400](https://ark.intel.com/content/www/cn/zh/ark/products/199271/intel-core-i5-10400-processor-12m-cache-up-to-4-30-ghz.html) |
| 主板 | [ASUS PRIME B460M-A R2.0](https://www.asus.com.cn/Motherboards-Components/Motherboards/PRIME/PRIME-B460M-A-R2-0/) |
| 核显 | Intel UHD 630 |
| 显卡 | [华硕AREZ-RX560-O2G-EVO](https://www.asus.com/motherboards-components/graphics-cards/arez/arez-rx560-o2g-evo/) |
| 网卡 | BCM94360CD 4 天线 |
| 硬盘 | [Samsung SSD 970 EVO Plus 500GB](https://www.samsungeshop.com.cn/product/MZ-V7S/MZ-V7S250BW) |
| OC版本 | 0.8.2 |
| macOS | macOS Monterey 12.2.1 (21D62) |
| 机型 | iMac20,1 |

- [ ] 核显HDMI无法完成引导 todo
- [x] 板载网卡和声卡
- [x] 睡眠唤醒。蓝牙可以唤醒（蓝牙键盘正常唤醒，蓝牙鼠标不行）
- [x] CPU 变频
- [x] WiFi&蓝牙，奋威T919免驱
- [x] 接力和隔空投送

## 2022-07-08

更新oc0.8.2。感觉开机时间变长了。

## 2022-03-09

更新oc0.7.9，解决了开机引导时间长的问题（三星固态开机Trim导致）。需要将Kernel->Quirks->SetApfsTrimTimeout设置为0。

## USB定制

使用USBToolBox定制后的kext导致卡蓝条，未解决。最后还是使用Hackintool定制。
该主板前面板的蓝色接口好像是2.0，插入2.0和3.0设备都对应HS07。其他端口正常。
HS14端口是内置的Hub，免驱网卡就挂在这个端口上。

## 开机卡F1

开机出现"the system has posted in safe mode"错误，必须按F1进入BIOS一次才能正常引导系统，勾选Kernel>Quirks>DisableRtcChecksum即可解决。

> DisableRtcChecksum：在AppleRTC中禁用校验和写入（0x58-0x59）。

## CPU架构无法识别

CPU型号识别正常，但CPU架构显示????，开进进BIOS开启初始化iGPU就可以正确识别了(主显示设备primary display设置为PCIE或者Auto，因为还是要用显卡输出的)。

神奇的是开启iGPU初始化之后，还解决原本显示器上的音频口没有声音输出的问题，到底是为啥我也没弄懂。
