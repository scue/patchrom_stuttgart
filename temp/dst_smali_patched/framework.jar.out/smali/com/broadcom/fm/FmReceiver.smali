.class public Lcom/broadcom/fm/FmReceiver;
.super Ljava/lang/Object;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/fm/FmReceiver$ICallbacks;
    }
.end annotation


# static fields
.field public static final ACTION_FM_ENABLED:Ljava/lang/String; = "com.broadcom.fm.FM_ENABLED"

.field public static final DIRECTION_DOWN:I = 0x0

.field public static final DIRECTION_FULL:I = 0x82

.field public static final DIRECTION_UP:I = 0x80

.field private static mCb:Lcom/broadcom/fm/FmReceiver$ICallbacks;

.field private static mContext:Landroid/content/Context;

.field private static mFilter:Landroid/content/IntentFilter;

.field private static mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "fmreceiver"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/broadcom/fm/FmReceiver;->mFilter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/broadcom/fm/FmReceiver$1;

    invoke-direct {v0}, Lcom/broadcom/fm/FmReceiver$1;-><init>()V

    sput-object v0, Lcom/broadcom/fm/FmReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/broadcom/fm/FmReceiver$ICallbacks;)V
    .locals 0
    .parameter "context"
    .parameter "callback"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/broadcom/fm/FmReceiver;->mContext:Landroid/content/Context;

    sput-object p2, Lcom/broadcom/fm/FmReceiver;->mCb:Lcom/broadcom/fm/FmReceiver$ICallbacks;

    return-void
.end method

