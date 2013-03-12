#!/system/bin/sh

LOGFILE="/local/log/aplog/dmesglog"
LOGFILE1="/local/log/aplog/dmesglog.1"
LOGFILE2="/local/log/aplog/dmesglog.2"
LOGFILE3="/local/log/aplog/dmesglog.3"
LOGFILE4="/local/log/aplog/dmesglog.4"

if [ -e $LOGFILE3 ]; then
  mv $LOGFILE3 $LOGFILE4
fi

if [ -e $LOGFILE2 ]; then
  mv $LOGFILE2 $LOGFILE3
fi

if [ -e $LOGFILE1 ]; then
  mv $LOGFILE1 $LOGFILE2
fi

if [ -e $LOGFILE ]; then
  mv $LOGFILE $LOGFILE1
fi

while [ 1 ]
do
  date  >> $LOGFILE
  echo "" >> $LOGFILE
  dmesg -c >> $LOGFILE
  sleep 2
done
