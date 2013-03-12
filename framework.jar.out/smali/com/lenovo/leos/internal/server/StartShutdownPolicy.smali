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

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v3, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartHour:I

    .line 50
    iput v3, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartMinute:I

    .line 51
    iput v3, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownHour:I

    .line 52
    iput v3, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownMinute:I

    .line 54
    iput-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    .line 57
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mBootCompleted:Z

    .line 58
    const/16 v1, 0x1e

    iput v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mDelay:I

    .line 280
    new-instance v1, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$1;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$1;-><init>(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)V

    iput-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 389
    new-instance v1, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$4;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$4;-><init>(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)V

    iput-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 398
    new-instance v1, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$5;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$5;-><init>(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)V

    iput-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mHandler:Landroid/os/Handler;

    .line 420
    iput-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 425
    iput-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mAutoShutdownAfterScreenOffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 62
    iput-object p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mCallback:Lcom/lenovo/leos/internal/server/StartShutdownService$ServiceCallback;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "startshutdown.autostarthour"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartHour:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "startshutdown.autostartminute"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartMinute:I

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "startshutdown.autoshutdownhour"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownHour:I

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "startshutdown.autoshutdownminute"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownMinute:I

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.startshutdown.AUTO_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v1, "com.android.startshutdown.AUTO_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->handleAutoShutdown()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartHour:I

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)Lcom/lenovo/leos/internal/server/StartShutdownService$ServiceCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mCallback:Lcom/lenovo/leos/internal/server/StartShutdownService$ServiceCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->releaseScreenWakeLock()V

    return-void
.end method

