#!bin bash
#sudo apt-get update || reboot
#sudo apt-get -s upgrade || reboot
DIA=`date +"%d/%m/%Y"`
HORA=`date +"%H:%M"`
sudo apt-get update || reboot
sudo apt-get -s upgrade || reboot
    echo "la fecha de mantenimiento es el $DIA y la hora actual es $HORA!" >>/home/scripts/reporte.txt || reboot
    echo "la fecha de termino  el mantenimiento es $DIA y la hora actual es $HORA!">>/home/scripts/reporte.txt && poweroff
