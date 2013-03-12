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
    .line 35
    const-string v0, "fmreceiver"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/broadcom/fm/FmReceiver;->mFilter:Landroid/content/IntentFilter;

    .line 53
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
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sput-object p1, Lcom/broadcom/fm/FmReceiver;->mContext:Landroid/content/Context;

    .line 75
    sput-object p2, Lcom/broadcom/fm/FmReceiver;->mCb:Lcom/broadcom/fm/FmReceiver$ICallbacks;

    .line 76
    return-void
.end method

.method static synthetic access$000(F)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-static {p0}, Lcom/broadcom/fm/FmReceiver;->setVolumeNative(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
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
    .line 207
    sget-object v0, Lcom/broadcom/fm/FmReceiver;->mCb:Lcom/broadcom/fm/FmReceiver$ICallbacks;

    invoke-interface {v0}, Lcom/broadcom/fm/FmReceiver$ICallbacks;->onCancelEvent()V

    .line 208
    return-void
.end method

.method private static onScanEvent(I)V
    .locals 1
    .parameter "frequency"

    .prologue
    .line 197
    sget-object v0, Lcom/broadcom/fm/FmReceiver;->mCb:Lcom/broadcom/fm/FmReceiver$ICallbacks;

    invoke-interface {v0, p0}, Lcom/broadcom/fm/FmReceiver$ICallbacks;->onScanEvent(I)V

    .line 198
    return-void
.end method

.method private static onSearchingEvent()V
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/broadcom/fm/FmReceiver;->mCb:Lcom/broadcom/fm/FmReceiver$ICallbacks;

    invoke-interface {v0}, Lcom/broadcom/fm/FmReceiver$ICallbacks;->onSearchingEvent()V

    .line 203
    return-void
.end method

.method private static onSeekEvent(I)V
    .locals 1
    .parameter "frequency"

    .prologue
    .line 192
    sget-object v0, Lcom/broadcom/fm/FmReceiver;->mCb:Lcom/broadcom/fm/FmReceiver$ICallbacks;

    invoke-interface {v0, p0}, Lcom/broadcom/fm/FmReceiver$ICallbacks;->onSeekEvent(I)V

    .line 193
    return-void
.end method

.method private static onStereoEvent(Z)V
    .locals 1
    .parameter "stereo"

    .prologue
    .line 187
    sget-object v0, Lcom/broadcom/fm/FmReceiver;->mCb:Lcom/broadcom/fm/FmReceiver$ICallbacks;

    invoke-interface {v0, p0}, Lcom/broadcom/fm/FmReceiver$ICallbacks;->onStereoEvent(Z)V

    .line 188
    return-void
.end method

.method private static onTuneEvent(I)V
    .locals 1
    .parameter "frequency"

    .prologue
    .line 182
    sget-object v0, Lcom/broadcom/fm/FmReceiver;->mCb:Lcom/broadcom/fm/FmReceiver$ICallbacks;

    invoke-interface {v0, p0}, Lcom/broadcom/fm/FmReceiver$ICallbacks;->onTuneEvent(I)V

    .line 183
    return-void
.end method

.method private static onTurnOffEvent()V
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/broadcom/fm/FmReceiver;->mCb:Lcom/broadcom/fm/FmReceiver$ICallbacks;

    invoke-interface {v0}, Lcom/broadcom/fm/FmReceiver$ICallbacks;->onTurnOffEvent()V

    .line 178
    return-void
.end method

.method private static onTurnOnEvent()V
    .locals 2

    .prologue
    .line 169
    sget-object v1, Lcom/broadcom/fm/FmReceiver;->mCb:Lcom/broadcom/fm/FmReceiver$ICallbacks;

    invoke-interface {v1}, Lcom/broadcom/fm/FmReceiver$ICallbacks;->onTurnOnEvent()V

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.fm.FM_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/broadcom/fm/FmReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 173
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
    .line 123
    invoke-direct {p0}, Lcom/broadcom/fm/FmReceiver;->cancelNative()I

    move-result v0

    return v0
.end method

.method public getLowerLimit()I
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/broadcom/fm/FmReceiver;->getLowerLimitNative()I

    move-result v0

    return v0
.end method

.method public getUpperLimit()I
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/broadcom/fm/FmReceiver;->getUpperLimitNative()I

    move-result v0

    return v0
.end method

.method public isAntenna()Z
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/broadcom/fm/FmReceiver;->isAntennaNative()Z

    move-result v0

    return v0
.end method

.method public isFmOn()Z
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/broadcom/fm/FmReceiver;->isFmOnNative()Z

    move-result v0

    return v0
.end method

.method public isMute()Z
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/broadcom/fm/FmReceiver;->isMuteNative()Z

    move-result v0

    return v0
.end method

.method public mute(Z)I
    .locals 1
    .parameter "mute"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/broadcom/fm/FmReceiver;->muteNative(Z)I

    move-result v0

    return v0
.end method

.method public scan(I)I
    .locals 1
    .parameter "direction"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/broadcom/fm/FmReceiver;->scanNative(I)I

    move-result v0

    return v0
.end method

.method public seek(I)I
    .locals 1
    .parameter "direction"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/broadcom/fm/FmReceiver;->seekNative(I)I

    move-result v0

    return v0
.end method

.method public setStereo(Z)I
    .locals 1
    .parameter "stereo"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/broadcom/fm/FmReceiver;->setStereoNative(Z)I

    move-result v0

    return v0
.end method

.method public tune(I)I
    .locals 1
    .parameter "frequency"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/broadcom/fm/FmReceiver;->tuneNative(I)I

    move-result v0

    return v0
.end method

.method public turnOff()I
    .locals 3

    .prologue
    .line 89
    :try_start_0
    sget-object v1, Lcom/broadcom/fm/FmReceiver;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/broadcom/fm/FmReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    invoke-direct {p0}, Lcom/broadcom/fm/FmReceiver;->turnOffNative()I

    move-result v1

    return v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "FmReceiver"

    const-string/jumbo v2, "unregisterReceiver failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public turnOn()I
    .locals 3

    .prologue
    .line 80
    sget-object v0, Lcom/broadcom/fm/FmReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/broadcom/fm/FmReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.broadcom.fm.FM_ENABLED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/broadcom/fm/FmReceiver;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/broadcom/fm/FmReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/broadcom/fm/FmReceiver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    invoke-direct {p0}, Lcom/broadcom/fm/FmReceiver;->turnOnNative()I

    move-result v0

    return v0
.end method
