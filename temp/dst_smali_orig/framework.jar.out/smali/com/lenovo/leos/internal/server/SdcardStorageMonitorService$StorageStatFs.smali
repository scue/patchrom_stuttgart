.class Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;
.super Ljava/lang/Object;
.source "SdcardStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageStatFs"
.end annotation


# static fields
.field private static final DEFAULT_SDCARD_LOW_FREE_MEMORY_THRESHOLD:J = 0xc800L


# instance fields
.field private mBlkSize:J

.field private mFreeMem:J

.field private mIsPrimaryVolume:Z

.field private mLowMemFlag:Z

.field private mStats:Landroid/os/StatFs;

.field private mStorageLowMemNotification:Landroid/app/Notification;

.field private mVolumePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter "path"
    .parameter "isprimary"

    .prologue
    iput-object p1, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->this$0:Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mLowMemFlag:Z

    iput-object p2, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mVolumePath:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mIsPrimaryVolume:Z

    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mVolumePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mStats:Landroid/os/StatFs;

    iget-object v0, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mStats:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mBlkSize:J

    return-void
.end method

.method private getSdcardMemThreshold()J
    .locals 2

    .prologue
    const-wide/32 v0, 0xc800

    .local v0, value:J
    return-wide v0
.end method

.method private final restatSdcardDir()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mStats:Landroid/os/StatFs;

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mVolumePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mStats:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mBlkSize:J

    iget-object v0, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mStats:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mBlkSize:J

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mFreeMem:J

    return-void
.end method

.method private sendOrCancelSdcardNotification()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v3, 0x108007b

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mIsPrimaryVolume:Z

    if-eqz v0, :cond_0

    const v1, 0x10404fe

    const v2, 0x10404ff

    iget-boolean v5, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mLowMemFlag:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->setStorageLowMemNotification(IIIZZLandroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_0
    const v1, 0x1040500

    const v2, 0x1040501

    iget-boolean v5, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mLowMemFlag:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->setStorageLowMemNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private declared-synchronized setStorageLowMemNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 8
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "sound"
    .parameter "visible"
    .parameter "pi"

    .prologue
    monitor-enter p0

    if-nez p5, :cond_1

    :try_start_0
    iget-object v5, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mStorageLowMemNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->this$0:Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;

    #getter for: Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->access$000(Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .local v3, notificationManager:Landroid/app/NotificationManager;
    if-eqz v3, :cond_0

    if-eqz p5, :cond_4

    iget-object v5, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->this$0:Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;

    #getter for: Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->access$000(Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, title:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->this$0:Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;

    #getter for: Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->access$000(Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, message:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mStorageLowMemNotification:Landroid/app/Notification;

    if-nez v5, :cond_2

    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mStorageLowMemNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mStorageLowMemNotification:Landroid/app/Notification;

    iput p3, v5, Landroid/app/Notification;->icon:I

    iget-object v5, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mStorageLowMemNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    :cond_2
    if-eqz p4, :cond_5

    iget-object v5, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mStorageLowMemNotification:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->defaults:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroid/app/Notification;->defaults:I

    :goto_1
    iget-object v5, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mStorageLowMemNotification:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v5, Landroid/app/Notification;->flags:I

    iget-object v5, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mStorageLowMemNotification:Landroid/app/Notification;

    iput-object v4, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-nez p6, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->this$0:Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;

    #getter for: Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->access$000(Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v5, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mStorageLowMemNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->this$0:Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;

    #getter for: Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->access$000(Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v1, p6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .end local v1           #message:Ljava/lang/CharSequence;
    .end local v4           #title:Ljava/lang/CharSequence;
    :cond_4
    move v2, p1

    .local v2, notificationId:I
    if-eqz p5, :cond_6

    iget-object v5, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mStorageLowMemNotification:Landroid/app/Notification;

    invoke-virtual {v3, v2, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v2           #notificationId:I
    .end local v3           #notificationManager:Landroid/app/NotificationManager;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .restart local v1       #message:Ljava/lang/CharSequence;
    .restart local v3       #notificationManager:Landroid/app/NotificationManager;
    .restart local v4       #title:Ljava/lang/CharSequence;
    :cond_5
    :try_start_2
    iget-object v5, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mStorageLowMemNotification:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/app/Notification;->defaults:I

    goto :goto_1

    .end local v1           #message:Ljava/lang/CharSequence;
    .end local v4           #title:Ljava/lang/CharSequence;
    .restart local v2       #notificationId:I
    :cond_6
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public checkMemory(Landroid/os/storage/StorageManager;)V
    .locals 7
    .parameter "storageManager"

    .prologue
    const/4 v6, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mVolumePath:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, status:Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->restatSdcardDir()V

    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->getSdcardMemThreshold()J

    move-result-wide v1

    .local v1, memSdcardThreshold:J
    iget-wide v4, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mFreeMem:J

    cmp-long v4, v4, v1

    if-gez v4, :cond_1

    iget-boolean v4, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mLowMemFlag:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mLowMemFlag:Z

    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->sendOrCancelSdcardNotification()V

    .end local v1           #memSdcardThreshold:J
    .end local v3           #status:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "SdcardStorageMonitorService"

    const-string v5, "checkMemory() ---> storageManager.getVolumeState() exception"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #memSdcardThreshold:J
    .restart local v3       #status:Ljava/lang/String;
    :cond_1
    iget-boolean v4, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mLowMemFlag:Z

    if-eqz v4, :cond_0

    iput-boolean v6, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mLowMemFlag:Z

    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->sendOrCancelSdcardNotification()V

    goto :goto_0

    .end local v1           #memSdcardThreshold:J
    :cond_2
    invoke-virtual {p0, v6}, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->setLowMemFlag(Z)V

    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->sendOrCancelSdcardNotification()V

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mVolumePath:Ljava/lang/String;

    return-object v0
.end method

.method public isLowMemory()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mLowMemFlag:Z

    return v0
.end method

.method public setLowMemFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    iput-boolean p1, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->mLowMemFlag:Z

    return-void
.end method
