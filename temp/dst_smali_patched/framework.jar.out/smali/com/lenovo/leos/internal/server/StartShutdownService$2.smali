.class Lcom/lenovo/leos/internal/server/StartShutdownService$2;
.super Landroid/os/Handler;
.source "StartShutdownService.java"


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
    iput-object p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$2;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$2;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mPolicy:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;
    invoke-static {v1}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$100(Lcom/lenovo/leos/internal/server/StartShutdownService;)Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$2;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mPolicy:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;
    invoke-static {v1}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$100(Lcom/lenovo/leos/internal/server/StartShutdownService;)Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->enableAutoStart(II)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$2;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mPolicy:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;
    invoke-static {v1}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$100(Lcom/lenovo/leos/internal/server/StartShutdownService;)Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$2;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mPolicy:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;
    invoke-static {v1}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$100(Lcom/lenovo/leos/internal/server/StartShutdownService;)Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->disableAutoStart()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$2;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mPolicy:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;
    invoke-static {v1}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$100(Lcom/lenovo/leos/internal/server/StartShutdownService;)Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$2;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mPolicy:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;
    invoke-static {v1}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$100(Lcom/lenovo/leos/internal/server/StartShutdownService;)Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->enableAutoShutdown(II)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$2;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mPolicy:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;
    invoke-static {v1}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$100(Lcom/lenovo/leos/internal/server/StartShutdownService;)Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$2;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mPolicy:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;
    invoke-static {v1}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$100(Lcom/lenovo/leos/internal/server/StartShutdownService;)Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->disableAutoShutdown()V

    goto :goto_0

    :pswitch_5
    const-string v2, "StartShutdownService"

    const-string v3, "shutdown device.."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$2;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mState:Lcom/lenovo/leos/internal/server/StartShutdownService$State;
    invoke-static {v2}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$200(Lcom/lenovo/leos/internal/server/StartShutdownService;)Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    move-result-object v2

    sget-object v3, Lcom/lenovo/leos/internal/server/StartShutdownService$State;->Idle:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$2;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mSystemBusy:Z
    invoke-static {v2}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$300(Lcom/lenovo/leos/internal/server/StartShutdownService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .local v0, confirm:Z
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$2;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$400(Lcom/lenovo/leos/internal/server/StartShutdownService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$2;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    sget-object v2, Lcom/lenovo/leos/internal/server/StartShutdownService$State;->Shutdown:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    #setter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mState:Lcom/lenovo/leos/internal/server/StartShutdownService$State;
    invoke-static {v1, v2}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$202(Lcom/lenovo/leos/internal/server/StartShutdownService;Lcom/lenovo/leos/internal/server/StartShutdownService$State;)Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    goto :goto_0

    .end local v0           #confirm:Z
    :cond_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$2;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mState:Lcom/lenovo/leos/internal/server/StartShutdownService$State;
    invoke-static {v2}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$200(Lcom/lenovo/leos/internal/server/StartShutdownService;)Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    move-result-object v2

    sget-object v3, Lcom/lenovo/leos/internal/server/StartShutdownService$State;->Notify:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$2;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$400(Lcom/lenovo/leos/internal/server/StartShutdownService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$2;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    sget-object v2, Lcom/lenovo/leos/internal/server/StartShutdownService$State;->Shutdown:Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    #setter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mState:Lcom/lenovo/leos/internal/server/StartShutdownService$State;
    invoke-static {v1, v2}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$202(Lcom/lenovo/leos/internal/server/StartShutdownService;Lcom/lenovo/leos/internal/server/StartShutdownService$State;)Lcom/lenovo/leos/internal/server/StartShutdownService$State;

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$2;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #calls: Lcom/lenovo/leos/internal/server/StartShutdownService;->showAlarmBackground()V
    invoke-static {v1}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$500(Lcom/lenovo/leos/internal/server/StartShutdownService;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$2;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #calls: Lcom/lenovo/leos/internal/server/StartShutdownService;->handleLauncherReady()V
    invoke-static {v1}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$600(Lcom/lenovo/leos/internal/server/StartShutdownService;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v2, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$2;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$400(Lcom/lenovo/leos/internal/server/StartShutdownService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "poweroff_alarm_reboot"

    invoke-static {v2, v3, v1}, Lcom/android/internal/app/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
