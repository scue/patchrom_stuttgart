.class public interface abstract Lcom/broadcom/fm/FmReceiver$ICallbacks;
.super Ljava/lang/Object;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/fm/FmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICallbacks"
.end annotation


# virtual methods
.method public abstract onCancelEvent()V
.end method

.method public abstract onScanEvent(I)V
.end method

.method public abstract onSearchingEvent()V
.end method

.method public abstract onSeekEvent(I)V
.end method

.method public abstract onStereoEvent(Z)V
.end method

.method public abstract onTuneEvent(I)V
.end method

.method public abstract onTurnOffEvent()V
.end method

.method public abstract onTurnOnEvent()V
.end method
