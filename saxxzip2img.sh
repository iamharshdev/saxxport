
figlet "SAXXPORT TOOL"
figlet "by"
figlet "iamharsh.dev"
printf "coded by github.com/theuitown or iamharsh.dev"
printf "\n"

num_arguements=$#

mkdir temp
cd temp
unzip ${1}
cd ..
mkdir tempsaxx
mv temp/${3}.new.dat.br tempsaxx
mv temp/${3}.patch.dat tempsaxx
mv temp/${3}.transfer.list tempsaxx
rm -rf temp
printf "\n"
brotli --decompress tempsaxx/${3}.new.dat.br
mkdir output
printf "\n"
python3 tools/sdat2img/sdat2img.py tempsaxx/${3}.transfer.list tempsaxx/${3}.new.dat output/${2}_BUILD_USING_SAXXPORT.img
rm -rf tempsaxx
printf "\n"
printf "SAXXPORT TOOL BY IAMHARSH.DEV"
printf "\n"
printf "coded by github.com/theuitown or iamharsh.dev"
printf "\n"
