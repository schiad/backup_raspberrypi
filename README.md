# backup_raspberrypi
A simple code to backup and compress SD card of you Raspberry pi

## Download and execute

git clone https://github.com/schiad/backup_raspberrypi  
cd backup_raspberrypi  
chmod u+x backup.sh  
./backup.sh (Please read Configuration section before use)  

## Make an regular schedule backups with crontab

You can use crontab to schedule your backups.  
Example to backup daily at 2am edit your crontab like this:  

0 2 * * * bash /home/pi/sh/backup.sh  

See man crontab to change parameters  

## Configuration

You must configure the file before use it.

### in parameter

"in" parameter is the device to backup (/dev/mmcblk0 is default for Raspberry pi SD card).

### tempdir parameter

"tempdir" is the temporary directory location to create the backup (i create it to bypass FTP can't create file with overwriting file).
You must to use a directory is in another device (like an USB stick).

### tempfile parameter

"tempfile" is the temporary name of the backup file.

### finaldir parameter

"finaldir" is the final directory location of the backup (for me a ftp server on my freebox mounted with curlftpfs on start).

### log parameter

"log" is the log file name.

### date parameter

"date" used to rename the final backup file with date of day (yyyymmdd to change please refer to "man date").

## Compression

For compression the script use gzip and high compression you can change it at your convenience (See man gzip).

Thanks for using
