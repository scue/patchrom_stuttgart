.class Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "RuimSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_0

    const/4 v3, 0x1

    :cond_0
    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z
    invoke-static {v5, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Z)Z

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_1
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    #calls: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    invoke-static {v6, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v5, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$202(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const-string v5, "Cannot load Sms records"

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_3
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_3

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v2, v0

    .local v2, iArray:[I
    array-length v3, v2

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const/4 v5, 0x0

    aget v5, v2, v5

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mIndexOnICC:I
    invoke-static {v3, v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$402(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;I)I

    .end local v2           #iArray:[I
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v3

    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_4
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    #setter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSmsp:[B
    invoke-static {v5, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$502(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;[B)[B

    const-string v3, "SimSmsInterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "linda ====== EVENT_LOAD_SMSC_DONE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4

    goto/16 :goto_0

    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v3

    :cond_4
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    const-string v5, "Cannot get smsc address"

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
