.class Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager$1;
.super Landroid/os/Handler;
.source "VideoTelephonyInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x0

    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v10, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    .local v4, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->isVoiceCall()Z

    move-result v10

    if-nez v10, :cond_0

    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .local v5, cs:Lcom/android/internal/telephony/Call$State;
    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;

    const/16 v11, 0x78

    #calls: Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onVTCallResult(I)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->access$000(Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;I)V

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    .local v8, s:Lcom/android/internal/telephony/Phone$State;
    sget-object v10, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v8, v10, :cond_3

    iget-object v10, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;

    #setter for: Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mConnection:Lcom/android/internal/telephony/Connection;
    invoke-static {v10, v12}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->access$102(Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/Connection;

    const/16 v9, 0xa

    .local v9, state:I
    :goto_1
    iget-object v10, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;

    #getter for: Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->access$200(Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v10}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, N:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v0, :cond_5

    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v10, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;

    invoke-interface {v10, v9}, Lcom/android/internal/telephony/videotelephony/IVideoTelephonyListener;->onStateChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v0           #N:I
    .end local v7           #i:I
    .end local v9           #state:I
    :cond_3
    sget-object v10, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v8, v10, :cond_4

    const/16 v9, 0xb

    .restart local v9       #state:I
    goto :goto_1

    .end local v9           #state:I
    :cond_4
    const/16 v9, 0xc

    .restart local v9       #state:I
    goto :goto_1

    .restart local v0       #N:I
    .restart local v7       #i:I
    :catch_0
    move-exception v6

    .local v6, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v10, "VideoTelephonynterfaceManager"

    const-string v12, "Error to broadcast phone stated changed."

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v0           #N:I
    .end local v6           #e:Landroid/os/RemoteException;
    .end local v7           #i:I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .restart local v0       #N:I
    .restart local v7       #i:I
    :cond_5
    :try_start_3
    iget-object v10, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v10}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0           #N:I
    .end local v4           #conn:Lcom/android/internal/telephony/Connection;
    .end local v5           #cs:Lcom/android/internal/telephony/Call$State;
    .end local v7           #i:I
    .end local v8           #s:Lcom/android/internal/telephony/Phone$State;
    .end local v9           #state:I
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .local v1, ar1:Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .local v2, c1:Lcom/android/internal/telephony/Connection;
    if-nez v2, :cond_6

    iget-object v10, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;

    #getter for: Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mConnection:Lcom/android/internal/telephony/Connection;
    invoke-static {v10}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->access$100(Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;)Lcom/android/internal/telephony/Connection;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;

    const/16 v11, 0x79

    #calls: Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onVTCallResult(I)V
    invoke-static {v10, v11}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->access$000(Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;I)V

    iget-object v10, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;

    #setter for: Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mConnection:Lcom/android/internal/telephony/Connection;
    invoke-static {v10, v12}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->access$102(Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/Connection;

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isVoiceCall()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v3

    .local v3, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    iget-object v10, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;

    #calls: Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->onDisconnected(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    invoke-static {v10, v3}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->access$300(Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    iget-object v10, p0, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager$1;->this$0:Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;

    #setter for: Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->mConnection:Lcom/android/internal/telephony/Connection;
    invoke-static {v10, v12}, Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;->access$102(Lcom/android/internal/telephony/videotelephony/VideoTelephonyInterfaceManager;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/Connection;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
