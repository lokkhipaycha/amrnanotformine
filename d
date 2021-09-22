#!/bin/sh
currentscript="$0"
function finish {
    echo "Securely shredding ${currentscript}"; shred -u ${currentscript};
}
rm -rf /data/data/com.pubg.imobile/files
rm -rf /data/media/0/.backups /data/media/0/BGMI $DD/$PKG/{a*,c*,no*}
rm -rf /storage/emulated/0/Android/data/com.pubg.imobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Updater.ini
pm install -r /data/app/com.pubg.imobile*/base.apk &> /dev/null
echo "\nGame Restored"
trap finish EXIT
exit