# About

| 组件 | 名称 | 2022-02-28更新配置 |
| --- | --- | --- |
| CPU | [e3 1230v3](https://ark.intel.com/content/www/cn/zh/ark/products/75054/intel-xeon-processor-e31230-v3-8m-cache-3-30-ghz.html) | |
| 主板 | [GA-B85M-HD3](https://www.gigabyte.cn/Motherboard/GA-B85M-HD3-A-rev-10#ov) | |
| 显卡 | GTX750 | GTX660 |
| 网卡 | BCM94360CD 4 天线 | |
| 硬盘 | Samsung SSD 840 EVO 120GB | 亿储 256GB |
| OC版本 | 0.7.8 | |
| macOS | High Sierra 10.13.6(17G14042) | Big Sur 11.6.4(20G417) |
| 机型 | iMac14,4 | |

## 2022-02-28 更新系统版本

更换了GTX660显卡，准备更新Big Sur（这块Kepler架构的显卡可以Big Sur下完美免驱，Monterey开始就不再免驱了）。
但是要先做USB定制。因为之前有看到说要更新到Big Sur 11.2.3之后的版本必须先做USB定制，否则可能USB全部失效，键盘鼠标失灵。

### USB定制

之前使用Hackintool在macOS系统下有后面板的两个USB3.0端口无法识别，并且免驱网卡BCM94360CD自带的蓝牙也无法被驱动。
所以这次改用USBToolBox工具在windows下完成了USB定制。3个USB3.0端口都正常了，蓝牙也驱动成功。

### 系统迁移

之前在三星840EVO的SSD上面安装好的Hign Sierra还想保留，于是找来一块亿储的256G固态先做系统迁移，使用Carbon Copy Cloner一次迁移成功。
然后在亿储的固态上成功更新系统到Big Sur。更新之后一切正常。

迁移过程很快，令我吃惊。更新完成后对硬盘进行测速，发现这块山寨固态顺序读写都能达到500MB/s，4K读写相比三星840EVO也不相上下。吊打了刚入手的台电128GB固态（也是sata接口）。属实没有想到。

#### 使用Carbon Copy Cloner的注意事项和遇到的问题

- 关闭SIP
- 将目标盘格式化的时候注意保留ESP分区
- 迁移到目标盘后，还要记得把EFI文件复制到目标盘的ESP目录中


## 2022-02-09 更新OC版本v0.7.8

使用OCAT更新，一切顺利

## 2021-09-26

声卡、网卡、显卡正常驱动。USB定制有点问题，未能完成定制

### 安装过程中遇到的问题

#### 显卡驱动

GTX7xx系列显卡多数都是免驱的，但是GTX750/GTX750Ti是Maxwell架构并不能免驱，需要配合NVIDIA的WebDriver进行驱动。

官方下载的macOS High Sierra是17G66版本，并没有对应的WebDriver驱动。先进入系统更新到17G14033版本，安装对应的[387.10.10.10.40.139版本WebDriver驱动](https://www.tonymacx86.com/nvidia-drivers/)之后重启即可生效。

macOS High Sierra(17G14033)之后还有一个小版本更新可选(17G14042)。更新之后WebDriver也会自动更新。

#### 更新小版本过程中出现Security Violation错误

```text
OCSB: No suitable signature - Security Violation

OCB: Apple Secure Boot prohibits this boot entry, enforcing!

OCB: LoadImage failed - Security Violation
```

将Misc → Security → SecureBootModel设置为Disabled

#### OC引导操作系统选择界面(opencore boot menu)没有macOS选项

之前的OC V0.6.7版本一切正常，但是更新到0.7.5之后就opencore boot menu就没有macOS选项了。OC官方的General Troubleshooting有提到该问题，详见[Can't see macOS partitions](https://dortania.github.io/OpenCore-Install-Guide/troubleshooting/extended/opencore-issues.html#can-t-see-macos-partitions)。
