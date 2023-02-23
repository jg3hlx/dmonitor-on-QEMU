cd /d %~dp0
 
"C:\Program Files\qemu\qemu-system-arm" ^
-m 1024 ^
-smp 4 ^
-M raspi2b  ^
-kernel kernel7.img ^
-dtb bcm2709-rpi-2-b.dtb ^
-drive format=raw,file=2022-09-22-raspios-bullseye-armhf-full.img ^
 -append "console=ttyAMA0 root=/dev/mmcblk0p2 rw rootwait rootfstype=ext4 dwc_otg.fiq_fsm_enable=0 bcm2708_fb.fbwidth=1024 bcm2708_fb.fbheight=768" ^
-serial stdio ^
-no-reboot ^
-usb ^
-device usb-host,vendorid=0403,productid=6001  ^
-device usb-kbd ^
-device usb-tablet ^
-device usb-net,netdev=net0  ^
-netdev user,id=net0
