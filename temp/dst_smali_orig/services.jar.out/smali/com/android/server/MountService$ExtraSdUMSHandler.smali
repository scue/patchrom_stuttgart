.class Lcom/android/server/MountService$ExtraSdUMSHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExtraSdUMSHandler"
.end annotation


# static fields
.field private static final EXTRASD_WAIT_DELAY:I = 0x64

.field private static final EXTRASD_WAIT_RETRIES:I = 0x28

.field private static final H_UMS_EXCEPTION_CANCELED:I = 0x2

.field private static final H_UNMOUNT_PM_UPDATE_EXTRASD_OK:I = 0x0

.field private static final H_UNMOUNT_PM_UPDATE_EXTRASD_WAIT:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "l"

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$ExtraSdUMSHandler;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v5, 0x28

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/android/server/MountService$UmsEnableCallBack;

    iget-object v3, p0, Lcom/android/server/MountService$ExtraSdUMSHandler;->this$0:Lcom/android/server/MountService;

    iget-object v4, p0, Lcom/android/server/MountService$ExtraSdUMSHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ums"

    invoke-direct {v0, v3, v4, v5, v7}, Lcom/android/server/MountService$UmsEnableCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .local v0, umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    iget-object v3, p0, Lcom/android/server/MountService$ExtraSdUMSHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/MountService$ExtraSdUMSHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "H_UNMOUNT_PM_UPDATE of INNER SD will be sended; ExtraSD has been unmounted, retried count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/server/MountService;->access$500()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/server/MountService;->access$502(I)I

    goto :goto_0

    .end local v0           #umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    :pswitch_1
    invoke-static {}, Lcom/android/server/MountService;->access$508()I

    iget-object v3, p0, Lcom/android/server/MountService$ExtraSdUMSHandler;->this$0:Lcom/android/server/MountService;

    iget-object v4, p0, Lcom/android/server/MountService$ExtraSdUMSHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mExternalStorageExtraSdPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, vsExtraSd:Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "checking"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/server/MountService;->access$500()I

    move-result v3

    if-ne v3, v5, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/server/MountService$ExtraSdUMSHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mExtraSdUMSHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Lcom/android/server/MountService;->access$500()I

    move-result v3

    if-ne v3, v5, :cond_0

    const-string v3, "MountService"

    const-string v4, "H_UNMOUNT_PM_UPDATE of INNER SD will be sended; ExtraSD waiting timeout"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/MountService$ExtraSdUMSHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mExtraSdUMSHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/MountService$ExtraSdUMSHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mExtraSdUMSHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v3, "MountService"

    const-string v4, "H_UNMOUNT_PM_UPDATE send delay 100"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2           #vsExtraSd:Ljava/lang/String;
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/MountService$ExtraSdUMSHandler;->this$0:Lcom/android/server/MountService;

    iget-object v4, p0, Lcom/android/server/MountService$ExtraSdUMSHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, vs:Ljava/lang/String;
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "H_UMS_EXCEPTION_CANCELED check the cable and prepare remount, sd state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "shared"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/MountService$ExtraSdUMSHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mUmsAvailable:Z
    invoke-static {v3}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "MountService"

    const-string v4, "UMSExceptionCanceled USB cable is plug-out, cancel the UMS operation--remount again"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/MountService$ExtraSdUMSHandler;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V
    invoke-static {v3, v6}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;Z)V

    :goto_1
    iget-object v3, p0, Lcom/android/server/MountService$ExtraSdUMSHandler;->this$0:Lcom/android/server/MountService;

    #setter for: Lcom/android/server/MountService;->UMSExceptionCanceled:Z
    invoke-static {v3, v6}, Lcom/android/server/MountService;->access$1002(Lcom/android/server/MountService;Z)Z

    goto/16 :goto_0

    :cond_4
    const-string v3, "MountService"

    const-string v4, "UMSExceptionCanceled USB cable is plug-out while UMS is enabling, but plug-in again in time"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v3, "MountService"

    const-string v4, "UMSExceptionCanceled USB cable is plug-out, cancel the UMS operation wait for status of inner SD being changed to shared"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
