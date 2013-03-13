.class Lcom/lenovo/leos/internal/server/StartShutdownPolicy;
.super Ljava/lang/Object;
.source "StartShutdownPolicy.java"


# static fields
.field private static final AUTO_SHUTDOWN_ACTION:Ljava/lang/String; = "com.android.startshutdown.AUTO_SHUTDOWN"

.field private static final AUTO_SHUTDOWN_TIME_HOUR:Ljava/lang/String; = "startshutdown.autoshutdownhour"

.field private static final AUTO_SHUTDOWN_TIME_MINUTE:Ljava/lang/String; = "startshutdown.autoshutdownminute"

.field private static final AUTO_START_ACTION:Ljava/lang/String; = "com.android.startshutdown.AUTO_START"

.field private static final AUTO_START_TIME_HOUR:Ljava/lang/String; = "startshutdown.autostarthour"

.field private static final AUTO_START_TIME_MINUTE:Ljava/lang/String; = "startshutdown.autostartminute"

.field private static final INVALID_TIME:I = 0xff

.field private static final MESSAGE_SHUTDOWN_CONFIRM:I = 0x2

.field private static final SHUTDOWN_TIME_DELAY:I = 0x7530

.field private static final START_TIME_DELAY:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "StartShutdownService"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAutoShutdownAfterScreenOffWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBootCompleted:Z

.field private final mCallback:Lcom/lenovo/leos/internal/server/StartShutdownService$ServiceCallback;

.field private final mContext:Landroid/content/Context;

.field private mDelay:I

.field private mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mReducedBoot:Z

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShutdownDialog:Landroid/app/AlertDialog;

.field private mShutdownDialogListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mShutdownHour:I

.field private mShutdownMinute:I

.field private mStartDialog:Landroid/app/AlertDialog;

.field private mStartHour:I

.field private mStartMinute:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/internal/server/StartShutdownService$ServiceCallback;)V
    .locals 4
    .parameter "context"
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartHour:I

    iput v3, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartMinute:I

    iput v3, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownHour:I

    iput v3, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownMinute:I

    iput-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mBootCompleted:Z

    const/16 v1, 0x1e

    iput v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mDelay:I

    new-instance v1, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$1;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$1;-><init>(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)V

    iput-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$4;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$4;-><init>(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)V

    iput-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v1, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$5;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$5;-><init>(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)V

    iput-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mAutoShutdownAfterScreenOffWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mCallback:Lcom/lenovo/leos/internal/server/StartShutdownService$ServiceCallback;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "startshutdown.autostarthour"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartHour:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "startshutdown.autostartminute"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartMinute:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "startshutdown.autoshutdownhour"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownHour:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "startshutdown.autoshutdownminute"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownMinute:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.startshutdown.AUTO_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.startshutdown.AUTO_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->handleAutoShutdown()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartHour:I

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)Lcom/lenovo/leos/internal/server/StartShutdownService$ServiceCallback;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mCallback:Lcom/lenovo/leos/internal/server/StartShutdownService$ServiceCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->releaseScreenWakeLock()V

    return-void
.end method

