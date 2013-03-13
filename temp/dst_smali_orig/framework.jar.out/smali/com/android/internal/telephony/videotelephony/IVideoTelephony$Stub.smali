.class public abstract Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;
.super Landroid/os/Binder;
.source "IVideoTelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/videotelephony/IVideoTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/videotelephony/IVideoTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.videotelephony.IVideoTelephony"

.field static final TRANSACTION_answer:I = 0x3

.field static final TRANSACTION_call:I = 0x1

.field static final TRANSACTION_fallback:I = 0x5

.field static final TRANSACTION_getVTCallForwardingOption:I = 0xa

.field static final TRANSACTION_getWaitState:I = 0x9

.field static final TRANSACTION_hangup:I = 0x2

.field static final TRANSACTION_registerListener:I = 0x6

.field static final TRANSACTION_reject:I = 0x4

.field static final TRANSACTION_setVTCallForwardingOption:I = 0xb

.field static final TRANSACTION_setWaitState:I = 0x8

.field static final TRANSACTION_unregisterListener:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/videotelephony/IVideoTelephony;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/videotelephony/IVideoTelephony;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telephony/videotelephony/IVideoTelephony;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    goto :goto_0

    :sswitch_1
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;->call(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto :goto_0

    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;->hangup()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto :goto_0

    :sswitch_3
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;->answer()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto :goto_0

    :sswitch_4
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;->reject()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto :goto_0

    :sswitch_5
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;->fallback()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto :goto_0

    :sswitch_6
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;

    move-result-object v1

    .local v1, _arg0:Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;->registerListener(Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto :goto_0

    .end local v1           #_arg0:Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;
    :sswitch_7
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;

    move-result-object v1

    .restart local v1       #_arg0:Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;->unregisterListener(Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto :goto_0

    .end local v1           #_arg0:Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;
    :sswitch_8
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;->setWaitState(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_9
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;->getWaitState()Ljava/lang/String;

    move-result-object v6

    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    goto/16 :goto_0

    .end local v6           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .local v2, _arg1:Landroid/os/Message;
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;->getVTCallForwardingOption(ILandroid/os/Message;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    .end local v2           #_arg1:Landroid/os/Message;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/Message;
    goto :goto_1

    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/os/Message;
    :sswitch_b
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    .local v5, _arg4:Landroid/os/Message;
    :goto_2
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;->setVTCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    .end local v5           #_arg4:Landroid/os/Message;
    :cond_1
    const/4 v5, 0x0

    .restart local v5       #_arg4:Landroid/os/Message;
    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
