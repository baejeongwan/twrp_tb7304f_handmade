## modification in recovery.fstab
```
    /usbotg       auto        /dev/block/sda1                /dev/block/sda                         flags=display="USB-OTG";backup=0;wipeingui;storage;removable
```
was removed because is wasn't tested yet

```
    
auto          vfat        /devices/mtk-msdc.0/11230000.msdc0*                   defaults        voldmanaged=sdcard0:auto
auto          auto        /devices/mtk-msdc.0/11240000.msdc1*                   defaults        voldmanaged=sdcard1:auto;noemulatedsd;encryptable=userdata
auto          vfat        /devices/platform/mt_usb*                             defaults        voldmanaged=usbotg:auto
```