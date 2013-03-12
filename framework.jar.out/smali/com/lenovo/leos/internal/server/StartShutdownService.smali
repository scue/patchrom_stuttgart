.class public Lcom/lenovo/leos/internal/server/StartShutdownService;
.super Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub;
.source "StartShutdownService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/internal/server/StartShutdownService$SSThread;,
        Lcom/lenovo/leos/internal/server/StartShutdownService$State;,
        Lcom/lenovo/leos/internal/server/StartShutdownService$ServiceCallback;
    }
.end annotation


# static fields
.field static final APN_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field static final APN_TYPE_WAP:Ljava/lang/String; = "wap"

.field public static final BATTERY_PLUGGED_DOCKING:I = 0x3

.field public static final BOOTMODE_CHARGEIN:I = 0x1

.field public static final BOOTMODE_RESET:I = 0x2

.field public static final BOOTMODE_RTC_ALARM:I = 0x3

.field public static final BOOTMODE_RTC_STARTUP:I = 0x4

.field public static final BOOTMODE_USER:I = 0x0

.field public static final BOOT_ANIMA_ALARM:Ljava/lang/String; = "alarm"

.field public static final BOOT_ANIMA_CHARGE:Ljava/lang/String; = "charge"

.field public static final BOOT_ANIMA_NORMAL:Ljava/lang/String; = "normal"

.field public static final BOOT_ANIMA_POWER_OFF:Ljava/lang/String; = "poweroff"

.field public static final BOOT_ANIMA_PROPERTY:Ljava/lang/String; = "sys.power.startup_mode"

.field public static final CHECK_SCREEN_IDLE_ACTION:Ljava/lang/String; = "android.intent.action.stk.check_screen_idle"

.field private static final CLASS_SYSTEM_SERVER:Ljava/lang/String; = "com.android.server.SystemServer"

.field private static final CLASS_WINDOW_MANAGER_SERVICE:Ljava/lang/String; = "com.android.server.WindowManagerService"

.field private static final DELAY_LAUNCHER_READY_STEP:I = 0x5dc

.field private static final DURATION_START_ANIMATION:I = 0x1388

.field public static final EPC_CURRENT_ATTEMPTS:Ljava/lang/String; = "epc_current_attempts_remaining"

.field static final FEATURE_ENABLE_NET:Ljava/lang/String; = "enalbeNET"

.field static final FEATURE_ENABLE_WAP:Ljava/lang/String; = "enableWAP"

.field private static final FILE_AUTO_STARTUP_TIME:Ljava/lang/String; = "/data/system/startup_rtc_time"

.field private static final FILE_MARK_BOOT_SOUND:Ljava/lang/String; = "/data/system/startup_param"

.field private static final FILE_MARK_SHUTDOWN_SOUND:Ljava/lang/String; = "/data/system/shutdown_param"

.field public static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"

.field public static final INTENT_KEY_LOCKED_REASON:Ljava/lang/String; = "reason"

.field public static final INTENT_VALUE_ICC_ABSENT:Ljava/lang/String; = "ABSENT"

.field public static final INTENT_VALUE_ICC_CARD_IO_ERROR:Ljava/lang/String; = "CARD_IO_ERROR"

.field public static final INTENT_VALUE_ICC_LOCKED:Ljava/lang/String; = "LOCKED"

.field public static final INTENT_VALUE_ICC_READY:Ljava/lang/String; = "READY"

.field public static final INTENT_VALUE_ICC_REFRESH:Ljava/lang/String; = "REFRESH"

.field public static final INTENT_VALUE_LOCKED_CORPORATE:Ljava/lang/String; = "SIM CORPORATE"

.field public static final INTENT_VALUE_LOCKED_NETWORK:Ljava/lang/String; = "NETWORK"

.field public static final INTENT_VALUE_LOCKED_NETWORK_SUBSET:Ljava/lang/String; = "SIM NETWORK SUBSET"

.field public static final INTENT_VALUE_LOCKED_ON_PIN:Ljava/lang/String; = "PIN"

.field public static final INTENT_VALUE_LOCKED_ON_PUK:Ljava/lang/String; = "PUK"

.field public static final INTENT_VALUE_LOCKED_RUIM_CORPORATE:Ljava/lang/String; = "RUIM CORPORATE"

.field public static final INTENT_VALUE_LOCKED_RUIM_HRPD:Ljava/lang/String; = "RUIM HRPD"

.field public static final INTENT_VALUE_LOCKED_RUIM_NETWORK1:Ljava/lang/String; = "RUIM NETWORK1"

.field public static final INTENT_VALUE_LOCKED_RUIM_NETWORK2:Ljava/lang/String; = "RUIM NETWORK2"

.field public static final INTENT_VALUE_LOCKED_RUIM_RUIM:Ljava/lang/String; = "RUIM RUIM"

.field public static final INTENT_VALUE_LOCKED_RUIM_SERVICE_PROVIDER:Ljava/lang/String; = "RUIM SERVICE PROVIDER"

