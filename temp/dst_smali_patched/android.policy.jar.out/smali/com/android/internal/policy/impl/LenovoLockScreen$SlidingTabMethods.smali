.class Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;
.super Ljava/lang/Object;
.source "LenovoLockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/SlidingTab$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/LenovoLockScreen$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LenovoLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingTabMethods"
.end annotation


# instance fields
.field private final mSlidingTab:Lcom/android/internal/widget/SlidingTab;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LenovoLockScreen;Lcom/android/internal/widget/SlidingTab;)V
    .locals 0
    .parameter
    .parameter "slidingTab"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    return-object v0
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    #calls: Lcom/android/internal/policy/impl/LenovoLockScreen;->isSilentMode()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LenovoLockScreen;->access$400(Lcom/android/internal/policy/impl/LenovoLockScreen;)Z

    move-result v1

    #setter for: Lcom/android/internal/policy/impl/LenovoLockScreen;->mSilentMode:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LenovoLockScreen;->access$002(Lcom/android/internal/policy/impl/LenovoLockScreen;Z)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LenovoLockScreen;->mSilentMode:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LenovoLockScreen;->access$000(Lcom/android/internal/policy/impl/LenovoLockScreen;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x104031f

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SlidingTab;->setRightHintText(I)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LenovoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LenovoLockScreen;->access$200(Lcom/android/internal/policy/impl/LenovoLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    :cond_1
    return-void

    :cond_2
    const v0, 0x1040320

    goto :goto_0
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LenovoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LenovoLockScreen;->access$200(Lcom/android/internal/policy/impl/LenovoLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    #calls: Lcom/android/internal/policy/impl/LenovoLockScreen;->toggleRingMode()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LenovoLockScreen;->access$300(Lcom/android/internal/policy/impl/LenovoLockScreen;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LenovoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LenovoLockScreen;->access$200(Lcom/android/internal/policy/impl/LenovoLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0
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
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab;->reset(Z)V

    return-void
.end method

.method public updateResources()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LenovoLockScreen;->mSilentMode:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LenovoLockScreen;->access$000(Lcom/android/internal/policy/impl/LenovoLockScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LenovoLockScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LenovoLockScreen;->access$100(Lcom/android/internal/policy/impl/LenovoLockScreen;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    .local v0, vibe:Z
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LenovoLockScreen;->mSilentMode:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LenovoLockScreen;->access$000(Lcom/android/internal/policy/impl/LenovoLockScreen;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const v1, 0x10802cd

    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LenovoLockScreen;->mSilentMode:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/LenovoLockScreen;->access$000(Lcom/android/internal/policy/impl/LenovoLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x108039d

    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LenovoLockScreen;->mSilentMode:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/LenovoLockScreen;->access$000(Lcom/android/internal/policy/impl/LenovoLockScreen;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x1080386

    :goto_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LenovoLockScreen;->mSilentMode:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LenovoLockScreen;->access$000(Lcom/android/internal/policy/impl/LenovoLockScreen;)Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x1080399

    :goto_4
    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/android/internal/widget/SlidingTab;->setRightTabResources(IIII)V

    return-void

    .end local v0           #vibe:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #vibe:Z
    :cond_1
    const v1, 0x10802ca

    goto :goto_1

    :cond_2
    const v1, 0x10802cb

    goto :goto_1

    :cond_3
    const v2, 0x108039a

    goto :goto_2

    :cond_4
    const v3, 0x1080385

    goto :goto_3

    :cond_5
    const v4, 0x1080398

    goto :goto_4
.end method
