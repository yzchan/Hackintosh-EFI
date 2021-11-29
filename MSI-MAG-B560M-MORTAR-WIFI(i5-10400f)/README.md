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

USB已定制（USB目录中包含了定制文件）。微星迫击炮B560M-WIFI主板共21个端口，

##### 前面板
- 左边两个USB2.0是一个Hub对应端口11
- 第三个USB3.0接口分别对应USB3.0的20端口和USB2.0的05端口。

##### 后面板
- 第一排4个USB2.0接口分别对应HS07~HS10(Port07~10)。
- 第二排为两个视频输出接口（DP/HDMI）。
- 第三排有一个typeC接口（支持自动切换），分别对应USB3.0的17端口和USB2.0的01端口
- 第三排右边的USB3.0接口跟第四排的两个USB3.0接口是同一个USB3.0 Hub，分别对应USB3.0的18端口和USB2.0的03端口

定制前使用的是黑果小兵维护的[USBInjectAll.kext v0.7.8](https://github.com/daliansky/OS-X-USB-Inject-All)。如果使用前作者维护v0.7.1版本的USBInjectAll.kext会导致进入系统登录界面时鼠标键盘失灵。


| 端口  | 名称  | 说明  |
| ---- | ---- | ---- |
| 01 | HS01 | typec对应的USB2.0 |
| 02 | HS02 | IOUSBHostDevice 板载WIFI和蓝牙 |
| 03 | HS03 | ASM107x 后面板USB3.0Hub对应的USB2.0接口 | 
| 04 | HS04 | Unknown |
| 05 | HS05 | 前面板USB3.0接口->USB2.0 |
| 06 | HS06 | Unknown |
| 07 | HS07 | 后面板第一排USB2.0 |
| 08 | HS08 | 后面板第一排USB2.0 |
| 09 | HS09 | 后面板第一排USB2.0 |
| 10 | HS10 | 后面板第一排USB2.0 |
| 11 | HS11 | USB2.0Hub 前面板左边两个USB2.0接口 |
| 12 | HS12 | Unknown |
| 13 | HS13 | Unknown |
| 14 | HS14 | MYSTIC LIGHT 微星RGB灯效 |
| 15 | USR1 | Unknown |
| 16 | USR2 | Unknown |
| 17 | SS01 | typec对应的USB3.0 |
| 18 | SS02 | ASM107x 后面板USB3.0Hub |
| 19 | SS03 | Unknown |
| 20 | SS04 | 前面板USB3.0接口 |
| 21 | SS05 | Unknown |

#### TODOs
手头暂时没有免驱网卡，蓝牙WIFI无法使用，USB定制中蓝牙占用的端口也未定制。后期会加上。
