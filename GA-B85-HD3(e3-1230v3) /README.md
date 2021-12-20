About
---

| 组件 | 名称 |
| --- | --- |
| CPU | [e3 1230v3](https://ark.intel.com/content/www/cn/zh/ark/products/75054/intel-xeon-processor-e31230-v3-8m-cache-3-30-ghz.html) |
| 主板 | [GA-B85M-HD3](https://www.gigabyte.cn/Motherboard/GA-B85M-HD3-A-rev-10#ov) |
| 显卡 | GTX750（需要WebDriver）|
| 网卡 | BCM94360CD 4 天线 |
| 硬盘 | Samsung SSD 840 EVO 120GB |
| OC版本 | 0.7.5 |
| macOS | macOS High Sierra(17G14042) |
| 机型 | iMac14,4 |

声卡、网卡、显卡正常驱动。USB未定制（有点问题尚未解决）。

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


