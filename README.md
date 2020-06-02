# Saxxport tool
*Saxxport is a bash and python based tool to convert any ROM for your device all you need is the base ROM zip and port ROM zip file + this tool can also build a flashable rom zip using vendor system and boot img file + you can build system or vendor gsi from zip file of any rom.*

## Features:
*saxxrom2rom:* Port any rom to your device in a click just provide base rom and port rom zip files.
*saxximg2rom: *Build a flashable/bootable rom zip file using system,vendor and boot img files.
*saxxzip2img: *Build a system or vendor gsi/img file from a zip file in a click.

### Usage
<br>
#### Basic setup

```
git clone "https://github.com/theuitown/saxxport"
cd saxxport
sudo/su bash saxxsetup.sh
```

*Saxxrom2rom*
```
./saxxrom2rom <base_rom_zip> <port_rom_zip>
```

*Saxximg2rom*

```
./saxximg2rom <system_img_path> <vendor_img_path> <boot_img_path>
```

*Saxxzip2img*

```
./saxxzip2img <zip_file_path> <output_gsi_name> <system/vendor_gsi>
```

Thanks for using this tool please give me credit if you appreciate my work.
You can also donate me a cup of coffee.
<a href="">Click here</a>
