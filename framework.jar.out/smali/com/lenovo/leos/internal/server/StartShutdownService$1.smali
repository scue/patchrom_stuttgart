.class Lcom/lenovo/leos/internal/server/StartShutdownService$1;
.super Ljava/lang/Object;
.source "StartShutdownService.java"

# interfaces
.implements Lcom/lenovo/leos/internal/server/StartShutdownService$ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/internal/server/StartShutdownService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/internal/server/StartShutdownService;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$1;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shutdownAction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 173
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$1;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$000(Lcom/lenovo/leos/internal/server/StartShutdownService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$1;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$000(Lcom/lenovo/leos/internal/server/StartShutdownService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 174
    return-void
.end method
