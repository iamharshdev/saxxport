
figlet "SAXXPORT TOOL"
figlet "by"
figlet "iamharsh.dev"
printf "coded by github.com/theuitown or iamharsh.dev"
printf "\n"
num_arguements=$#
baserom=$1
portrom=$2
mkdir baserom && mkdir portrom
cd baserom
unzip $baserom
cd ..
cd portrom
unzip $portrom
cd ..
rm -rf baserom/system.new.dat.br
rm -rf baserom/system.patch.dat
rm -rf baserom/system.transfer.list
mv portrom/system.new.dat.br baserom
mv portrom/system.patch.dat baserom
mv portrom/system.transfer.list baserom
rm -rf portrom
cd baserom
printf "\n"
read -p '[🎉] Zip file name please: ' roomzip
printf '\n'
zip -r $roomzip -9 .
printf '\n'
printf "ROM ZIP CREATED SUCCESSFULLY"
printf '\n'
printf "\n"
printf "SAXXPORT TOOL BY IAMHARSH.DEV"
printf "\n"
printf "coded by github.com/theuitown or iamharsh.dev"
printf "\n"