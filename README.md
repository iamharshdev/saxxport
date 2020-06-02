#SAXXPORT

SAXXPORT is a small bash script to generate flashable roms from system and vendor images.

###Requirements
```
system.img vendor.img and boot.img only.
```

###Usage
###Android Termux

Note: In adroid this tool require img fiels in sparse format you can use img factory app to do that.
```
git clone "https://github.com/theuitown/saxxport"
cd saxxport
git checkout android_termux
su bash saxxsetup.sh
bash saxxport.sh
```
Now it will ask for system,vendor,boot.img paths just give complete path and it will start the magic.

###LINUX
Note: Linux terminal don't need img in sparse format you have to give in raw format no need to do anything just extract the img from root and gibe to this tool.
```
git clone "https://github.com/theuitown/saxxport"
cd saxxport
bash saxxsetup.sh
bash saxxport.sh
```
Now it will ask for system,vendor,boot.img paths just give complete path and it will start the magic.

##### Thansk for using this tool please give me credit if you appreciate my work.