.field public static final INTENT_VALUE_LOCKED_SERVICE_PROVIDER:Ljava/lang/String; = "SIM SERVICE PROVIDER"

.field public static final INTENT_VALUE_LOCKED_SIM:Ljava/lang/String; = "SIM SIM"

.field private static final MASK_BOOT_CABLE:I = 0x4

.field private static final MASK_BOOT_KEYPAD:I = 0x1

.field private static final MASK_BOOT_RTC:I = 0x2

.field private static final MASK_BOOT_SMPL:I = 0x8

.field private static final MASK_BOOT_USBCHARGE:I = 0x20

.field private static final MASK_BOOT_WALLCHARGE:I = 0x40

.field private static final MASK_BOOT_WDOG:I = 0x10

.field private static final MESSAGE_DISABLE_AUTO_SHUTDOWN:I = 0x4

.field private static final MESSAGE_DISABLE_AUTO_START:I = 0x2

.field private static final MESSAGE_ENABLE_AUTO_SHUTDOWN:I = 0x3

.field private static final MESSAGE_ENABLE_AUTO_START:I = 0x1

.field private static final MESSAGE_HIDE_SYSTEM_WINDOW:I = 0x8

.field private static final MESSAGE_LAUNCHER_READY:I = 0x9

.field private static final MESSAGE_REBOOT:I = 0xa

.field private static final MESSAGE_SHUTDOWN:I = 0x5

.field public static final STK_IDLE_SCREEN_ACTION:Ljava/lang/String; = "android.intent.action.stk.idle_screen"

.field private static final TAG:Ljava/lang/String; = "StartShutdownService"

.field private static final TIMEOUT_LAUNCHER_READY:I = 0x3a98

.field private static sBootEnum:I

.field private static sBootMode:I

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private final SYSTEM_SERVER_FACTORY_TEST_LOW_LEVEL:I

.field private final SYSTEM_SERVER_FACTORY_TEST_OFF:I

.field private mAlarmScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBootCompleted:Z

.field private final mContext:Landroid/content/Context;

.field private mDataConnectionChoice:I

.field private mDataDialog:Landroid/app/AlertDialog;

.field private mDataDialogShowOnEndCall:Z

.field private mDataDialogShown:Z

.field private final mFactoryTest:I

.field private mGprsTip:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLauncherReady:Z

.field private mNoSimDialog:Landroid/app/AlertDialog;

.field private mNoSimListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPhoneState:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPolicy:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

.field private final mServiceCallback:Lcom/lenovo/leos/internal/server/StartShutdownService$ServiceCallback;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSimReady:Z

.field private mSimReadyOnce:Z

.field private mState:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

