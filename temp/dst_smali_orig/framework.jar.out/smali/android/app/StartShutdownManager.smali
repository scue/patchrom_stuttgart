.class public Landroid/app/StartShutdownManager;
.super Ljava/lang/Object;
.source "StartShutdownManager.java"


# static fields
.field public static final BOOTMODE_CHARGEIN:I = 0x1

.field public static final BOOTMODE_RESET:I = 0x2

.field public static final BOOTMODE_RTC_ALARM:I = 0x3

.field public static final BOOTMODE_RTC_STARTUP:I = 0x4

.field public static final BOOTMODE_USER:I = 0x0

.field private static final FILE_MARK_BOOT_SOUND:Ljava/lang/String; = "/data/system/startup_param"

.field private static final FILE_MARK_SHUTDOWN_SOUND:Ljava/lang/String; = "/data/system/shutdown_param"


# instance fields
.field private mBootMode:I

.field private final mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/internal/app/IStartShutdownManager;)V
    .locals 1
    .parameter "service"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/StartShutdownManager;->mBootMode:I

    iput-object p1, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->getBootMode()I

    move-result v0

    iput v0, p0, Landroid/app/StartShutdownManager;->mBootMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setBootAndShutdownSoundMark(ZZ)V
    .locals 8
    .parameter "isBoot"
    .parameter "isSilent"

    .prologue
    if-eqz p1, :cond_1

    const-string v3, "/data/system/startup_param"

    .local v3, target:Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, targetFile:Ljava/io/File;
    if-eqz p2, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v1, fout:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v0, dout:Ljava/io/DataOutputStream;
    const-string v5, "silent"

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

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

    .end local v0           #dout:Ljava/io/DataOutputStream;
    .end local v1           #fout:Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    return-void

    .end local v3           #target:Ljava/lang/String;
    .end local v4           #targetFile:Ljava/io/File;
    :cond_1
    const-string v3, "/data/system/shutdown_param"

    .restart local v3       #target:Ljava/lang/String;
    goto :goto_0

    .restart local v4       #targetFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .local v2, ioe:Ljava/io/IOException;
    const-string v5, "R2"

    const-string v6, "Exception while create sound mark! "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2           #ioe:Ljava/io/IOException;
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method


# virtual methods
.method public disableAutoShutdown()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->disableAutoShutdown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disableAutoStart()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->disableAutoStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public enableAutoShutdown(II)Z
    .locals 2
    .parameter "hour"
    .parameter "minute"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v1, p1, p2}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->enableAutoShutdown(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableAutoStart(II)Z
    .locals 2
    .parameter "hour"
    .parameter "minute"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v1, p1, p2}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->enableAutoStart(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBootMode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/app/StartShutdownManager;->mBootMode:I

    return v0
.end method

.method public isAutoShutdownEnable()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v1}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->isAutoShutdownEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAutoStartEnable()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v1}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->isAutoStartEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBootCompleted()Z
    .locals 2

    .prologue
    const-string v0, "sys.power.startup_ready"

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
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/startup_param"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public isSilentShutdown()Z
    .locals 2

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/shutdown_param"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public launcherReady()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->launcherReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public poweroffAlarmAlertFinish()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->poweroffAlarmAlertFinish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public poweroffAlarmAlertPrepare()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->poweroffAlarmAlertPrepare()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reboot()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->reboot()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setSilentBoot(Z)V
    .locals 1
    .parameter "silent"

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/app/StartShutdownManager;->setBootAndShutdownSoundMark(ZZ)V

    return-void
.end method

.method public setSilentShutdown(Z)V
    .locals 1
    .parameter "silent"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/app/StartShutdownManager;->setBootAndShutdownSoundMark(ZZ)V

    return-void
.end method

.method public setSystemBusy(Z)V
    .locals 1
    .parameter "busy"

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v0, p1}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->setSystemBusy(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public shutdown(Z)V
    .locals 1
    .parameter "needConfirm"

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v0, p1}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->shutdown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
