#!/system/bin/sh

# setup log service
if [ -e /local/log/aplog/aplogsetting.enable ]; then
for svc in dmesglog tcplog mainlog radiolog; do
    if [ -e /local/log/aplog/${svc}.enable ]; then
        setprop persist.service.$svc.enable 1
    else
        setprop persist.service.$svc.enable 0
    fi
done
elif [ $(getprop ro.debuggable) = 1 ]; then
    setprop persist.service.dmesglog.enable 1
    setprop persist.service.tcplog.enable 1
    setprop persist.service.mainlog.enable 1
    setprop persist.service.radiolog.enable 1
fi

rm -r /data/lost+found

