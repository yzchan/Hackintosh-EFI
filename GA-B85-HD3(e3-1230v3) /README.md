About
---

macOS High Sierra(17G14042) + OpenCore 0.7.5


| 组件 | 名称 |
| --- | --- |
| CPU | [e3 1230v3](https://ark.intel.com/content/www/cn/zh/ark/products/75054/intel-xeon-processor-e31230-v3-8m-cache-3-30-ghz.html) |
| 主板 | GA-B85M-HD3 |
| 显卡 | GTX750（需要WebDriver）|
| 网卡 | BCM94360CD 4 天线 |
| 机型 | iMac14,4 |

声卡、网卡、显卡正常驱动。USB未定制（有点问题尚未解决）。

### 安装过程中遇到的问题


#### 显卡驱动

GTX7xx系列显卡多数都是免驱的，但是GTX750/GTX750Ti是Maxwell架构并不能免驱，需要配合NVIDIA的WebDriver进行驱动。

官方下载的macOS High Sierra(17G66) 版本没有对应的驱动，需要进入系统之后更新一次到macOS High Sierra(17G14033)版本，去下载[对应的387.10.10.10.40.139版本WebDriver驱动](https://www.tonymacx86.com/nvidia-drivers/)。安装驱动之后重启即可生效。

macOS High Sierra(17G14033)之后还有一个小版本更新可选(17G14042)。更新之后WebDriver会自动更新。

#### 更新小版本过程中出现Security Violation错误

```text
OCSB: No suitable signature - Security Violation

OCB: Apple Secure Boot prohibits this boot entry, enforcing!

OCB: LoadImage failed - Security Violation
```

将Misc → Security → SecureBootModel设置为Disabled即可


#### OC引导操作系统选择界面(opencore boot menu)没有macOS选项

之前的OC V0.6.7版本一切正常，但是更新到0.7.5之后就opencore boot menu就没法选择苹果了。后来在[OC官方文档(Can't see macOS partitions)](https://dortania.github.io/OpenCore-Install-Guide/troubleshooting/extended/opencore-issues.html#can-t-see-macos-partitions)找到了解决方案。


