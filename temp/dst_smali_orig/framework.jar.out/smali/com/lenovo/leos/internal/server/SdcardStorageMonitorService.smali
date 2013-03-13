.class public Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;
.super Ljava/lang/Object;
.source "SdcardStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SdcardStorageMonitorService"

.field static final localLOGV:Z

.field static sInstance:Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStorageList:[Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->getStorageManager()V

    iget-object v3, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v2

    .local v2, volume_paths:[Ljava/lang/String;
    array-length v1, v2

    .local v1, length:I
    new-array v3, v1, [Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;

    iput-object v3, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->mStorageList:[Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v4, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->mStorageList:[Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;

    new-instance v5, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;

    aget-object v6, v2, v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-direct {v5, p0, v6, v3}, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;-><init>(Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;Ljava/lang/String;Z)V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;
    .locals 1
    .parameter "context"

    .prologue
    sget-object v0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->sInstance:Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->sInstance:Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;

    :cond_0
    sget-object v0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->sInstance:Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;

    return-object v0
.end method

.method private getStorageManager()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->mStorageManager:Landroid/os/storage/StorageManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public checkSdcardMemory()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->getStorageManager()V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->mStorageList:[Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->mStorageList:[Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->checkMemory(Landroid/os/storage/StorageManager;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public checkSdcardMemory(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    invoke-direct {p0}, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->getStorageManager()V

    iget-object v0, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->mStorageList:[Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;

    .local v0, arr$:[Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, s:Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;
    invoke-virtual {v3}, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v4}, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;->checkMemory(Landroid/os/storage/StorageManager;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #s:Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService$StorageStatFs;
    :cond_1
    return-void
.end method
