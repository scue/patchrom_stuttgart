.class Lcom/android/internal/policy/impl/LenovoLockScreenMix$WaveViewMethods;
.super Ljava/lang/Object;
.source "LenovoLockScreenMix.java"

# interfaces
.implements Lcom/android/internal/widget/WaveView$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/LenovoLockScreenMix$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LenovoLockScreenMix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaveViewMethods"
.end annotation


# instance fields
.field private final mWaveView:Lcom/android/internal/widget/WaveView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LenovoLockScreenMix;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LenovoLockScreenMix;Lcom/android/internal/widget/WaveView;)V
    .locals 0
    .parameter
    .parameter "waveView"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/LenovoLockScreenMix$WaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreenMix;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/policy/impl/LenovoLockScreenMix$WaveViewMethods;->mWaveView:Lcom/android/internal/widget/WaveView;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreenMix$WaveViewMethods;->mWaveView:Lcom/android/internal/widget/WaveView;

    return-object v0
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreenMix$WaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreenMix;

    #getter for: Lcom/android/internal/policy/impl/LenovoLockScreenMix;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LenovoLockScreenMix;->access$200(Lcom/android/internal/policy/impl/LenovoLockScreenMix;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    const/16 v1, 0x7530

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreenMix$WaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreenMix;

    #calls: Lcom/android/internal/policy/impl/LenovoLockScreenMix;->requestUnlockScreen()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LenovoLockScreenMix;->access$500(Lcom/android/internal/policy/impl/LenovoLockScreenMix;)V

    :cond_0
    return-void
.end method

.method public ping()V
    .locals 0

    .prologue
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreenMix$WaveViewMethods;->mWaveView:Lcom/android/internal/widget/WaveView;

    invoke-virtual {v0}, Lcom/android/internal/widget/WaveView;->reset()V

    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    return-void
.end method
