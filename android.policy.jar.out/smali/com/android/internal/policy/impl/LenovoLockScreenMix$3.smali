.class Lcom/android/internal/policy/impl/LenovoLockScreenMix$3;
.super Ljava/lang/Object;
.source "LenovoLockScreenMix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LenovoLockScreenMix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LenovoLockScreenMix;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LenovoLockScreenMix;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/internal/policy/impl/LenovoLockScreenMix$3;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreenMix;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreenMix$3;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreenMix;

    #getter for: Lcom/android/internal/policy/impl/LenovoLockScreenMix;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LenovoLockScreenMix$UnlockWidgetCommonMethods;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LenovoLockScreenMix;->access$800(Lcom/android/internal/policy/impl/LenovoLockScreenMix;)Lcom/android/internal/policy/impl/LenovoLockScreenMix$UnlockWidgetCommonMethods;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LenovoLockScreenMix$UnlockWidgetCommonMethods;->ping()V

    .line 459
    return-void
.end method
