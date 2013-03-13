.class Lcom/lenovo/leos/internal/server/StartShutdownService$7;
.super Ljava/lang/Object;
.source "StartShutdownService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    iput-object p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$7;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    iget-object v0, p0, Lcom/lenovo/leos/internal/server/StartShutdownService$7;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownService;

    const/4 v1, 0x0

    #setter for: Lcom/lenovo/leos/internal/server/StartShutdownService;->mNoSimDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/lenovo/leos/internal/server/StartShutdownService;->access$1302(Lcom/lenovo/leos/internal/server/StartShutdownService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
