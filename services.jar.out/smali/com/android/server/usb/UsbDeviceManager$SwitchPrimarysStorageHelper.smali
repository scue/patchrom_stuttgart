.class public Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SwitchPrimarysStorageHelper"
.end annotation


# static fields
.field public static final ACTION_EXRTA_RECOMMEND_SWITCH:Ljava/lang/String; = "recommend_switch"

.field public static final ACTION_EXTRA_SDCARD_MISSING:Ljava/lang/String; = "sdcard_missing"

.field public static final PROPERTY_CID_NONE:Ljava/lang/String; = "0"

.field public static final PROPERTY_CID_POSITION:I = 0x1

.field public static final PROPERTY_PRIMARY_EMMC:Ljava/lang/String; = "emmc"

.field public static final PROPERTY_PRIMARY_NONE:Ljava/lang/String; = "none"

.field public static final PROPERTY_PRIMARY_POSITION:I = 0x0

.field public static final PROPERTY_PRIMARY_SDCARD:Ljava/lang/String; = "sdcard"

.field public static final SAME_SDCARD_PROPERTY:Ljava/lang/String; = "sys.storage.same_sdcard"

.field public static final SWITCH_STORAGE_PROPERTY:Ljava/lang/String; = "persist.sys.switch_storage"


# instance fields
.field public final RECOMMEND_THRESHOLD_SIZE:J

.field private mPrimary:Ljava/lang/String;

.field private mPrimarySdcardMissing:Z

.field private mSameSdcard:Z

