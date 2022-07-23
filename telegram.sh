#!/bin/sh
# Get Your Chat ID with https://api.telegram.org/bot**********************************************/getUpdates#
# copy the script in /usr/bin/ or /usr/local/bin/
# give the script chmod +x telegram.sh
# USE: root@zantiyo ~ # > 	telegram hi how are you

MESSAGE=$@
CHATID=XXXXXXXXX
TELEGRAM_BOT_TOKEN=**********:**********************************************

curl --no-progress-meter \
     -X POST \
     -H 'Content-Type: application/json' \
     -d '{"chat_id": "'"$CHATID"'", "text": "'"$MESSAGE"'", "disable_notification": true}' \
     https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage  >> /var/log/telegram.log;
