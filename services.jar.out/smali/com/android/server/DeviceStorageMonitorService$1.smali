.class Lcom/android/server/DeviceStorageMonitorService$1;
.super Landroid/os/Handler;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceStorageMonitorService;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 124
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v1, :cond_1

    .line 125
    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_0

    :goto_0
    #calls: Lcom/android/server/DeviceStorageMonitorService;->checkMemory(Z)V
    invoke-static {v2, v1}, Lcom/android/server/DeviceStorageMonitorService;->access$000(Lcom/android/server/DeviceStorageMonitorService;Z)V

    .line 126
    invoke-static {}, Lcom/android/server/DeviceStorageMonitorService;->access$100()Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->checkSdcardMemory()V

    .line 136
    :goto_1
    return-void

    .line 125
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 127
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 128
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 130
    .local v0, path:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/DeviceStorageMonitorService;->access$100()Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/leos/internal/server/SdcardStorageMonitorService;->checkSdcardMemory(Ljava/lang/String;)V

    goto :goto_1

    .line 133
    .end local v0           #path:Ljava/lang/String;
    :cond_2
    const-string v1, "DeviceStorageMonitorService"

    const-string v2, "Will not process invalid message"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
