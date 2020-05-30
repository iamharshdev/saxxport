if [ $(dpkg-query -W -f='${Status}' figlet 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    pkg install --force-yes --yes figlet;
fi
if [ $(dpkg-query -W -f='${Status}' python 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    pkg install --force-yes --yes python;
fi
if [ $(dpkg-query -W -f='${Status}' python3 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    pkg install --force-yes --yes python3;
fi
if [ $(dpkg-query -W -f='${Status}' brotli 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    pkg install --force-yes --yes brotli;
fi
if [ $(dpkg-query -W -f='${Status}' zip 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    pkg install --force-yes --yes zip;
fi
if [ $(dpkg-query -W -f='${Status}' git 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    pkg install --force-yes --yes git;
fi
rm -rf output
apt-get update && apt-get upgrade

git clone https://github.com/xpirt/img2sdat.git