.field private mSystemBusy:Z

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lenovo/leos/internal/server/StartShutdownService;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 250
    invoke-direct {p0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub;-><init>()V

    .line 58
    new-instance v4, Lcom/lenovo/leos/internal/server/ServerAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/lenovo/leos/internal/server/ServerAdapter;-><init>(Ljava/lang/Class;)V

    const-string v5, "com.android.server.SystemServer"

    const-string v6, "FACTORY_TEST_OFF"

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/leos/internal/server/ServerAdapter;->getFieldInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->SYSTEM_SERVER_FACTORY_TEST_OFF:I

    .line 61
    new-instance v4, Lcom/lenovo/leos/internal/server/ServerAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/lenovo/leos/internal/server/ServerAdapter;-><init>(Ljava/lang/Class;)V

    const-string v5, "com.android.server.SystemServer"

    const-string v6, "FACTORY_TEST_LOW_LEVEL"

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/leos/internal/server/ServerAdapter;->getFieldInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->SYSTEM_SERVER_FACTORY_TEST_LOW_LEVEL:I

    .line 67
    iput-object v7, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mAlarmScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 80
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    iput-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mToken:Landroid/os/IBinder;

    .line 85
    iput v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mPhoneState:I

    .line 171
    new-instance v4, Lcom/lenovo/leos/internal/server/StartShutdownService$1;

    invoke-direct {v4, p0}, Lcom/lenovo/leos/internal/server/StartShutdownService$1;-><init>(Lcom/lenovo/leos/internal/server/StartShutdownService;)V

    iput-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mServiceCallback:Lcom/lenovo/leos/internal/server/StartShutdownService$ServiceCallback;

    .line 482
    new-instance v4, Lcom/lenovo/leos/internal/server/StartShutdownService$2;

    invoke-direct {v4, p0}, Lcom/lenovo/leos/internal/server/StartShutdownService$2;-><init>(Lcom/lenovo/leos/internal/server/StartShutdownService;)V

    iput-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    .line 716
    new-instance v4, Lcom/lenovo/leos/internal/server/StartShutdownService$6;

    invoke-direct {v4, p0}, Lcom/lenovo/leos/internal/server/StartShutdownService$6;-><init>(Lcom/lenovo/leos/internal/server/StartShutdownService;)V

    iput-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 764
    new-instance v4, Lcom/lenovo/leos/internal/server/StartShutdownService$7;

    invoke-direct {v4, p0}, Lcom/lenovo/leos/internal/server/StartShutdownService$7;-><init>(Lcom/lenovo/leos/internal/server/StartShutdownService;)V

    iput-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mNoSimListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 770
    new-instance v4, Lcom/lenovo/leos/internal/server/StartShutdownService$8;

    invoke-direct {v4, p0}, Lcom/lenovo/leos/internal/server/StartShutdownService$8;-><init>(Lcom/lenovo/leos/internal/server/StartShutdownService;)V

    iput-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 251
    iput-object p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mContext:Landroid/content/Context;

    .line 252
    iput p2, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mFactoryTest:I

    .line 254
    iget v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mFactoryTest:I

    iget v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->SYSTEM_SERVER_FACTORY_TEST_OFF:I

    if-eq v4, v5, :cond_0

    .line 292
    :goto_0
    return-void

    .line 257
    :cond_0
    new-instance v4, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    iget-object v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mServiceCallback:Lcom/lenovo/leos/internal/server/StartShutdownService$ServiceCallback;

    invoke-direct {v4, v5, v6}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;-><init>(Landroid/content/Context;Lcom/lenovo/leos/internal/server/StartShutdownService$ServiceCallback;)V

    iput-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mPolicy:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    .line 259
    sget v4, Lcom/lenovo/leos/internal/server/StartShutdownService;->sBootMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    const/4 v2, 0x1

    .line 260
    .local v2, reducedBoot:Z
    :cond_1
    iget-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mPolicy:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    invoke-virtual {v4, v2}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->init(Z)V

    .line 261
    if-eqz v2, :cond_3

    .line 263
    const-string/jumbo v4, "sys.power.disable_radio"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :try_start_0
    const-string/jumbo v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 267
    .local v3, sPhone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 268
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z

    .line 269
    const-string v4, "StartShutdownService"

    const-string v5, "$$$$$$$$disable the radio when rtc-alarm."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v3           #sPhone:Lcom/android/internal/telephony/ITelephony;
    :cond_2
    :goto_1
    sget-object v4, Lcom/lenovo/leos/internal/server/StartShutdownService$State;->Notify:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    iput-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mState:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    .line 277
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->showAlarmBackground()V

    .line 278
    const-string v4, "R2"

    const-string v5, "Acquired wake lock in StartShutdownService for RTC_ALARM."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->acquireAlarmWakeLock()V

    .line 283
    :cond_3
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 284
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    iget-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v1, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 287
    iget-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x21

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 271
    .end local v1           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 272
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "StartShutdownService"

    const-string v5, "RemoteException during radio on"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/lenovo/leos/internal/server/StartShutdownService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/leos/internal/server/StartShutdownService;)Lcom/lenovo/leos/internal/server/StartShutdownPolicy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mPolicy:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/leos/internal/server/StartShutdownService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mSimReadyOnce:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/lenovo/leos/internal/server/StartShutdownService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mSimReadyOnce:Z

    return p1
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/lenovo/leos/internal/server/StartShutdownService;->sBootMode:I

    return v0
.end method

