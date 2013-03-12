.class Lcom/lenovo/leos/internal/server/StartShutdownPolicy$4;
.super Ljava/lang/Object;
.source "StartShutdownPolicy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/internal/server/StartShutdownPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$4;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$4;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    #calls: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->releaseScreenWakeLock()V
    invoke-static {v0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$1100(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)V

    .line 392
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$4;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$900(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 393
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$4;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    const/4 v1, 0x0

    #setter for: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$502(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 394
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$4;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    const/16 v1, 0x1e

    #setter for: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mDelay:I
    invoke-static {v0, v1}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$1202(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;I)I

    .line 395
    return-void
.end method
