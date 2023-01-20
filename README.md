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
  
  　※dmonitorが動いているSDからイメージファイル作成してを使うこともできます。
  
３．”kernel7.img”と”bcm2709-rpi-2-b.dtb”をOSイメージから抽出。

　　抽出済みファイルを使うこともできますが、正しく動作させるためには必ず抽出してください。
  
    ※OSアップデート後にOSが起動できないときや、ネットワークが使えなくなったときも再抽出してください。

４．QEMUの起動

　　demonitor.bat
  
    ※イメージサイズのエラーが表示された場合は適宜リサイズしてください。2G,4G,8G,16G等
    　例　qemu-img resize 2022-09-22-raspios-bullseye-armhf-full.img 8G

　　desktopが表示されるまで気長に待つ。

５．OSの初期設定

   ・SD容量のリサイズを行う
     %sudo raspi-config
     
       6.Advanced Options
       
         A1 Expand Filesystem
         
　　・SWAPを2048Byeに拡張する
      $ sudo service dphys-swapfile stop
      
      $ sudo vim /etc/dphys-swapfile
      
         ※このファイル内のCONF_SWAPSIZEの値を変更する
         
        CONF_SWAPSIZE=208
        
　　　　$ sudo service dphys-swapfile start

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
   
　　　　https://www.virtualhere.com/sites/default/files/usbclient/vhuitarm7
    
    
![image](https://user-images.githubusercontent.com/76939165/208281450-a9b98766-d199-4a39-82d5-9ec4b83b7dc3.png)
