# About

| 组件 | 名称 |
| --- | --- |
| CPU | [i3-10400](https://ark.intel.com/content/www/cn/zh/ark/products/199271/intel-core-i5-10400-processor-12m-cache-up-to-4-30-ghz.html) |
| 主板 | [ASUS PRIME B460M-A R2.0](https://www.asus.com.cn/Motherboards-Components/Motherboards/PRIME/PRIME-B460M-A-R2-0/) |
| 核显 | Intel UHD 630 |
| 显卡 | [华硕AREZ-RX560-O2G-EVO](https://www.asus.com/motherboards-components/graphics-cards/arez/arez-rx560-o2g-evo/) |
| 网卡 | BCM94360CD 4 天线 |
| 硬盘 | [Samsung SSD 970 EVO Plus 500GB](https://www.samsungeshop.com.cn/product/MZ-V7S/MZ-V7S250BW) |
| OC版本 | 0.7.8 |
| macOS | macOS Monterey 12.2.1 (21D62) |
| 机型 | iMac20,1 |

## USB已定制

使用USBToolBox定制后的kext导致卡蓝条，未解决。最后还是使用Hackintool定制。
该主板前面板的蓝色接口好像是2.0，插入2.0和3.0设备都对应HS07。其他端口正常。
HS14端口是内置的Hub，免驱网卡就挂在这个端口上。

## 备忘

- 内置声卡正常驱动，但是显示器上的音频没有声音
- 核显已驱动，但hdmi和dvi接口无输出（主板没有dp接口）

## 开机卡F1

开机出现"the system has posted in safe mode"错误，必须按F1进入BIOS一次才能正常引导系统，勾选Kernel>Quirks>DisableRtcChecksum即可解决。

> DisableRtcChecksum：在AppleRTC中禁用校验和写入（0x58-0x59）。