.field private mSdcardCid:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 941
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 934
    const-wide/32 v4, 0x40000000

    iput-wide v4, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->RECOMMEND_THRESHOLD_SIZE:J

    .line 942
    const-string v4, "persist.sys.switch_storage"

    const-string v5, "none,0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 943
    .local v0, property:Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 944
    .local v1, property_value:[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 945
    aget-object v4, v1, v3

    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mPrimary:Ljava/lang/String;

    .line 946
    aget-object v4, v1, v2

    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mSdcardCid:Ljava/lang/String;

    .line 951
    :goto_0
    const-string v4, "sys.storage.same_sdcard"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mSameSdcard:Z

    .line 952
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mPrimary:Ljava/lang/String;

    const-string v5, "sdcard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->isSdcardInserted()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mSameSdcard:Z

    if-nez v4, :cond_2

    :cond_0
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mPrimarySdcardMissing:Z

    .line 955
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SwitchHelper - primary : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mPrimary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | sdcard cid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mSdcardCid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | same sdcard : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mSameSdcard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    return-void

    .line 948
    :cond_1
    const-string v4, "none"

    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mPrimary:Ljava/lang/String;

    .line 949
    const-string v4, "0"

    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mSdcardCid:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v2, v3

    .line 952
    goto :goto_1
.end method

.method private isSdcardLarger()Z
    .locals 15

    .prologue
    .line 1029
    const/4 v0, 0x1

    .line 1030
    .local v0, EMMC_IDX:I
    const/4 v1, 0x0

    .line 1031
    .local v1, SDCARD_IDX:I
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mPrimary:Ljava/lang/String;

    const-string v12, "sdcard"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->isSdcardInserted()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1032
    const/4 v0, 0x1

    .line 1033
    const/4 v1, 0x0

    .line 1038
    :goto_0
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$700(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v11

    const-string v12, "storage"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/StorageManager;

    .line 1039
    .local v10, sm:Landroid/os/storage/StorageManager;
    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/usb/UsbDeviceManager;->access$700(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1040
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-virtual {v10}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v6

    .line 1041
    .local v6, paths:[Ljava/lang/String;
    new-instance v5, Landroid/os/StatFs;

    aget-object v11, v6, v0

    invoke-direct {v5, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1042
    .local v5, emmcStat:Landroid/os/StatFs;
    new-instance v9, Landroid/os/StatFs;

    aget-object v11, v6, v1

    invoke-direct {v9, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1043
    .local v9, sdcardStat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v13

    int-to-long v13, v13

    mul-long v3, v11, v13

    .line 1044
    .local v3, emmcSize:J
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockCount()I

    move-result v13

    int-to-long v13, v13

    mul-long v7, v11, v13

    .line 1045
    .local v7, sdcardSize:J
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SwitchHelper - emmcSize: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " | sdcardSize: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " | threshold: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-wide/32 v13, 0x40000000

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const-wide/32 v11, 0x40000000

    add-long/2addr v11, v3

    cmp-long v11, v7, v11

    if-lez v11, :cond_1

    const/4 v11, 0x1

    :goto_1
    return v11

    .line 1035
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v3           #emmcSize:J
    .end local v5           #emmcStat:Landroid/os/StatFs;
    .end local v6           #paths:[Ljava/lang/String;
    .end local v7           #sdcardSize:J
    .end local v9           #sdcardStat:Landroid/os/StatFs;
    .end local v10           #sm:Landroid/os/storage/StorageManager;
    :cond_0
    const/4 v0, 0x0

    .line 1036
    const/4 v1, 0x1

    goto :goto_0

    .line 1049
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v3       #emmcSize:J
    .restart local v5       #emmcStat:Landroid/os/StatFs;
    .restart local v6       #paths:[Ljava/lang/String;
    .restart local v7       #sdcardSize:J
    .restart local v9       #sdcardStat:Landroid/os/StatFs;
    .restart local v10       #sm:Landroid/os/storage/StorageManager;
    :cond_1
    const/4 v11, 0x0

    goto :goto_1
.end method


# virtual methods
.method public isSdcardInserted()Z
    .locals 2

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mSdcardCid:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resetPrimarySdcardMissing()V
    .locals 2

    .prologue
    .line 966
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mPrimarySdcardMissing:Z

    if-eqz v0, :cond_0

    .line 967
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SwitchHelper - primary sdcard missing, reset to emmc"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const-string v0, "persist.sys.switch_storage"

    const-string v1, "emmc,0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    :cond_0
    return-void
.end method

.method public updatePrimarySdcardMissing()V
    .locals 4

    .prologue
    .line 974
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mPrimarySdcardMissing:Z

    if-eqz v1, :cond_0

    .line 975
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 976
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.deviceinfo.SwitchPrimaryStorageActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 978
    const-string v1, "sdcard_missing"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 979
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 980
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$700(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 982
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public declared-synchronized updateRecommendNotification()V
    .locals 12

    .prologue
    .line 985
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mPrimary:Ljava/lang/String;

    const-string v10, "sdcard"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->isSdcardInserted()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->mSameSdcard:Z

    if-nez v9, :cond_0

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->isSdcardLarger()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_1

    .line 1026
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 992
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v9

    if-nez v9, :cond_2

    .line 993
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManager;->access$700(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v9

    const-string v11, "notification"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    #setter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v10, v9}, Lcom/android/server/usb/UsbDeviceManager;->access$1502(Lcom/android/server/usb/UsbDeviceManager;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    .line 996
    :cond_2
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v9

    if-nez v9, :cond_3

    .line 997
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v9

    const-string v10, "SwitchHelper - cannot send notification, NotificationManager is unavailable"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 985
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1001
    :cond_3
    const v8, 0x10404f6

    .line 1002
    .local v8, titleId:I
    const v3, 0x10404f7

    .line 1003
    .local v3, messageId:I
    const v0, 0x10800ab

    .line 1005
    .local v0, iconId:I
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1006
    .local v1, intent:Landroid/content/Intent;
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.android.settings"

    const-string v11, "com.android.settings.deviceinfo.SwitchPrimaryStorageActivity"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1008
    const-string v9, "recommend_switch"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1009
    const/high16 v9, 0x1000

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1011
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManager;->access$700(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    const/high16 v11, 0x800

    invoke-static {v9, v10, v1, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1014
    .local v5, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 1015
    .local v6, r:Landroid/content/res/Resources;
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1016
    .local v7, title:Ljava/lang/CharSequence;
    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1018
    .local v2, message:Ljava/lang/CharSequence;
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 1019
    .local v4, notification:Landroid/app/Notification;
    iput v0, v4, Landroid/app/Notification;->icon:I

    .line 1020
    iput-object v7, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1021
    const-wide/16 v9, 0x0

    iput-wide v9, v4, Landroid/app/Notification;->when:J

    .line 1022
    const/16 v9, 0x10

    iput v9, v4, Landroid/app/Notification;->flags:I

    .line 1023
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManager;->access$700(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v4, v9, v7, v2, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1024
    iput-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1025
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$SwitchPrimarysStorageHelper;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v9

    invoke-virtual {v9, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
