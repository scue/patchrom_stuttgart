.class Lcom/android/internal/policy/impl/KeyguardViewMediator$2;
.super Landroid/os/Handler;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1017
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1066
    :goto_0
    :pswitch_0
    return-void

    .line 1019
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$600(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V

    goto :goto_0

    .line 1022
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleAsyncAcquire(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V

    goto :goto_0

    .line 1025
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleAsyncTimeout()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1028
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleShow()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1031
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleHide()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1034
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleReset()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1037
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleVerifyUnlock()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1040
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleNotifyScreenOff()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1043
    :pswitch_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1400(Lcom/android/internal/policy/impl/KeyguardViewMediator;Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    goto :goto_0

    .line 1046
    :pswitch_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleWakeWhenReady(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1500(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V

    goto :goto_0

    .line 1049
    :pswitch_b
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    :goto_1
    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleKeyguardDone(Z)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1600(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 1052
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleKeyguardDoneDrawing()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1700(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1055
    :pswitch_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->keyguardDone(Z)V

    goto :goto_0

    .line 1058
    :pswitch_e
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    :goto_2
    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleSetHidden(Z)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1800(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 1061
    :pswitch_f
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    monitor-enter v1

    .line 1062
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1063
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1017
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