.method static synthetic access$000(F)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-static {p0}, Lcom/broadcom/fm/FmReceiver;->setVolumeNative(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    sget-object v0, Lcom/broadcom/fm/FmReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private native cancelNative()I
.end method

.method private native getLowerLimitNative()I
.end method

.method private native getUpperLimitNative()I
.end method

.method private native isAntennaNative()Z
.end method

.method private native isFmOnNative()Z
.end method

.method private native isMuteNative()Z
.end method

.method private native muteNative(Z)I
.end method

.method private static onCancelEvent()V
    .locals 1

    .prologue
    sget-object v0, Lcom/broadcom/fm/FmReceiver;->mCb:Lcom/broadcom/fm/FmReceiver$ICallbacks;

    invoke-interface {v0}, Lcom/broadcom/fm/FmReceiver$ICallbacks;->onCancelEvent()V

    return-void
.end method

.method private static onScanEvent(I)V
    .locals 1
    .parameter "frequency"

    .prologue
    sget-object v0, Lcom/broadcom/fm/FmReceiver;->mCb:Lcom/broadcom/fm/FmReceiver$ICallbacks;

    invoke-interface {v0, p0}, Lcom/broadcom/fm/FmReceiver$ICallbacks;->onScanEvent(I)V

    return-void
.end method

.method private static onSearchingEvent()V
    .locals 1

    .prologue
    sget-object v0, Lcom/broadcom/fm/FmReceiver;->mCb:Lcom/broadcom/fm/FmReceiver$ICallbacks;

    invoke-interface {v0}, Lcom/broadcom/fm/FmReceiver$ICallbacks;->onSearchingEvent()V

    return-void
.end method

.method private static onSeekEvent(I)V
    .locals 1
    .parameter "frequency"

    .prologue
    sget-object v0, Lcom/broadcom/fm/FmReceiver;->mCb:Lcom/broadcom/fm/FmReceiver$ICallbacks;

    invoke-interface {v0, p0}, Lcom/broadcom/fm/FmReceiver$ICallbacks;->onSeekEvent(I)V

    return-void
.end method

.method private static onStereoEvent(Z)V
    .locals 1
    .parameter "stereo"

    .prologue
    sget-object v0, Lcom/broadcom/fm/FmReceiver;->mCb:Lcom/broadcom/fm/FmReceiver$ICallbacks;

    invoke-interface {v0, p0}, Lcom/broadcom/fm/FmReceiver$ICallbacks;->onStereoEvent(Z)V

    return-void
.end method

.method private static onTuneEvent(I)V
    .locals 1
    .parameter "frequency"

    .prologue
    sget-object v0, Lcom/broadcom/fm/FmReceiver;->mCb:Lcom/broadcom/fm/FmReceiver$ICallbacks;

    invoke-interface {v0, p0}, Lcom/broadcom/fm/FmReceiver$ICallbacks;->onTuneEvent(I)V

    return-void
.end method

.method private static onTurnOffEvent()V
    .locals 1

    .prologue
    sget-object v0, Lcom/broadcom/fm/FmReceiver;->mCb:Lcom/broadcom/fm/FmReceiver$ICallbacks;

    invoke-interface {v0}, Lcom/broadcom/fm/FmReceiver$ICallbacks;->onTurnOffEvent()V

    return-void
.end method

.method private static onTurnOnEvent()V
    .locals 2

    .prologue
    sget-object v1, Lcom/broadcom/fm/FmReceiver;->mCb:Lcom/broadcom/fm/FmReceiver$ICallbacks;

    invoke-interface {v1}, Lcom/broadcom/fm/FmReceiver$ICallbacks;->onTurnOnEvent()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.fm.FM_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/broadcom/fm/FmReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private native scanNative(I)I
.end method

.method private native seekNative(I)I
.end method

.method private native setStereoNative(Z)I
.end method

.method private static native setVolumeNative(F)I
.end method

.method private native tuneNative(I)I
.end method

.method private native turnOffNative()I
.end method

.method private native turnOnNative()I
.end method


# virtual methods
.method public cancel()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/broadcom/fm/FmReceiver;->cancelNative()I

    move-result v0

    return v0
.end method

.method public getLowerLimit()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/broadcom/fm/FmReceiver;->getLowerLimitNative()I

    move-result v0

    return v0
.end method

.method public getUpperLimit()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/broadcom/fm/FmReceiver;->getUpperLimitNative()I

    move-result v0

    return v0
.end method

.method public isAntenna()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/broadcom/fm/FmReceiver;->isAntennaNative()Z

    move-result v0

    return v0
.end method

.method public isFmOn()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/broadcom/fm/FmReceiver;->isFmOnNative()Z

    move-result v0

    return v0
.end method

.method public isMute()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/broadcom/fm/FmReceiver;->isMuteNative()Z

    move-result v0

    return v0
.end method

.method public mute(Z)I
    .locals 1
    .parameter "mute"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/fm/FmReceiver;->muteNative(Z)I

    move-result v0

    return v0
.end method

.method public scan(I)I
    .locals 1
    .parameter "direction"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/fm/FmReceiver;->scanNative(I)I

    move-result v0

    return v0
.end method

.method public seek(I)I
    .locals 1
    .parameter "direction"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/fm/FmReceiver;->seekNative(I)I

    move-result v0

    return v0
.end method

.method public setStereo(Z)I
    .locals 1
    .parameter "stereo"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/fm/FmReceiver;->setStereoNative(Z)I

    move-result v0

    return v0
.end method

.method public tune(I)I
    .locals 1
    .parameter "frequency"

    .prologue
    invoke-direct {p0, p1}, Lcom/broadcom/fm/FmReceiver;->tuneNative(I)I

    move-result v0

    return v0
.end method

.method public turnOff()I
    .locals 3

    .prologue
    :try_start_0
    sget-object v1, Lcom/broadcom/fm/FmReceiver;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/broadcom/fm/FmReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/broadcom/fm/FmReceiver;->turnOffNative()I

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "FmReceiver"

    const-string v2, "unregisterReceiver failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public turnOn()I
    .locals 3

    .prologue
    sget-object v0, Lcom/broadcom/fm/FmReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/broadcom/fm/FmReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.broadcom.fm.FM_ENABLED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/broadcom/fm/FmReceiver;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/broadcom/fm/FmReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/broadcom/fm/FmReceiver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/broadcom/fm/FmReceiver;->turnOnNative()I

    move-result v0

    return v0
.end method
