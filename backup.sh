#/bin/sh

in=/dev/mmcblk0
tempdir=/mnt/USB/ddimages/
tempfile=$(hostname).bin.gz
finaldir="/mnt/ftp/Disque sur freeb/ddimages/"
log=$tempdir/log_backup.txt
date=$(date "+%Y%m%d")

echo "Backup start at $(date)."

sudo apt update; sudo apt upgrade -y ; sudo apt autoremove -y; sudo apt autoclean -y

sudo dd if=$in bs=1M status=progress | gzip -9 -cf >> $tempdir$tempfile

mv $tempdir$tempfile "${finaldir}${date}_${tempfile}"

echo "Backup ends at $(date)."
