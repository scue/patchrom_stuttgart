.class Lcom/android/internal/policy/impl/LenovoLockScreenMix$2;
.super Ljava/lang/Object;
.source "LenovoLockScreenMix.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LenovoLockScreenMix;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
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
    iput-object p1, p0, Lcom/android/internal/policy/impl/LenovoLockScreenMix$2;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreenMix;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreenMix$2;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreenMix;

    #getter for: Lcom/android/internal/policy/impl/LenovoLockScreenMix;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LenovoLockScreenMix;->access$200(Lcom/android/internal/policy/impl/LenovoLockScreenMix;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    return-void
.end method