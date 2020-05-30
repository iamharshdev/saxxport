printf "$(tput setaf 1)"
figlet "SAXXPORT TOOL"
printf "$(tput setaf 3)"
figlet "by"
printf "$(tput setaf 5)"
figlet "iamharsh.dev"
printf "$(tput setaf 2)"
printf "coded by github.com/theuitown or iamharsh.dev"
printf "\n"
printf "$(tput setaf 3)"
read -p '[🎉] System.img path in raw format please: ' systemimg
printf "................................"
printf "\n"
printf "$(tput setaf 3)"
read -p '[🎉] Vendor.img path in raw format please: ' vendorimg
printf "................................"
printf "\n"
printf "$(tput setaf 3)"
read -p '[🎉] boot.img path please: ' bootimg
printf "................................"
printf '\n'
printf "$(tput setaf 5)"
rm -rf output
rm -rf coverted
mkdir coverted
img2simg $systemimg coverted/system.img
printf "\n"
img2simg $vendorimg coverted/vendor.img
printf "$(tput setaf 3)"
printf "Fucking system.img"
printf "................................"
printf '\n'
python3 img2sdat/img2sdat.py coverted/system.img -o output -v 4 -p system
printf '\n'
printf "................................"
printf '\n'
printf "$(tput setaf 2)"
printf "Fucking vendor.img"
printf "\n"
printf "................................"
printf '\n'
python3 img2sdat/img2sdat.py coverted/vendor.img -o output -v 4 -p vendor
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
printf "$(tput setaf 5)"
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
printf "$(tput setaf 3)"
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