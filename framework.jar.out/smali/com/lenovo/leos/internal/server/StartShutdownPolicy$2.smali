.class Lcom/lenovo/leos/internal/server/StartShutdownPolicy$2;
.super Ljava/lang/Object;
.source "StartShutdownPolicy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->showAutoShutdownAlert()V
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
    .line 362
    iput-object p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$2;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$2;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$900(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    return-void
.end method
