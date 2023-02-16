# ChickenCamBackup
Backup stream for 24-hour backyard chicken livestream

## Setup the backup instance
1. Setup an [EC2 instance](https://aws.amazon.com/ec2/instance-types/)
1. SSH into the instance then login as the root user `sudo su -`
2. Install ffmpeg: [by following the guide here](https://assistanz.com/install-ffmpeg-via-clicommand-line-interface-on-linux-server/)
3. Install lavfi: `yum install alsa-utils alsa-lib` & github:`yum install github` & nano:`yum install nano`
4. Download this repo!
6. Update the image path in the script with your own! first `cd ChickenCamBackup`, then `nano backupStream.sh`

## Setup the crontab
Set nano as the default crontab editor `export VISUAL=nano; crontab -e`
Set this script to run every minute `*/2 * * * * cd ChickenCamBackup && ./backupStream.sh 2&1> err.log`