.method static synthetic access$1200(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mDelay:I

    return v0
.end method

.method static synthetic access$1202(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mDelay:I

    return p1
.end method

.method static synthetic access$1210(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)I
    .locals 2
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mDelay:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mDelay:I

    return v0
.end method

.method static synthetic access$1300(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->acquireScreenWakeLock(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->showAutoShutdownAlert()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartMinute:I

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownHour:I

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownMinute:I

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->releaseAfterScreenOffWakeLock(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->acquireAfterScreenOffWakeLock(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private acquireAfterScreenOffWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mAutoShutdownAfterScreenOffWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "AutoShutdownExtra"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mAutoShutdownAfterScreenOffWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mAutoShutdownAfterScreenOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method private acquireScreenWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "AutoShutdown"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method private calculateAlarm(II)Ljava/util/Calendar;
    .locals 8
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .local v1, nowHour:I
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .local v2, nowMinute:I
    if-lt p1, v1, :cond_0

    if-ne p1, v1, :cond_1

    if-gt p2, v2, :cond_1

    :cond_0
    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    :cond_1
    invoke-virtual {v0, v6, p1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v7, p2}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method private enableAutoShutdownAlert(II)V
    .locals 8
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/4 v7, 0x0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .local v2, time:J
    const-string v4, "StartShutdownService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "***AutoStartShutdownPolicy --- EnableAutoShutdown at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "***"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.startshutdown.AUTO_SHUTDOWN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v4, "Long_time"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    const/high16 v5, 0x1000

    invoke-static {v4, v7, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .local v1, sender:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v7, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private enableAutoStartAlert(II)V
    .locals 10
    .parameter "hour"
    .parameter "minute"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .local v5, time:J
    const-string v7, "StartShutdownService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n***AutoStartShutdownPolicy --- EnableAutoStart at: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "***\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.startshutdown.AUTO_START"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x1000

    invoke-static {v7, v8, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .local v4, sender:Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v8, 0x4

    invoke-virtual {v7, v8, v5, v6, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    new-instance v1, Ljava/io/File;

    const-string v7, "/data/system/startup_rtc_time"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v2, fout:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v0, dout:Ljava/io/DataOutputStream;
    invoke-virtual {v0, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #dout:Ljava/io/DataOutputStream;
    .end local v2           #fout:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private handleAutoShutdown()V
    .locals 7

    .prologue
    iget-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "profile_type"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, profile:Ljava/lang/String;
    const-string v4, "general"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "outdoors"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .local v3, soundUri:Landroid/net/Uri;
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .local v2, sfx:Landroid/media/Ringtone;
    if-eqz v2, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/Ringtone;->setStreamType(I)V

    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    const-string v4, "StartShutdownService"

    const-string v5, "play DEFAULT_ALARM_ALERT_URI"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #sfx:Landroid/media/Ringtone;
    .end local v3           #soundUri:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method private initAutoShutdown()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->isAutoShutdownTimeSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownHour:I

    iget v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownMinute:I

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->enableAutoShutdownAlert(II)V

    :cond_0
    return-void
.end method

.method private initAutoStart()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->isAutoStartTimeSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartHour:I

    iget v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartMinute:I

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->enableAutoStartAlert(II)V

    :cond_0
    return-void
.end method

.method private isAutoStart()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->isAutoStartTimeSet()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .local v1, nowHour:I
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .local v2, nowMinute:I
    iget v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartHour:I

    if-ne v1, v4, :cond_0

    iget v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartMinute:I

    if-ne v2, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private releaseAfterScreenOffWakeLock(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mAutoShutdownAfterScreenOffWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mAutoShutdownAfterScreenOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mAutoShutdownAfterScreenOffWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method private releaseScreenWakeLock()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private setAutoShutdownTime(II)Z
    .locals 2
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/16 v1, 0xff

    if-ltz p1, :cond_0

    const/16 v0, 0x17

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    const/16 v0, 0x3b

    if-le p2, v0, :cond_1

    :cond_0
    if-ne p1, v1, :cond_2

    if-ne p2, v1, :cond_2

    :cond_1
    iput p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownHour:I

    iput p2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownMinute:I

    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "startshutdown.autoshutdownhour"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "startshutdown.autoshutdownminute"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAutoStartTime(II)Z
    .locals 2
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/16 v1, 0xff

    if-ltz p1, :cond_0

    const/16 v0, 0x17

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    const/16 v0, 0x3b

    if-le p2, v0, :cond_1

    :cond_0
    if-ne p1, v1, :cond_2

    if-ne p2, v1, :cond_2

    :cond_1
    iput p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartHour:I

    iput p2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartMinute:I

    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "startshutdown.autostarthour"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "startshutdown.autostartminute"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAutoShutdownAlert()V
    .locals 8

    .prologue
    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    const v3, 0x10404e8

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mDelay:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x10404ea

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104012c

    new-instance v4, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$3;

    invoke-direct {v4, p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$3;-><init>(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$2;

    invoke-direct {v4, p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$2;-><init>(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AUTO_SHUTDOWN_ARRIVED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public disableAutoShutdown()V
    .locals 5

    .prologue
    const/16 v3, 0xff

    invoke-virtual {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->isAutoShutdownTimeSet()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v3, v3}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->setAutoShutdownTime(II)Z

    const-string v2, "StartShutdownService"

    const-string v3, "***AutoStartShutdownPolicy --- DisableAutoShutdown"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.startshutdown.AUTO_SHUTDOWN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x1000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .local v1, sender:Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #sender:Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method public disableAutoStart()V
    .locals 6

    .prologue
    const/16 v4, 0xff

    invoke-virtual {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->isAutoStartTimeSet()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v4, v4}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->setAutoStartTime(II)Z

    const-string v3, "StartShutdownService"

    const-string v4, "***AutoStartShutdownPolicy --- DisableAutoStart"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.startshutdown.AUTO_START"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x1000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .local v2, sender:Landroid/app/PendingIntent;
    const-string v3, "persist.service.autostartenbale"

    const-string v4, "disable"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    new-instance v0, Ljava/io/File;

    const-string v3, "/data/system/startup_rtc_time"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .end local v0           #file:Ljava/io/File;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #sender:Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method public enableAutoShutdown(II)V
    .locals 1
    .parameter "hour"
    .parameter "minute"

    .prologue
    invoke-virtual {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->isAutoShutdownTimeSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->disableAutoShutdown()V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->setAutoShutdownTime(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->enableAutoShutdownAlert(II)V

    :cond_1
    return-void
.end method

.method public enableAutoStart(II)V
    .locals 1
    .parameter "hour"
    .parameter "minute"

    .prologue
    invoke-virtual {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->isAutoStartTimeSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->disableAutoStart()V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->setAutoStartTime(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->enableAutoStartAlert(II)V

    :cond_1
    return-void
.end method

.method public init(Z)V
    .locals 1
    .parameter "reducedBoot"

    .prologue
    iput-boolean p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mReducedBoot:Z

    iget-boolean v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mReducedBoot:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->initAutoStart()V

    :cond_0
    return-void
.end method

.method public isAutoShutdownTimeSet()Z
    .locals 2

    .prologue
    const/16 v1, 0xff

    iget v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownHour:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownMinute:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoStartTimeSet()Z
    .locals 2

    .prologue
    const/16 v1, 0xff

    iget v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartHour:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartMinute:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mReducedBoot:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->initAutoStart()V

    :cond_0
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->initAutoShutdown()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mBootCompleted:Z

    return-void
.end method
