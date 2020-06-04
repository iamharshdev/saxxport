
figlet "SAXXPORT TOOL"
figlet "by"
figlet "iamharsh.dev"
printf "coded by github.com/theuitown or iamharsh.dev"
printf "\n"
num_arguements=$#
systemimg=$1
vendorimg=$2
bootimg=$3
printf '\n'
rm -rf output/
mkdir coverted
img2simg $systemimg coverted/system.img
printf "\n"
img2simg $vendorimg coverted/vendor.img
printf "Fucking system.img"
printf "................................"
printf '\n'
python3 tools/img2sdat/img2sdat.py coverted/system.img -o output -v 4 -p system
printf '\n'
printf "................................"
printf '\n'
printf "Fucking vendor.img"
printf "\n"
printf "................................"
printf '\n'
python3 tools/img2sdat/img2sdat.py coverted/vendor.img -o output -v 4 -p vendor
printf '\n'
printf "................................"
printf '\n'
printf "Giving birth to system.new.dat.br file"
printf '\n'
brotli -3fk output/system.new.dat
printf '\n'
printf "................................"
printf "................................"
printf '\n'
printf "Giving birth to vendor.new.dat.br file"
brotli -3fk output/vendor.new.dat
printf "................................"
printf '\n'
rm -rf output/system.new.dat && rm -rf output/vendor.new.dat
cp -r META-INF output/
cp $bootimg output/
cd output
printf "................................"
printf '\n'
printf "Fucking files to gib zip file"
printf '\n'
printf "................................"
printf '\n'
read -p '[🎉] Zip file name please: ' roomzip
printf '\n'
zip -r $roomzip -9 .
printf '\n'
printf "ROM ZIP CREATED SUCCESSFULLY"
printf '\n'
cd ..
rm -rf coverted
printf "SAXXPORT TOOL BY IAMHARSH.DEV"
printf '\n'
printf "................................"
printf '\n'
printf "................................"
printf '\n'
