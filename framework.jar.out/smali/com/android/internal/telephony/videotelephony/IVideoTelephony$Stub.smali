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
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/videotelephony/IVideoTelephony;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/videotelephony/IVideoTelephony;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/android/internal/telephony/videotelephony/IVideoTelephony;

    goto :goto_0

    .line 35
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
    .line 39
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

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;->call(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 57
    goto :goto_0

    .line 61
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;->hangup()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 64
    goto :goto_0

    .line 68
    :sswitch_3
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;->answer()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 71
    goto :goto_0

    .line 75
    :sswitch_4
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;->reject()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 78
    goto :goto_0

    .line 82
    :sswitch_5
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;->fallback()V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 85
    goto :goto_0

    .line 89
    :sswitch_6
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;

    move-result-object v1

    .line 92
    .local v1, _arg0:Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;->registerListener(Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 94
    goto :goto_0

    .line 98
    .end local v1           #_arg0:Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;
    :sswitch_7
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;

    move-result-object v1

    .line 101
    .restart local v1       #_arg0:Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;->unregisterListener(Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 103
    goto :goto_0

    .line 107
    .end local v1           #_arg0:Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;
    :sswitch_8
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;->setWaitState(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 112
    goto/16 :goto_0

    .line 116
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_9
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;->getWaitState()Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 120
    goto/16 :goto_0

    .line 124
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 128
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 134
    .local v2, _arg1:Landroid/os/Message;
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;->getVTCallForwardingOption(ILandroid/os/Message;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 136
    goto/16 :goto_0

    .line 132
    .end local v2           #_arg1:Landroid/os/Message;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/Message;
    goto :goto_1

    .line 140
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/os/Message;
    :sswitch_b
    const-string v0, "com.android.internal.telephony.videotelephony.IVideoTelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 144
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 146
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 150
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    .local v5, _arg4:Landroid/os/Message;
    :goto_2
    move-object v0, p0

    .line 156
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/videotelephony/IVideoTelephony$Stub;->setVTCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 158
    goto/16 :goto_0

    .line 154
    .end local v5           #_arg4:Landroid/os/Message;
    :cond_1
    const/4 v5, 0x0

    .restart local v5       #_arg4:Landroid/os/Message;
    goto :goto_2

    .line 43
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
