.class Lcom/lenovo/leos/internal/server/StartShutdownService$5;
.super Ljava/lang/Object;
.source "StartShutdownService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/internal/server/StartShutdownService;->loadSettings()V
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
    .line 585
    iput-object p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$5;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$5;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #calls: Lcom/lenovo/leos/internal/server/StartShutdownService;->showDataConnectionDialog()V
    invoke-static {v0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$800(Lcom/lenovo/leos/internal/server/StartShutdownService;)V

    .line 588
    return-void
.end method
