.class Lcom/lenovo/leos/internal/server/StartShutdownService$3;
.super Ljava/lang/Object;
.source "StartShutdownService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 572
    iput-object p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$3;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$3;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    #calls: Lcom/lenovo/leos/internal/server/StartShutdownService;->setAirplaneModeOff()V
    invoke-static {v0}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$700(Lcom/lenovo/leos/internal/server/StartShutdownService;)V

    .line 576
    return-void
.end method
