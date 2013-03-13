.class Lcom/lenovo/leos/internal/server/StartShutdownService$SSThread;
.super Ljava/lang/Thread;
.source "StartShutdownService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/internal/server/StartShutdownService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SSThread"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFactoryTest:I

.field mService:Lcom/lenovo/leos/internal/server/StartShutdownService;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    const-string v0, "StartShutdownService"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$SSThread;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$SSThread;->mFactoryTest:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/lenovo/leos/internal/server/StartShutdownService;

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$SSThread;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$SSThread;->mFactoryTest:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/internal/server/StartShutdownService;-><init>(Landroid/content/Context;I)V

    .local v0, s:Lcom/lenovo/leos/internal/server/StartShutdownService;
    const/4 v1, -0x4

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    monitor-enter p0

    :try_start_0
    iput-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$SSThread;->mService:Lcom/lenovo/leos/internal/server/StartShutdownService;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
