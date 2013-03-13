.class Lcom/lenovo/leos/internal/server/StartShutdownService$8;
.super Landroid/telephony/PhoneStateListener;
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
    iput-object p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$8;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$8;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #setter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mPhoneState:I
    invoke-static {v0, p1}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1702(Lcom/lenovo/leos/internal/server/StartShutdownService;I)I

    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$8;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mPhoneState:I
    invoke-static {v0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1700(Lcom/lenovo/leos/internal/server/StartShutdownService;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$8;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mDataDialogShowOnEndCall:Z
    invoke-static {v0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1800(Lcom/lenovo/leos/internal/server/StartShutdownService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$8;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #calls: Lcom/lenovo/leos/internal/server/StartShutdownService;->showDataConnectionDialog()V
    invoke-static {v0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$800(Lcom/lenovo/leos/internal/server/StartShutdownService;)V

    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$8;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    const/4 v1, 0x0

    #setter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mDataDialogShowOnEndCall:Z
    invoke-static {v0, v1}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1802(Lcom/lenovo/leos/internal/server/StartShutdownService;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$8;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mDataDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1900(Lcom/lenovo/leos/internal/server/StartShutdownService;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$8;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mDataDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1900(Lcom/lenovo/leos/internal/server/StartShutdownService;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$8;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    const/4 v1, 0x1

    #setter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mDataDialogShowOnEndCall:Z
    invoke-static {v0, v1}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1802(Lcom/lenovo/leos/internal/server/StartShutdownService;Z)Z

    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$8;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    const/4 v1, 0x0

    #setter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mDataDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1902(Lcom/lenovo/leos/internal/server/StartShutdownService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "state"

    .prologue
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$8;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #calls: Lcom/lenovo/leos/internal/server/StartShutdownService;->hasService()Z
    invoke-static {v1}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1500(Lcom/lenovo/leos/internal/server/StartShutdownService;)Z

    move-result v0

    .local v0, old:Z
    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$8;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #setter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v1, p1}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1602(Lcom/lenovo/leos/internal/server/StartShutdownService;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$8;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #calls: Lcom/lenovo/leos/internal/server/StartShutdownService;->hasService()Z
    invoke-static {v1}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1500(Lcom/lenovo/leos/internal/server/StartShutdownService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$8;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #calls: Lcom/lenovo/leos/internal/server/StartShutdownService;->showDataConnectionDialog()V
    invoke-static {v1}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$800(Lcom/lenovo/leos/internal/server/StartShutdownService;)V

    :cond_0
    return-void
.end method
