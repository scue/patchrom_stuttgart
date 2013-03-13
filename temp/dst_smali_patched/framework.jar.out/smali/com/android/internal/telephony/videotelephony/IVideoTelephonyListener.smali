.class public interface abstract Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;
.super Ljava/lang/Object;
.source "IVideoTelephonyListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCallResult(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStateChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
