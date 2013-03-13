.class public abstract Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub;
.super Landroid/os/Binder;
.source "IStartShutdownManager.java"

# interfaces
.implements Lcom/lenovo/leos/internal/app/IStartShutdownManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/internal/app/IStartShutdownManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lenovo.leos.internal.app.IStartShutdownManager"

.field static final TRANSACTION_disableAutoShutdown:I = 0xc

.field static final TRANSACTION_disableAutoStart:I = 0x9

.field static final TRANSACTION_enableAutoShutdown:I = 0xb

.field static final TRANSACTION_enableAutoStart:I = 0x8

.field static final TRANSACTION_getBootMode:I = 0x1

.field static final TRANSACTION_isAutoShutdownEnable:I = 0xd

.field static final TRANSACTION_isAutoStartEnable:I = 0xa

.field static final TRANSACTION_isBootCompleted:I = 0x12

.field static final TRANSACTION_isSilentBoot:I = 0xe

.field static final TRANSACTION_isSilentShutdown:I = 0x10

.field static final TRANSACTION_launcherReady:I = 0x5

.field static final TRANSACTION_poweroffAlarmAlertFinish:I = 0x7

.field static final TRANSACTION_poweroffAlarmAlertPrepare:I = 0x6

.field static final TRANSACTION_reboot:I = 0x3

.field static final TRANSACTION_setSilentBoot:I = 0xf

.field static final TRANSACTION_setSilentShutdown:I = 0x11

.field static final TRANSACTION_setSystemBusy:I = 0x4

.field static final TRANSACTION_shutdown:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.lenovo.leos.internal.app.IStartShutdownManager"

    invoke-virtual {p0, p0, v0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lenovo/leos/internal/app/IStartShutdownManager;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.lenovo.leos.internal.app.IStartShutdownManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v4, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v4, "com.lenovo.leos.internal.app.IStartShutdownManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "com.lenovo.leos.internal.app.IStartShutdownManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub;->getBootMode()I

    move-result v2

    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v2           #_result:I
    :sswitch_2
    const-string v5, "com.lenovo.leos.internal.app.IStartShutdownManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub;->shutdown(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_0
    move v0, v4

    goto :goto_1

    :sswitch_3
    const-string v4, "com.lenovo.leos.internal.app.IStartShutdownManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub;->reboot()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v5, "com.lenovo.leos.internal.app.IStartShutdownManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub;->setSystemBusy(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_1
    move v0, v4

    goto :goto_2

    :sswitch_5
    const-string v4, "com.lenovo.leos.internal.app.IStartShutdownManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub;->launcherReady()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_6
    const-string v4, "com.lenovo.leos.internal.app.IStartShutdownManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub;->poweroffAlarmAlertPrepare()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_7
    const-string v4, "com.lenovo.leos.internal.app.IStartShutdownManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub;->poweroffAlarmAlertFinish()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_8
    const-string v5, "com.lenovo.leos.internal.app.IStartShutdownManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub;->enableAutoStart(II)Z

    move-result v2

    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2

    move v4, v3

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :sswitch_9
    const-string v4, "com.lenovo.leos.internal.app.IStartShutdownManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub;->disableAutoStart()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_a
    const-string v5, "com.lenovo.leos.internal.app.IStartShutdownManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub;->isAutoStartEnable()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3

    move v4, v3

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_result:Z
    :sswitch_b
    const-string v5, "com.lenovo.leos.internal.app.IStartShutdownManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub;->enableAutoShutdown(II)Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_4

    move v4, v3

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :sswitch_c
    const-string v4, "com.lenovo.leos.internal.app.IStartShutdownManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub;->disableAutoShutdown()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_d
    const-string v5, "com.lenovo.leos.internal.app.IStartShutdownManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub;->isAutoShutdownEnable()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_5

    move v4, v3

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_result:Z
    :sswitch_e
    const-string v5, "com.lenovo.leos.internal.app.IStartShutdownManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub;->isSilentBoot()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_6

    move v4, v3

    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_result:Z
    :sswitch_f
    const-string v5, "com.lenovo.leos.internal.app.IStartShutdownManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    move v0, v3

    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub;->setSilentBoot(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_7
    move v0, v4

    goto :goto_3

    :sswitch_10
    const-string v5, "com.lenovo.leos.internal.app.IStartShutdownManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub;->isSilentShutdown()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_8

    move v4, v3

    :cond_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_result:Z
    :sswitch_11
    const-string v5, "com.lenovo.leos.internal.app.IStartShutdownManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    move v0, v3

    .restart local v0       #_arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub;->setSilentShutdown(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_9
    move v0, v4

    goto :goto_4

    :sswitch_12
    const-string v5, "com.lenovo.leos.internal.app.IStartShutdownManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager$Stub;->isBootCompleted()Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_a

    move v4, v3

    :cond_a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
