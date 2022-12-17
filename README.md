# QEMUを使ってdmonitorを動かす方法。

注意点

・dmonitorは32bitOS上でしか動かない為　-M raspi2b　を指定する。

・Raspberry PiのエミュレートではUSBHOSTが使えないためUSBIPを使って無線機と接続する。

・OSのアップデートに伴い起動できない無い場合は、再度”kernel7.img”と”bcm2709-rpi-2-b.dtb”をイメージから取り出すことで起動ができる。


作業手順

１．QEMUのインストール

    https://www.qemu.org/download/

２．Raspberry Pi OS with desktop イメージの取得

　　https://www.raspberrypi.com/software/operating-systems/#raspberry-pi-os-32-bit
  
３．”kernel7.img”と”bcm2709-rpi-2-b.dtb”をOSイメージから抽出。

４．QEMUの起動

　　demonitor.bat

　　desktopが表示されるまで気長に待つ。

５．OSの初期設定

　　・SWAPを2048Byeに拡張する

　　・ %sudo apt update

　　・ %sudo apt upgarde

６．再起動後dmonitorのインストール。

　　手順はdmonitorのドキュメントを参照。
  
  　http://app.d-star.info/doc/dmonitor/
   
７．dmonitorが起動することを確認

８．無線機と接続するためにUSBIPのインストール

　　　・WindowsOS
  
  　　　https://www.virtualhere.com/windows_server_software/
     
　　　・Raspberry PI 
   
　　　　sudo apt install usbip
