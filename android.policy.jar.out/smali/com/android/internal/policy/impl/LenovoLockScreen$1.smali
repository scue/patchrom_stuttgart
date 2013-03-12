.class Lcom/android/internal/policy/impl/LenovoLockScreen$1;
.super Ljava/lang/Object;
.source "LenovoLockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LenovoLockScreen;->requestUnlockScreen()V
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
    .line 268
    iput-object p1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$1;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$1;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LenovoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LenovoLockScreen;->access$200(Lcom/android/internal/policy/impl/LenovoLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 271
    return-void
.end method
