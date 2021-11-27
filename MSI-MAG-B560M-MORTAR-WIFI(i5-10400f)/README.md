About
---

macOS Big Sur 11.2.3 (20D91) + OpenCore 0.7.5（不带启动图形界面）


| 组件 | 名称 |
| --- | --- |
| CPU | i5 10400f |
| 主板 | MSI MAG B560M MORTAR WIFI |
| 显卡 | GTX770 |
| 网卡 | - |
| 硬盘 | Samsung SSD 970 EVO Plus 500GB |
| 机型 | iMac20,1 |

#### 注意点

- 板载网卡无法驱动（据说无解）
- 三星970EVOPlus最好刷最新的固件

#### USB定制

USB已定制（USB目录中包含了定制文件）。前面板只定制了USB3.0（蓝色）的接口，后面板只定制了第一排4个USB2.0的接口。其余端口不知道为什么在Hackintool中插拔都不显示。但是都可以正常使用。

定制前使用的是黑果小兵维护的[USBInjectAll.kext v0.7.8](https://github.com/daliansky/OS-X-USB-Inject-All)。如果使用前作者维护v0.7.1版本的USBInjectAll.kext会导致进入系统登录界面时鼠标键盘失灵。

| 端口  | 说明  |
| ---- | ---- |
| HS01 | typec2.0 |
| HS02 | IOUSBHostDevice |
| HS03 | ASM107x | 
| HS04 | 无效 |
| HS05 | 前面板第3个(USB2.0) |
| HS06 | 无效 |
| HS07 | 后面板第一排第1个 |
| HS08 | 后面板第一排第2个 |
| HS09 | 后面板第一排第3个 |
| HS10 | 后面板第一排第4个 |
| HS11 | USB2.0Hub |
| HS12 | 无效 |
| HS13 | 无效 |
| HS14 | MYSTIC LIGHT |
| USR1 | 无效 |
| USR2 | 无效 |
| SS01 | typec3.0 |
| SS02 | ASM107x |
| SS03 | 无效 |
| SS04 | 前面板第3个(USB3.0) |
| SS05 | 无效 |

#### TODOs
手头暂时没有免驱网卡，蓝牙WIFI无法使用，USB定制中蓝牙占用的端口也未定制。后期会加上。