.method static synthetic access$1200(Lcom/lenovo/leos/internal/server/StartShutdownService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/lenovo/leos/internal/server/StartShutdownService;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mNoSimDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/lenovo/leos/internal/server/StartShutdownService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mNoSimDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/lenovo/leos/internal/server/StartShutdownService;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mNoSimListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/leos/internal/server/StartShutdownService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->hasService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1602(Lcom/lenovo/leos/internal/server/StartShutdownService;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/lenovo/leos/internal/server/StartShutdownService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mPhoneState:I

    return v0
.end method

.method static synthetic access$1702(Lcom/lenovo/leos/internal/server/StartShutdownService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mPhoneState:I

    return p1
.end method

.method static synthetic access$1800(Lcom/lenovo/leos/internal/server/StartShutdownService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mDataDialogShowOnEndCall:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/lenovo/leos/internal/server/StartShutdownService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mDataDialogShowOnEndCall:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/lenovo/leos/internal/server/StartShutdownService;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mDataDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/lenovo/leos/internal/server/StartShutdownService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mDataDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lenovo/leos/internal/server/StartShutdownService;)Lcom/lenovo/leos/internal/server/StartShutdownService$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mState:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/leos/internal/server/StartShutdownService;Lcom/lenovo/leos/internal/server/StartShutdownService$State;)Lcom/lenovo/leos/internal/server/StartShutdownService$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mState:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lenovo/leos/internal/server/StartShutdownService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mSystemBusy:Z

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/leos/internal/server/StartShutdownService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/leos/internal/server/StartShutdownService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->showAlarmBackground()V

    return-void
.end method

.method static synthetic access$600(Lcom/lenovo/leos/internal/server/StartShutdownService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->handleLauncherReady()V

    return-void
.end method

.method static synthetic access$700(Lcom/lenovo/leos/internal/server/StartShutdownService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->setAirplaneModeOff()V

    return-void
.end method

.method static synthetic access$800(Lcom/lenovo/leos/internal/server/StartShutdownService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->showDataConnectionDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/leos/internal/server/StartShutdownService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mSimReady:Z

    return v0
.end method

.method static synthetic access$902(Lcom/lenovo/leos/internal/server/StartShutdownService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mSimReady:Z

    return p1
.end method

.method private acquireAlarmWakeLock()V
    .locals 3

    .prologue
    .line 235
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mAlarmScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 239
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0xa

    const-string v2, "StartShutdownService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mAlarmScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 241
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mAlarmScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method private declared-synchronized disableKeyguard()V
    .locals 2

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 222
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "StartShutdownService"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 223
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :cond_0
    monitor-exit p0

    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized enableKeyguard()V
    .locals 1

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :cond_0
    monitor-exit p0

    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getConstValueByModuleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "moduleName"

    .prologue
    const/4 v0, 0x0

    .line 797
    if-nez p0, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-object v0

    .line 799
    :cond_1
    const-string v1, "IccCard_INTENT_VALUE_ICC_CARD_IO_ERROR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 800
    const-string v0, "CARD_IO_ERROR"

    goto :goto_0

    .line 801
    :cond_2
    const-string v1, "IccCard_INTENT_VALUE_LOCKED_NETWORK_SUBSET"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 802
    const-string v0, "SIM NETWORK SUBSET"

    goto :goto_0

    .line 803
    :cond_3
    const-string v1, "IccCard_INTENT_VALUE_LOCKED_CORPORATE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 804
    const-string v0, "SIM CORPORATE"

    goto :goto_0

    .line 805
    :cond_4
    const-string v1, "IccCard_INTENT_VALUE_LOCKED_SERVICE_PROVIDER"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 806
    const-string v0, "SIM SERVICE PROVIDER"

    goto :goto_0

    .line 807
    :cond_5
    const-string v1, "IccCard_INTENT_VALUE_LOCKED_SIM"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 808
    const-string v0, "SIM SIM"

    goto :goto_0

    .line 809
    :cond_6
    const-string v1, "IccCard_INTENT_VALUE_LOCKED_RUIM_NETWORK1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 810
    const-string v0, "RUIM NETWORK1"

    goto :goto_0

    .line 811
    :cond_7
    const-string v1, "IccCard_INTENT_VALUE_LOCKED_RUIM_NETWORK2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 812
    const-string v0, "RUIM NETWORK2"

    goto :goto_0

    .line 814
    :cond_8
    const-string v1, "IccCard_INTENT_VALUE_ICC_REFRESH"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 815
    const-string v0, "REFRESH"

    goto :goto_0

    .line 816
    :cond_9
    const-string v1, "IccCard_INTENT_VALUE_LOCKED_RUIM_HRPD"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 817
    const-string v0, "RUIM HRPD"

    goto :goto_0

    .line 818
    :cond_a
    const-string v1, "IccCard_INTENT_VALUE_LOCKED_RUIM_CORPORATE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 819
    const-string v0, "RUIM CORPORATE"

    goto :goto_0

    .line 820
    :cond_b
    const-string v1, "IccCard_INTENT_VALUE_LOCKED_RUIM_SERVICE_PROVIDER"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 822
    const-string v0, "RUIM SERVICE PROVIDER"

    goto :goto_0

    .line 823
    :cond_c
    const-string v1, "IccCard_INTENT_VALUE_LOCKED_RUIM_RUIM"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 824
    const-string v0, "RUIM RUIM"

    goto/16 :goto_0

    .line 826
    :cond_d
    const-string v1, "Phone_APN_TYPE_DEFAULT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 827
    const-string v0, "default"

    goto/16 :goto_0

    .line 828
    :cond_e
    const-string v1, "Phone_APN_TYPE_WAP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 829
    const-string/jumbo v0, "wap"

    goto/16 :goto_0

    .line 830
    :cond_f
    const-string v1, "Phone_FEATURE_ENABLE_NET"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 831
    const-string v0, "enalbeNET"

    goto/16 :goto_0

    .line 832
    :cond_10
    const-string v1, "Phone_FEATURE_ENABLE_WAP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 833
    const-string v0, "enableWAP"

    goto/16 :goto_0

    .line 834
    :cond_11
    const-string v1, "BatteryManager_BATTERY_PLUGGED_DOCKING"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 835
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 836
    :cond_12
    const-string v1, "AppInterface_STK_IDLE_SCREEN_ACTION"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 837
    const-string v0, "android.intent.action.stk.idle_screen"

    goto/16 :goto_0

    .line 838
    :cond_13
    const-string v1, "AppInterface_CHECK_SCREEN_IDLE_ACTION"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 839
    const-string v0, "android.intent.action.stk.check_screen_idle"

    goto/16 :goto_0

    .line 840
    :cond_14
    const-string v1, "Settings_EPC_CURRENT_ATTEMPTS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 841
    const-string v0, "epc_current_attempts_remaining"

    goto/16 :goto_0
.end method

.method public static getStaticBootMode()I
    .locals 1

    .prologue
    .line 402
    sget v0, Lcom/lenovo/leos/internal/server/StartShutdownService;->sBootMode:I

    return v0
.end method

.method private handleLauncherReady()V
    .locals 2

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mBootCompleted:Z

    if-eqz v0, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mState:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    sget-object v1, Lcom/lenovo/leos/internal/server/StartShutdownService$State;->Idle:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    if-ne v0, v1, :cond_0

    .line 550
    const-string v0, "StartShutdownService"

    const-string v1, "******StartShutdownService --- MESSAGE_LAUNCHER_READY******"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mBootCompleted:Z

    goto :goto_0
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 847
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 848
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 853
    :pswitch_0
    const/4 v0, 0x1

    .line 856
    :cond_0
    :pswitch_1
    return v0

    .line 848
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static init()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 638
    const-string/jumbo v3, "rocket.power.on.type.hex"

    const-string v4, "0x00"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, hexBootMode:Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/lenovo/leos/internal/server/StartShutdownService;->sBootEnum:I

    .line 643
    sget v3, Lcom/lenovo/leos/internal/server/StartShutdownService;->sBootEnum:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 644
    const/4 v3, 0x0

    sput v3, Lcom/lenovo/leos/internal/server/StartShutdownService;->sBootMode:I

    .line 660
    :goto_0
    const-string v1, "/data/system/shutdown_charging"

    .line 661
    .local v1, target:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 663
    .local v2, targetFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/lenovo/leos/internal/server/StartShutdownService;->sBootMode:I

    if-ne v3, v5, :cond_0

    .line 665
    const-string v3, "StartShutdownService"

    const-string v4, "FILE_MARK_SHUTDOWN_STATE exist"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    sput v6, Lcom/lenovo/leos/internal/server/StartShutdownService;->sBootMode:I

    .line 670
    :cond_0
    invoke-static {}, Lcom/lenovo/leos/internal/server/StartShutdownService;->setBootAnim()V

    .line 671
    const-string v3, "StartShutdownService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "boot mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/lenovo/leos/internal/server/StartShutdownService;->sBootMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    return-void

    .line 645
    .end local v1           #target:Ljava/lang/String;
    .end local v2           #targetFile:Ljava/io/File;
    :cond_1
    sget v3, Lcom/lenovo/leos/internal/server/StartShutdownService;->sBootEnum:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_2

    sget v3, Lcom/lenovo/leos/internal/server/StartShutdownService;->sBootEnum:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_3

    .line 647
    :cond_2
    sput v5, Lcom/lenovo/leos/internal/server/StartShutdownService;->sBootMode:I

    goto :goto_0

    .line 648
    :cond_3
    sget v3, Lcom/lenovo/leos/internal/server/StartShutdownService;->sBootEnum:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    .line 650
    invoke-static {}, Lcom/lenovo/leos/internal/server/StartShutdownService;->isRTCStartup()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    :goto_1
    sput v3, Lcom/lenovo/leos/internal/server/StartShutdownService;->sBootMode:I

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    goto :goto_1

    .line 652
    :cond_5
    sget v3, Lcom/lenovo/leos/internal/server/StartShutdownService;->sBootEnum:I

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_6

    sget v3, Lcom/lenovo/leos/internal/server/StartShutdownService;->sBootEnum:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_7

    .line 654
    :cond_6
    sput v6, Lcom/lenovo/leos/internal/server/StartShutdownService;->sBootMode:I

    goto :goto_0

    .line 656
    :cond_7
    sput v5, Lcom/lenovo/leos/internal/server/StartShutdownService;->sBootMode:I

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 620
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isRTCStartup()Z
    .locals 14

    .prologue
    .line 688
    const/4 v8, 0x0

    .line 689
    .local v8, ret:Z
    new-instance v3, Ljava/io/File;

    const-string v11, "/data/system/startup_rtc_time"

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 690
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 691
    const-wide/16 v9, 0x0

    .line 692
    .local v9, time:J
    const/4 v4, 0x0

    .line 693
    .local v4, in:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 696
    .local v0, dIn:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    .end local v4           #in:Ljava/io/FileInputStream;
    .local v5, in:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 698
    .end local v0           #dIn:Ljava/io/DataInputStream;
    .local v1, dIn:Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v9

    .line 700
    if-eqz v1, :cond_0

    .line 701
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 702
    :cond_0
    if-eqz v5, :cond_1

    .line 703
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    move-object v0, v1

    .end local v1           #dIn:Ljava/io/DataInputStream;
    .restart local v0       #dIn:Ljava/io/DataInputStream;
    move-object v4, v5

    .line 708
    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 709
    .local v6, now:J
    cmp-long v11, v9, v6

    if-gtz v11, :cond_5

    const-wide/32 v11, 0xea60

    sub-long v11, v6, v11

    cmp-long v11, v9, v11

    if-ltz v11, :cond_5

    const/4 v8, 0x1

    .line 710
    :goto_1
    const-string v11, "StartShutdownService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "******Startup rtc --- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "******"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    .end local v0           #dIn:Ljava/io/DataInputStream;
    .end local v4           #in:Ljava/io/FileInputStream;
    .end local v6           #now:J
    .end local v9           #time:J
    :cond_2
    const-string v11, "StartShutdownService"

    const-string v12, "******isRTCStartup:No found FILE_AUTO_STARTUP_TIME,return RTC_ALARM"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return v8

    .line 700
    .restart local v0       #dIn:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    .restart local v9       #time:J
    :catchall_0
    move-exception v11

    :goto_2
    if-eqz v0, :cond_3

    .line 701
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 702
    :cond_3
    if-eqz v4, :cond_4

    .line 703
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_4
    throw v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 705
    :catch_0
    move-exception v2

    .line 706
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 709
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v6       #now:J
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    .line 705
    .end local v0           #dIn:Ljava/io/DataInputStream;
    .end local v4           #in:Ljava/io/FileInputStream;
    .end local v6           #now:J
    .restart local v1       #dIn:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #dIn:Ljava/io/DataInputStream;
    .restart local v0       #dIn:Ljava/io/DataInputStream;
    move-object v4, v5

    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    goto :goto_3

    .line 700
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #dIn:Ljava/io/DataInputStream;
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v1       #dIn:Ljava/io/DataInputStream;
    .restart local v5       #in:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v11

    move-object v0, v1

    .end local v1           #dIn:Ljava/io/DataInputStream;
    .restart local v0       #dIn:Ljava/io/DataInputStream;
    move-object v4, v5

    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private loadSettings()V
    .locals 4

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->getBootMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 562
    const-string v1, "StartShutdownService"

    const-string v2, "******StartShutdownService ---do not LoadSettings in RTC_ALARM mode******"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :goto_0
    return-void

    .line 565
    :cond_0
    const-string v1, "StartShutdownService"

    const-string v2, "******StartShutdownService --- LoadSettings******"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 567
    const-string v1, "StartShutdownService"

    const-string v2, "******StartShutdownService --- AirplaneModeOn******"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x10404e7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/lenovo/leos/internal/server/StartShutdownService$3;

    invoke-direct {v3, p0}, Lcom/lenovo/leos/internal/server/StartShutdownService$3;-><init>(Lcom/lenovo/leos/internal/server/StartShutdownService;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 579
    .local v0, dialog:Landroid/app/AlertDialog;
    new-instance v1, Lcom/lenovo/leos/internal/server/StartShutdownService$4;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/internal/server/StartShutdownService$4;-><init>(Lcom/lenovo/leos/internal/server/StartShutdownService;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 585
    new-instance v1, Lcom/lenovo/leos/internal/server/StartShutdownService$5;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/internal/server/StartShutdownService$5;-><init>(Lcom/lenovo/leos/internal/server/StartShutdownService;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 591
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 594
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 597
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 599
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->showDataConnectionDialog()V

    goto :goto_0
.end method

.method public static main(Landroid/content/Context;I)Lcom/lenovo/leos/internal/server/StartShutdownService;
    .locals 2
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 178
    new-instance v0, Lcom/lenovo/leos/internal/server/StartShutdownService$SSThread;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/internal/server/StartShutdownService$SSThread;-><init>(Landroid/content/Context;I)V

    .line 179
    .local v0, thr:Lcom/lenovo/leos/internal/server/StartShutdownService$SSThread;
    invoke-virtual {v0}, Lcom/lenovo/leos/internal/server/StartShutdownService$SSThread;->start()V

    .line 181
    monitor-enter v0

    .line 182
    :goto_0
    :try_start_0
    iget-object v1, v0, Lcom/lenovo/leos/internal/server/StartShutdownService$SSThread;->mService:Lcom/lenovo/leos/internal/server/StartShutdownService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 184
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    goto :goto_0

    .line 188
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    iget-object v1, v0, Lcom/lenovo/leos/internal/server/StartShutdownService$SSThread;->mService:Lcom/lenovo/leos/internal/server/StartShutdownService;

    return-object v1

    .line 188
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static powerSaveWhileCharging()V
    .locals 0

    .prologue
    .line 634
    return-void
.end method

.method private releaseAlarmWakeLock()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mAlarmScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mAlarmScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private setAirplaneModeOff()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 625
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 628
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 629
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 630
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 631
    return-void
.end method

.method private setBootAndShutdownSoundMark(ZZ)V
    .locals 8
    .parameter "isBoot"
    .parameter "isSilent"

    .prologue
    .line 885
    if-eqz p1, :cond_1

    .line 886
    const-string v3, "/data/system/startup_param"

    .line 890
    .local v3, target:Ljava/lang/String;
    :goto_0
    const-string v5, "StartShutdownService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBootAndShutdownSoundMark "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 892
    .local v4, targetFile:Ljava/io/File;
    if-eqz p2, :cond_2

    .line 893
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 895
    :try_start_0
    const-string v5, "StartShutdownService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createNewFile  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 897
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 898
    .local v1, fout:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 899
    .local v0, dout:Ljava/io/DataOutputStream;
    const-string/jumbo v5, "silent"

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 900
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 901
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chmod 0777 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    .end local v0           #dout:Ljava/io/DataOutputStream;
    .end local v1           #fout:Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    return-void

    .line 888
    .end local v3           #target:Ljava/lang/String;
    .end local v4           #targetFile:Ljava/io/File;
    :cond_1
    const-string v3, "/data/system/shutdown_param"

    .restart local v3       #target:Ljava/lang/String;
    goto :goto_0

    .line 902
    .restart local v4       #targetFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 903
    .local v2, ioe:Ljava/io/IOException;
    const-string v5, "R2"

    const-string v6, "Exception while create sound mark! "

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 907
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 908
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private static setBootAnim()V
    .locals 2

    .prologue
    .line 675
    const-string/jumbo v0, "normal"

    .line 676
    .local v0, bootAnim:Ljava/lang/String;
    sget v1, Lcom/lenovo/leos/internal/server/StartShutdownService;->sBootMode:I

    packed-switch v1, :pswitch_data_0

    .line 684
    :goto_0
    :pswitch_0
    const-string/jumbo v1, "sys.power.startup_mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    return-void

    .line 678
    :pswitch_1
    const-string v0, "alarm"

    .line 679
    goto :goto_0

    .line 681
    :pswitch_2
    const-string v0, "charge"

    goto :goto_0

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showAlarmBackground()V
    .locals 7

    .prologue
    .line 368
    new-instance v1, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 369
    .local v1, background:Landroid/widget/ImageView;
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 370
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7da

    const/16 v6, 0x118

    invoke-direct {v2, v5, v6}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 376
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v5, 0x1

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 377
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    invoke-virtual {p0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->getBootMode()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 380
    const-string v3, "com.android.deskclock"

    .line 381
    .local v3, packageName:Ljava/lang/String;
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 382
    .local v0, b:Landroid/os/Binder;
    const-string/jumbo v5, "statusbar"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    .line 385
    .local v4, service:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v4, :cond_0

    .line 386
    const/high16 v5, 0x360

    :try_start_0
    invoke-interface {v4, v5, v0, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .end local v0           #b:Landroid/os/Binder;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #service:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 389
    .restart local v0       #b:Landroid/os/Binder;
    .restart local v3       #packageName:Ljava/lang/String;
    .restart local v4       #service:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private showDataConnectionDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 604
    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mobile_data_enable"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 606
    .local v1, on:I
    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "first_boot_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 608
    .local v0, firstBoot:I
    const-string v2, "StartShutdownService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "******showDataConnectionDialog --- mSimReady:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mSimReady:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",on:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mDataDialog:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mDataDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "******"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-boolean v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mDataDialogShown:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mSimReady:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->hasService()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mDataDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 614
    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "first_boot_on"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 617
    :cond_0
    return-void
.end method

.method private startFullSystem()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 318
    const-string v5, "R2"

    const-string v6, "Touch Startfull."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string/jumbo v5, "sys.power.startup_ready"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    sget-object v5, Lcom/lenovo/leos/internal/server/StartShutdownService$State;->Idle:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    iput-object v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mState:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    .line 322
    iget-boolean v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mLauncherReady:Z

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    .line 323
    .local v4, timeout:I
    :goto_0
    iget-object v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    int-to-long v7, v4

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 326
    iget v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mFactoryTest:I

    iget v6, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->SYSTEM_SERVER_FACTORY_TEST_OFF:I

    if-eq v5, v6, :cond_1

    .line 358
    :goto_1
    return-void

    .line 322
    .end local v4           #timeout:I
    :cond_0
    const/16 v4, 0x3a98

    goto :goto_0

    .line 331
    .restart local v4       #timeout:I
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 332
    .local v0, am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_2

    .line 333
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 334
    .local v1, config:Landroid/content/res/Configuration;
    if-eqz v1, :cond_2

    .line 335
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 341
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :cond_2
    :goto_2
    sget v5, Lcom/lenovo/leos/internal/server/StartShutdownService;->sBootMode:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    sget v5, Lcom/lenovo/leos/internal/server/StartShutdownService;->sBootMode:I

    if-ne v5, v9, :cond_4

    .line 343
    :cond_3
    const-string/jumbo v5, "sys.power.disable_radio"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v5, "R2"

    const-string v6, "Touch Start Full system, release locks now."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->enableKeyguard()V

    .line 346
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->releaseAlarmWakeLock()V

    .line 348
    :try_start_1
    const-string/jumbo v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 350
    .local v3, sPhone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v5

    if-nez v5, :cond_4

    .line 351
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 357
    .end local v3           #sPhone:Lcom/android/internal/telephony/ITelephony;
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mPolicy:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    invoke-virtual {v5}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->onBootCompleted()V

    goto :goto_1

    .line 353
    :catch_0
    move-exception v2

    .line 354
    .local v2, ex:Landroid/os/RemoteException;
    const-string v5, "StartShutdownService"

    const-string v6, "RemoteException during radio on"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 338
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    goto :goto_2
.end method


# virtual methods
.method public bootCompleted()V
    .locals 2

    .prologue
    .line 556
    iget v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mFactoryTest:I

    iget v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->SYSTEM_SERVER_FACTORY_TEST_LOW_LEVEL:I

    if-eq v0, v1, :cond_0

    .line 558
    :cond_0
    return-void
.end method

.method public disableAutoShutdown()V
    .locals 3

    .prologue
    .line 468
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 470
    return-void
.end method

.method public disableAutoStart()V
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 445
    return-void
.end method

.method public enableAutoShutdown(II)Z
    .locals 3
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 458
    if-ltz p1, :cond_0

    const/16 v0, 0x17

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    const/16 v0, 0x3b

    if-gt p2, v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 461
    const/4 v0, 0x1

    .line 463
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableAutoStart(II)Z
    .locals 3
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/4 v0, 0x1

    .line 434
    if-ltz p1, :cond_0

    const/16 v1, 0x17

    if-gt p1, v1, :cond_0

    if-ltz p2, :cond_0

    const/16 v1, 0x3b

    if-gt p2, v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 439
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBootMode()I
    .locals 1

    .prologue
    .line 394
    sget v0, Lcom/lenovo/leos/internal/server/StartShutdownService;->sBootMode:I

    return v0
.end method

.method public isAutoShutdownEnable()Z
    .locals 3

    .prologue
    .line 473
    sget-object v2, Lcom/lenovo/leos/internal/server/StartShutdownService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 474
    const/4 v0, 0x0

    .line 475
    .local v0, result:Z
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mPolicy:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mPolicy:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    invoke-virtual {v1}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->isAutoShutdownTimeSet()Z

    .line 478
    :cond_0
    monitor-exit v2

    return v0

    .line 479
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAutoStartEnable()Z
    .locals 3

    .prologue
    .line 448
    sget-object v2, Lcom/lenovo/leos/internal/server/StartShutdownService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, result:Z
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mPolicy:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mPolicy:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    invoke-virtual {v1}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->isAutoStartTimeSet()Z

    move-result v0

    .line 453
    :cond_0
    monitor-exit v2

    return v0

    .line 454
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isBootCompleted()Z
    .locals 2

    .prologue
    .line 861
    const-string/jumbo v0, "sys.power.startup_ready"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSilentBoot()Z
    .locals 2

    .prologue
    .line 870
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/startup_param"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 871
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public isSilentShutdown()Z
    .locals 2

    .prologue
    .line 875
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/shutdown_param"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 876
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public launcherReady()V
    .locals 4

    .prologue
    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mLauncherReady:Z

    .line 362
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 365
    return-void
.end method

.method public poweroffAlarmAlertFinish()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mState:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    sget-object v1, Lcom/lenovo/leos/internal/server/StartShutdownService$State;->Notify:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    if-ne v0, v1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mServiceCallback:Lcom/lenovo/leos/internal/server/StartShutdownService$ServiceCallback;

    invoke-interface {v0}, Lcom/lenovo/leos/internal/server/StartShutdownService$ServiceCallback;->shutdownAction()V

    .line 431
    :cond_0
    return-void
.end method

.method public poweroffAlarmAlertPrepare()V
    .locals 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 425
    return-void
.end method

.method public reboot()V
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 415
    return-void
.end method

.method public setSilentBoot(Z)V
    .locals 3
    .parameter "silent"

    .prologue
    .line 865
    const-string v0, "StartShutdownService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSilentBoot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/internal/server/StartShutdownService;->setBootAndShutdownSoundMark(ZZ)V

    .line 867
    return-void
.end method

.method public setSilentShutdown(Z)V
    .locals 1
    .parameter "silent"

    .prologue
    .line 880
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/internal/server/StartShutdownService;->setBootAndShutdownSoundMark(ZZ)V

    .line 881
    return-void
.end method

.method public setSystemBusy(Z)V
    .locals 2
    .parameter "busy"

    .prologue
    .line 418
    sget-object v1, Lcom/lenovo/leos/internal/server/StartShutdownService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_0
    iput-boolean p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mSystemBusy:Z

    .line 420
    monitor-exit v1

    .line 421
    return-void

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shutdown(Z)V
    .locals 5
    .parameter "needConfirm"

    .prologue
    const/4 v1, 0x0

    .line 408
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 409
    .local v0, confirm:I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 411
    return-void

    .end local v0           #confirm:I
    :cond_0
    move v0, v1

    .line 408
    goto :goto_0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->loadSettings()V

    .line 296
    iget v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->mFactoryTest:I

    iget v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService;->SYSTEM_SERVER_FACTORY_TEST_OFF:I

    if-eq v0, v1, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->startFullSystem()V

    .line 315
    :goto_0
    return-void

    .line 301
    :cond_0
    const-string v0, "StartShutdownService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "******StartShutdownService --- systemReady:mBootMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/leos/internal/server/StartShutdownService;->sBootMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "******"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    sget v0, Lcom/lenovo/leos/internal/server/StartShutdownService;->sBootMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 312
    :pswitch_0
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->startFullSystem()V

    goto :goto_0

    .line 306
    :pswitch_1
    const-string v0, "R2"

    const-string v1, "Disable keyguard for RTC Alarm!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->disableKeyguard()V

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
