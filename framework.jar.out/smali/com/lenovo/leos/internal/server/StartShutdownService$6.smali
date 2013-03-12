.class Lcom/lenovo/leos/internal/server/StartShutdownService$6;
.super Landroid/content/BroadcastReceiver;
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
    .line 716
    iput-object p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$6;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 718
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 720
    const-string/jumbo v6, "ss"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 722
    .local v2, stateExtra:Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$6;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mSimReady:Z
    invoke-static {v6}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$900(Lcom/lenovo/leos/internal/server/StartShutdownService;)Z

    move-result v1

    .line 723
    .local v1, old:Z
    const-string v6, "IccCard_INTENT_VALUE_ICC_CARD_IO_ERROR"

    invoke-static {v6}, Lcom/lenovo/leos/internal/server/StartShutdownService;->getConstValueByModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 724
    .local v3, strIccCardIOState:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v0, v4

    .line 726
    .local v0, isIccCardIOError:Z
    :goto_0
    iget-object v6, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$6;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    const-string v7, "ABSENT"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez v0, :cond_0

    const-string v7, "LOCKED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v4

    :cond_0
    #setter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mSimReady:Z
    invoke-static {v6, v5}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$902(Lcom/lenovo/leos/internal/server/StartShutdownService;Z)Z

    .line 729
    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$6;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mSimReady:Z
    invoke-static {v5}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$900(Lcom/lenovo/leos/internal/server/StartShutdownService;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 730
    iget-object v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$6;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #calls: Lcom/lenovo/leos/internal/server/StartShutdownService;->showDataConnectionDialog()V
    invoke-static {v5}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$800(Lcom/lenovo/leos/internal/server/StartShutdownService;)V

    .line 733
    :cond_1
    const-string v5, "READY"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 734
    iget-object v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$6;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #setter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mSimReadyOnce:Z
    invoke-static {v5, v4}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1002(Lcom/lenovo/leos/internal/server/StartShutdownService;Z)Z

    .line 737
    :cond_2
    const-string v5, "ABSENT"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 738
    invoke-static {}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1100()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    invoke-static {}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1100()I

    move-result v5

    if-eq v5, v4, :cond_3

    iget-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$6;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #calls: Lcom/lenovo/leos/internal/server/StartShutdownService;->isAirplaneModeOn()Z
    invoke-static {v4}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1200(Lcom/lenovo/leos/internal/server/StartShutdownService;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$6;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mSimReadyOnce:Z
    invoke-static {v4}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1000(Lcom/lenovo/leos/internal/server/StartShutdownService;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$6;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mNoSimDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1300(Lcom/lenovo/leos/internal/server/StartShutdownService;)Landroid/app/AlertDialog;

    move-result-object v4

    if-nez v4, :cond_3

    .line 742
    iget-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$6;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$6;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$400(Lcom/lenovo/leos/internal/server/StartShutdownService;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x10404eb

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x10404ec

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040013

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    #setter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mNoSimDialog:Landroid/app/AlertDialog;
    invoke-static {v4, v5}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1302(Lcom/lenovo/leos/internal/server/StartShutdownService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 749
    iget-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$6;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mNoSimDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1300(Lcom/lenovo/leos/internal/server/StartShutdownService;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 751
    iget-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$6;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mNoSimDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1300(Lcom/lenovo/leos/internal/server/StartShutdownService;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 753
    iget-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$6;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mNoSimDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1300(Lcom/lenovo/leos/internal/server/StartShutdownService;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 754
    iget-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$6;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mNoSimDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1300(Lcom/lenovo/leos/internal/server/StartShutdownService;)Landroid/app/AlertDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$6;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mNoSimListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v5}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1400(Lcom/lenovo/leos/internal/server/StartShutdownService;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 760
    .end local v0           #isIccCardIOError:Z
    .end local v1           #old:Z
    .end local v2           #stateExtra:Ljava/lang/String;
    .end local v3           #strIccCardIOState:Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .restart local v1       #old:Z
    .restart local v2       #stateExtra:Ljava/lang/String;
    .restart local v3       #strIccCardIOState:Ljava/lang/String;
    :cond_4
    move v0, v5

    .line 724
    goto/16 :goto_0

    .line 756
    .restart local v0       #isIccCardIOError:Z
    :cond_5
    iget-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$6;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mNoSimDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1300(Lcom/lenovo/leos/internal/server/StartShutdownService;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 757
    iget-object v4, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$6;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mNoSimDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1300(Lcom/lenovo/leos/internal/server/StartShutdownService;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1
.end method
