.class Lcom/lenovo/leos/internal/server/StartShutdownPolicy$5;
.super Landroid/os/Handler;
.source "StartShutdownPolicy.java"


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
    iput-object p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$5;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$5;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mDelay:I
    invoke-static {v0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$1200(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$5;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$900(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$5;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$900(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$5;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$5;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$600(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->acquireScreenWakeLock(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$1300(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$5;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    #calls: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->showAutoShutdownAlert()V
    invoke-static {v0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$1400(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)V

    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$5;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    invoke-static {v0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$1210(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$5;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mCallback:Lcom/lenovo/leos/internal/server/StartShutdownService$ServiceCallback;
    invoke-static {v0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$1000(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)Lcom/lenovo/leos/internal/server/StartShutdownService$ServiceCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/leos/internal/server/StartShutdownService$ServiceCallback;->shutdownAction()V

    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$5;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$500(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
