# ChickenCamBackup
Backup stream for 24-hour backyard chicken livestream

## Setup the backup instance
1. Setup an [EC2 instance](https://aws.amazon.com/ec2/instance-types/), ideally Ubuntu
1. SSH into the instance then login as the root user `sudo su -`
2. Install ffmpeg: `apt install ffmpeg`
3. Install lavfi: `apt install alsa-utils`
4. Download this repo: `git clone https://github.com/lerryberry/ChickenCamBackup.git`
5. Update the Youtube stream code in the script, `cd ChickenCamBackup`, then `nano backupStream.sh`
6. make the file executable  `chmod +x backupStream.sh`

## Setup the crontab
Set nano as the default crontab editor `export VISUAL=nano; crontab -e`
Set this script to run every minute `*/2 * * * * cd ChickenCamBackup && ./backupStream.sh 2&1> err.log`
