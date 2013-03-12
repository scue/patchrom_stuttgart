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
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/StartShutdownManager;->mBootMode:I

    .line 31
    iput-object p1, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    .line 33
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->getBootMode()I

    move-result v0

    iput v0, p0, Landroid/app/StartShutdownManager;->mBootMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setBootAndShutdownSoundMark(ZZ)V
    .locals 8
    .parameter "isBoot"
    .parameter "isSilent"

    .prologue
    .line 84
    if-eqz p1, :cond_1

    .line 85
    const-string v3, "/data/system/startup_param"

    .line 89
    .local v3, target:Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v4, targetFile:Ljava/io/File;
    if-eqz p2, :cond_2

    .line 91
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 93
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 94
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 95
    .local v1, fout:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 96
    .local v0, dout:Ljava/io/DataOutputStream;
    const-string/jumbo v5, "silent"

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 98
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

    .line 108
    .end local v0           #dout:Ljava/io/DataOutputStream;
    .end local v1           #fout:Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    return-void

    .line 87
    .end local v3           #target:Ljava/lang/String;
    .end local v4           #targetFile:Ljava/io/File;
    :cond_1
    const-string v3, "/data/system/shutdown_param"

    .restart local v3       #target:Ljava/lang/String;
    goto :goto_0

    .line 99
    .restart local v4       #targetFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 100
    .local v2, ioe:Ljava/io/IOException;
    const-string v5, "R2"

    const-string v6, "Exception while create sound mark! "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 104
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method


# virtual methods
.method public disableAutoShutdown()V
    .locals 1

    .prologue
    .line 181
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->disableAutoShutdown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disableAutoStart()V
    .locals 1

    .prologue
    .line 158
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->disableAutoStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public enableAutoShutdown(II)Z
    .locals 2
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 173
    :try_start_0
    iget-object v1, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v1, p1, p2}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->enableAutoShutdown(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 175
    :goto_0
    return v1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableAutoStart(II)Z
    .locals 2
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v1, p1, p2}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->enableAutoStart(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 152
    :goto_0
    return v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBootMode()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Landroid/app/StartShutdownManager;->mBootMode:I

    return v0
.end method

.method public isAutoShutdownEnable()Z
    .locals 2

    .prologue
    .line 188
    :try_start_0
    iget-object v1, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v1}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->isAutoShutdownEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 190
    :goto_0
    return v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAutoStartEnable()Z
    .locals 2

    .prologue
    .line 165
    :try_start_0
    iget-object v1, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v1}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->isAutoStartEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 167
    :goto_0
    return v1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBootCompleted()Z
    .locals 2

    .prologue
    .line 43
    const-string/jumbo v0, "sys.power.startup_ready"

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
    .line 65
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/startup_param"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public isSilentShutdown()Z
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/shutdown_param"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public launcherReady()V
    .locals 1

    .prologue
    .line 129
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->launcherReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public poweroffAlarmAlertFinish()V
    .locals 1

    .prologue
    .line 143
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->poweroffAlarmAlertFinish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public poweroffAlarmAlertPrepare()V
    .locals 1

    .prologue
    .line 136
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->poweroffAlarmAlertPrepare()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reboot()V
    .locals 1

    .prologue
    .line 55
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v0}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->reboot()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setSilentBoot(Z)V
    .locals 1
    .parameter "silent"

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/app/StartShutdownManager;->setBootAndShutdownSoundMark(ZZ)V

    .line 71
    return-void
.end method

.method public setSilentShutdown(Z)V
    .locals 1
    .parameter "silent"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/app/StartShutdownManager;->setBootAndShutdownSoundMark(ZZ)V

    .line 80
    return-void
.end method

.method public setSystemBusy(Z)V
    .locals 1
    .parameter "busy"

    .prologue
    .line 122
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v0, p1}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->setSystemBusy(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public shutdown(Z)V
    .locals 1
    .parameter "needConfirm"

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Lcom/lenovo/leos/internal/app/IStartShutdownManager;

    invoke-interface {v0, p1}, Lcom/lenovo/leos/internal/app/IStartShutdownManager;->shutdown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    goto :goto_0
.end method
