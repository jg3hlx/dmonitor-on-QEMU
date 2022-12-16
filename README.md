# QEMU-On-dmonitor

QEMUを使ってRaspberry Piをエミュレートしてdmonitorを動かす方法。
注意点
・dmonitorは32bitOS上でしか動かな、そのため　-M raspi2b　を指定する。
・Raspberry PiのエミュレートではUSBHOSTが使えないためUSBIPを使う。
・OSのアップデート伴い起動できない無い場合は再度”kernel7.img”と”bcm2709-rpi-2-b.dtb”をイメージから取り出すことで起動できる。
・Ｄ－ＳＴＡＲ委員会からdmonitorをインストールしたイメージの配布が禁止されてるのでイメージの提供はなし。

作業手順
１．QEMUのインストール
　　https://www.qemu.org/download/
２．Raspberry Pi OS with desktopの取得
　　https://www.raspberrypi.com/software/operating-systems/#raspberry-pi-os-32-bit
３．”kernel7.img”と”bcm2709-rpi-2-b.dtb”をイメージから抽出。
４．QEMUの起動
５．desktopが表示されるまで気長に待つ。
６．sudo apt update
７．sudo apt upgarde
８．再起動後dmonitorのインストール。
　　手順はdmonitorのドキュメントを参照。
  　http://app.d-star.info/doc/dmonitor/
９．dmonitorが起動することを確認
１０．無線機と接続するためにUSBIPのインストール
　　・WindowsOS
     https://www.virtualhere.com/windows_server_software
   ・Raspberry PI 
   　sudo apt install usbip
