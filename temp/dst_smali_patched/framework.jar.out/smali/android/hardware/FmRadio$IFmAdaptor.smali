.class interface abstract Landroid/hardware/FmRadio$IFmAdaptor;
.super Ljava/lang/Object;
.source "FmRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/FmRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "IFmAdaptor"
.end annotation


# virtual methods
.method public abstract cancel()I
.end method

.method public abstract getLowerLimit()I
.end method

.method public abstract getUpperLimit()I
.end method

.method public abstract isFmOn()Z
.end method

.method public abstract isInternalAntennaAvailable()Z
.end method

.method public abstract isMute()Z
.end method

.method public abstract mute(Z)I
.end method

.method public abstract scan(I)I
.end method

.method public abstract seek(I)I
.end method

.method public abstract setAnalogMode(Z)I
.end method

.method public abstract setStereoMode(Z)I
.end method

.method public abstract tune(I)I
.end method

.method public abstract turnOff()I
.end method

.method public abstract turnOn()I
.end method