.method static synthetic access$1200(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mDelay:I

    return v0
.end method

.method static synthetic access$1202(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mDelay:I

    return p1
.end method

.method static synthetic access$1210(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 33
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
    .line 33
    invoke-direct {p0, p1}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->acquireScreenWakeLock(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->showAutoShutdownAlert()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartMinute:I

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownHour:I

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownMinute:I

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->releaseAfterScreenOffWakeLock(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->acquireAfterScreenOffWakeLock(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private acquireAfterScreenOffWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 428
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mAutoShutdownAfterScreenOffWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 435
    :goto_0
    return-void

    .line 430
    :cond_0
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 432
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "AutoShutdownExtra"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mAutoShutdownAfterScreenOffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 434
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mAutoShutdownAfterScreenOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method private acquireScreenWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 450
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 460
    :goto_0
    return-void

    .line 454
    :cond_0
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 456
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "AutoShutdown"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 459
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

    .line 244
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 245
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 247
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 248
    .local v1, nowHour:I
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 250
    .local v2, nowMinute:I
    if-lt p1, v1, :cond_0

    if-ne p1, v1, :cond_1

    if-gt p2, v2, :cond_1

    .line 251
    :cond_0
    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 253
    :cond_1
    invoke-virtual {v0, v6, p1}, Ljava/util/Calendar;->set(II)V

    .line 254
    invoke-virtual {v0, v7, p2}, Ljava/util/Calendar;->set(II)V

    .line 255
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 256
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 257
    return-object v0
.end method

.method private enableAutoShutdownAlert(II)V
    .locals 8
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/4 v7, 0x0

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 190
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

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.startshutdown.AUTO_SHUTDOWN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "Long_time"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 194
    iget-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    const/high16 v5, 0x1000

    invoke-static {v4, v7, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 196
    .local v1, sender:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v7, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 197
    return-void
.end method

.method private enableAutoStartAlert(II)V
    .locals 10
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 135
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

    .line 137
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.startshutdown.AUTO_START"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v3, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x1000

    invoke-static {v7, v8, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 140
    .local v4, sender:Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v8, 0x4

    invoke-virtual {v7, v8, v5, v6, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 141
    new-instance v1, Ljava/io/File;

    const-string v7, "/data/system/startup_rtc_time"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 146
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 147
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 148
    .local v2, fout:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 149
    .local v0, dout:Ljava/io/DataOutputStream;
    invoke-virtual {v0, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 150
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v0           #dout:Ljava/io/DataOutputStream;
    .end local v2           #fout:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private handleAutoShutdown()V
    .locals 7

    .prologue
    .line 327
    iget-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 329
    iget-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 330
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v4, "profile_type"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, profile:Ljava/lang/String;
    const-string v4, "general"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "outdoors"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 332
    :cond_0
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 333
    .local v3, soundUri:Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 334
    iget-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 336
    .local v2, sfx:Landroid/media/Ringtone;
    if-eqz v2, :cond_1

    .line 337
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 338
    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    .line 339
    const-string v4, "StartShutdownService"

    const-string/jumbo v5, "play DEFAULT_ALARM_ALERT_URI"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .end local v2           #sfx:Landroid/media/Ringtone;
    .end local v3           #soundUri:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method private initAutoShutdown()V
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->isAutoShutdownTimeSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownHour:I

    iget v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownMinute:I

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->enableAutoShutdownAlert(II)V

    .line 121
    :cond_0
    return-void
.end method

.method private initAutoStart()V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->isAutoStartTimeSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartHour:I

    iget v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartMinute:I

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->enableAutoStartAlert(II)V

    .line 115
    :cond_0
    return-void
.end method

.method private isAutoStart()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 261
    invoke-virtual {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->isAutoStartTimeSet()Z

    move-result v4

    if-nez v4, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v3

    .line 264
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 265
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 267
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 268
    .local v1, nowHour:I
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 269
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
    .line 438
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mAutoShutdownAfterScreenOffWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mAutoShutdownAfterScreenOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mAutoShutdownAfterScreenOffWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method private releaseScreenWakeLock()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 467
    :cond_0
    return-void
.end method

.method private setAutoShutdownTime(II)Z
    .locals 2
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/16 v1, 0xff

    .line 228
    if-ltz p1, :cond_0

    const/16 v0, 0x17

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    const/16 v0, 0x3b

    if-le p2, v0, :cond_1

    :cond_0
    if-ne p1, v1, :cond_2

    if-ne p2, v1, :cond_2

    .line 230
    :cond_1
    iput p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownHour:I

    .line 231
    iput p2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownMinute:I

    .line 233
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "startshutdown.autoshutdownhour"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 235
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "startshutdown.autoshutdownminute"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    const/4 v0, 0x1

    .line 239
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

    .line 212
    if-ltz p1, :cond_0

    const/16 v0, 0x17

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    const/16 v0, 0x3b

    if-le p2, v0, :cond_1

    :cond_0
    if-ne p1, v1, :cond_2

    if-ne p2, v1, :cond_2

    .line 214
    :cond_1
    iput p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartHour:I

    .line 215
    iput p2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartMinute:I

    .line 217
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "startshutdown.autostarthour"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "startshutdown.autostartminute"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    const/4 v0, 0x1

    .line 223
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAutoShutdownAlert()V
    .locals 8

    .prologue
    .line 346
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

    .line 349
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 350
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

    .line 368
    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 375
    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 377
    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 378
    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 380
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AUTO_SHUTDOWN_ARRIVED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 382
    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 387
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 384
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

    .line 200
    invoke-virtual {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->isAutoShutdownTimeSet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    invoke-direct {p0, v3, v3}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->setAutoShutdownTime(II)Z

    .line 203
    const-string v2, "StartShutdownService"

    const-string v3, "***AutoStartShutdownPolicy --- DisableAutoShutdown"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.startshutdown.AUTO_SHUTDOWN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x1000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 207
    .local v1, sender:Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 209
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #sender:Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method public disableAutoStart()V
    .locals 6

    .prologue
    const/16 v4, 0xff

    .line 156
    invoke-virtual {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->isAutoStartTimeSet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    invoke-direct {p0, v4, v4}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->setAutoStartTime(II)Z

    .line 159
    const-string v3, "StartShutdownService"

    const-string v4, "***AutoStartShutdownPolicy --- DisableAutoStart"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.startshutdown.AUTO_START"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x1000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 163
    .local v2, sender:Landroid/app/PendingIntent;
    const-string/jumbo v3, "persist.service.autostartenbale"

    const-string v4, "disable"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v3, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 171
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/system/startup_rtc_time"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 176
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
    .line 179
    invoke-virtual {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->isAutoShutdownTimeSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->disableAutoShutdown()V

    .line 182
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->setAutoShutdownTime(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->enableAutoShutdownAlert(II)V

    .line 185
    :cond_1
    return-void
.end method

.method public enableAutoStart(II)V
    .locals 1
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->isAutoStartTimeSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->disableAutoStart()V

    .line 127
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->setAutoStartTime(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->enableAutoStartAlert(II)V

    .line 130
    :cond_1
    return-void
.end method

.method public init(Z)V
    .locals 1
    .parameter "reducedBoot"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mReducedBoot:Z

    .line 98
    iget-boolean v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mReducedBoot:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->initAutoStart()V

    .line 101
    :cond_0
    return-void
.end method

.method public isAutoShutdownTimeSet()Z
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 277
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

    .line 273
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
    .line 104
    iget-boolean v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mReducedBoot:Z

    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->initAutoStart()V

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->initAutoShutdown()V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mBootCompleted:Z

    .line 109
    return-void
.end method
