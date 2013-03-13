.class Lcom/android/internal/policy/impl/LenovoLockScreenMix$1;
.super Ljava/lang/Object;
.source "LenovoLockScreenMix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LenovoLockScreenMix;->requestUnlockScreen()V
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
    iput-object p1, p0, Lcom/android/internal/policy/impl/LenovoLockScreenMix$1;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreenMix;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreenMix$1;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreenMix;

    #getter for: Lcom/android/internal/policy/impl/LenovoLockScreenMix;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LenovoLockScreenMix;->access$200(Lcom/android/internal/policy/impl/LenovoLockScreenMix;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    return-void
.end method
