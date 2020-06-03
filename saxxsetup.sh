if [ $(dapt-query -W -f='${Status}' figlet 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    apt install --force-yes --yes figlet;
fi
if [ $(dapt-query -W -f='${Status}' python 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    apt install --force-yes --yes python;
fi
if [ $(dapt-query -W -f='${Status}' python3 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    apt install --force-yes --yes python3;
fi
if [ $(dapt-query -W -f='${Status}' brotli 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    apt install --force-yes --yes brotli;
fi
if [ $(dapt-query -W -f='${Status}' zip 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    apt install --force-yes --yes zip;
fi
if [ $(dapt-query -W -f='${Status}' git 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    apt install --force-yes --yes git;
fi
apt-get update && apt-get upgrade
