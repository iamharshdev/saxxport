if [ $(dpkg-query -W -f='${Status}' figlet 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    sudo apt-get install --force-yes --yes figlet;
fi
if [ $(dpkg-query -W -f='${Status}' python3 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    sudo apt-get install --force-yes --yes python3;
fi
if [ $(dpkg-query -W -f='${Status}' brotli 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    sudo apt-get install --force-yes --yes brotli;
fi
if [ $(dpkg-query -W -f='${Status}' zip 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    sudo apt-get install --force-yes --yes zip;
fi
if [ $(dpkg-query -W -f='${Status}' img2simg 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    sudo apt-get install --force-yes --yes img2simg;
fi
if [ $(dpkg-query -W -f='${Status}' git 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    sudo apt-get install --force-yes --yes git;
fi
git clone https://github.com/xpirt/img2sdat.git