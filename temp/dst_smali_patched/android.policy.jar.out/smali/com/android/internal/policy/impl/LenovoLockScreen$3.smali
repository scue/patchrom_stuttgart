.class Lcom/android/internal/policy/impl/LenovoLockScreen$3;
.super Ljava/lang/Object;
.source "LenovoLockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LenovoLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LenovoLockScreen;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$3;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$3;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LenovoLockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LenovoLockScreen$UnlockWidgetCommonMethods;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LenovoLockScreen;->access$800(Lcom/android/internal/policy/impl/LenovoLockScreen;)Lcom/android/internal/policy/impl/LenovoLockScreen$UnlockWidgetCommonMethods;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LenovoLockScreen$UnlockWidgetCommonMethods;->ping()V

    return-void
.end method
