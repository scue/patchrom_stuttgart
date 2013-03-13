.class public Landroid/hardware/FmRadio;
.super Ljava/lang/Object;
.source "FmRadio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/FmRadio$BroadcomFmAdaptor;,
        Landroid/hardware/FmRadio$IFmAdaptor;,
        Landroid/hardware/FmRadio$IEventCallbacks;
    }
.end annotation


# static fields
.field public static final FM_ERRER_COMMAND:I = 0x2

.field public static final FM_ERRER_FAIL:I = 0x1

.field public static final FM_ERRER_INIT:I = 0x4

.field public static final FM_ERRER_OK:I = 0x0

.field public static final FM_ERRER_PARAMETERS:I = 0x3

.field public static final FM_SEEK_DIRECTION_DOWN:I = 0x0

.field public static final FM_SEEK_DIRECTION_UP:I = 0x1

.field private static tag:Ljava/lang/String;


# instance fields
.field private mAdaptor:Landroid/hardware/FmRadio$IFmAdaptor;

.field private mCallback:Landroid/hardware/FmRadio$IEventCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "LeAPI-FmRadio"

    sput-object v0, Landroid/hardware/FmRadio;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/FmRadio$IEventCallbacks;Landroid/content/Context;)V
    .locals 2
    .parameter "cb"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/FmRadio;->mCallback:Landroid/hardware/FmRadio$IEventCallbacks;

    :try_start_0
    new-instance v1, Landroid/hardware/FmRadio$BroadcomFmAdaptor;

    invoke-direct {v1, p0, p2}, Landroid/hardware/FmRadio$BroadcomFmAdaptor;-><init>(Landroid/hardware/FmRadio;Landroid/content/Context;)V

    iput-object v1, p0, Landroid/hardware/FmRadio;->mAdaptor:Landroid/hardware/FmRadio$IFmAdaptor;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InstantiationException;
    throw v0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/hardware/FmRadio;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/FmRadio;)Landroid/hardware/FmRadio$IEventCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/hardware/FmRadio;->mCallback:Landroid/hardware/FmRadio$IEventCallbacks;

    return-object v0
.end method


# virtual methods
.method public cancel()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/FmRadio;->mAdaptor:Landroid/hardware/FmRadio$IFmAdaptor;

    invoke-interface {v0}, Landroid/hardware/FmRadio$IFmAdaptor;->cancel()I

    move-result v0

    return v0
.end method

.method public getLowerLimit()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/FmRadio;->mAdaptor:Landroid/hardware/FmRadio$IFmAdaptor;

    invoke-interface {v0}, Landroid/hardware/FmRadio$IFmAdaptor;->getLowerLimit()I

    move-result v0

    return v0
.end method

.method public getUpperLimit()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/FmRadio;->mAdaptor:Landroid/hardware/FmRadio$IFmAdaptor;

    invoke-interface {v0}, Landroid/hardware/FmRadio$IFmAdaptor;->getUpperLimit()I

    move-result v0

    return v0
.end method

.method public isFmOn()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/FmRadio;->mAdaptor:Landroid/hardware/FmRadio$IFmAdaptor;

    invoke-interface {v0}, Landroid/hardware/FmRadio$IFmAdaptor;->isFmOn()Z

    move-result v0

    return v0
.end method

.method public isInternalAntennaAvailable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/FmRadio;->mAdaptor:Landroid/hardware/FmRadio$IFmAdaptor;

    invoke-interface {v0}, Landroid/hardware/FmRadio$IFmAdaptor;->isInternalAntennaAvailable()Z

    move-result v0

    return v0
.end method

.method public isMute()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/FmRadio;->mAdaptor:Landroid/hardware/FmRadio$IFmAdaptor;

    invoke-interface {v0}, Landroid/hardware/FmRadio$IFmAdaptor;->isMute()Z

    move-result v0

    return v0
.end method

.method public mute(Z)I
    .locals 1
    .parameter "mute"

    .prologue
    iget-object v0, p0, Landroid/hardware/FmRadio;->mAdaptor:Landroid/hardware/FmRadio$IFmAdaptor;

    invoke-interface {v0, p1}, Landroid/hardware/FmRadio$IFmAdaptor;->mute(Z)I

    move-result v0

    return v0
.end method

.method public scan(I)I
    .locals 1
    .parameter "direction"

    .prologue
    iget-object v0, p0, Landroid/hardware/FmRadio;->mAdaptor:Landroid/hardware/FmRadio$IFmAdaptor;

    invoke-interface {v0, p1}, Landroid/hardware/FmRadio$IFmAdaptor;->scan(I)I

    move-result v0

    return v0
.end method

.method public seek(I)I
    .locals 1
    .parameter "direction"

    .prologue
    iget-object v0, p0, Landroid/hardware/FmRadio;->mAdaptor:Landroid/hardware/FmRadio$IFmAdaptor;

    invoke-interface {v0, p1}, Landroid/hardware/FmRadio$IFmAdaptor;->seek(I)I

    move-result v0

    return v0
.end method

.method public setAnalogMode(Z)I
    .locals 1
    .parameter "analog"

    .prologue
    iget-object v0, p0, Landroid/hardware/FmRadio;->mAdaptor:Landroid/hardware/FmRadio$IFmAdaptor;

    invoke-interface {v0, p1}, Landroid/hardware/FmRadio$IFmAdaptor;->setAnalogMode(Z)I

    move-result v0

    return v0
.end method

.method public setStereoMode(Z)I
    .locals 1
    .parameter "stereo"

    .prologue
    iget-object v0, p0, Landroid/hardware/FmRadio;->mAdaptor:Landroid/hardware/FmRadio$IFmAdaptor;

    invoke-interface {v0, p1}, Landroid/hardware/FmRadio$IFmAdaptor;->setStereoMode(Z)I

    move-result v0

    return v0
.end method

.method public tune(I)I
    .locals 1
    .parameter "frequencyKHz"

    .prologue
    iget-object v0, p0, Landroid/hardware/FmRadio;->mAdaptor:Landroid/hardware/FmRadio$IFmAdaptor;

    invoke-interface {v0, p1}, Landroid/hardware/FmRadio$IFmAdaptor;->tune(I)I

    move-result v0

    return v0
.end method

.method public turnOff()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/FmRadio;->mAdaptor:Landroid/hardware/FmRadio$IFmAdaptor;

    invoke-interface {v0}, Landroid/hardware/FmRadio$IFmAdaptor;->turnOff()I

    move-result v0

    return v0
.end method

.method public turnOn()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/FmRadio;->mAdaptor:Landroid/hardware/FmRadio$IFmAdaptor;

    invoke-interface {v0}, Landroid/hardware/FmRadio$IFmAdaptor;->turnOn()I

    move-result v0

    return v0
.end method
