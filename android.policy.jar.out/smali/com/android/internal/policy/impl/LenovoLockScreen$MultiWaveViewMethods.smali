.class Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;
.super Ljava/lang/Object;
.source "LenovoLockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/LenovoLockScreen$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LenovoLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiWaveViewMethods"
.end annotation


# instance fields
.field private mCameraDisabled:Z

.field private final mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LenovoLockScreen;Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V
    .locals 4
    .parameter
    .parameter "multiWaveView"

    .prologue
    const/4 v1, 0x1

    .line 190
    iput-object p1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p2, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    .line 192
    #getter for: Lcom/android/internal/policy/impl/LenovoLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {p1}, Lcom/android/internal/policy/impl/LenovoLockScreen;->access$600(Lcom/android/internal/policy/impl/LenovoLockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 194
    .local v0, cameraDisabled:Z
    if-eqz v0, :cond_0

    .line 195
    const-string v2, "LenovoLockScreen"

    const-string v3, "Camera disabled by Device Policy"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    .line 203
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getTargetResourceId()I

    move-result v2

    const v3, 0x1070011

    if-eq v2, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    return-object v0
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 220
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 248
    if-eqz p2, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LenovoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LenovoLockScreen;->access$200(Lcom/android/internal/policy/impl/LenovoLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 251
    :cond_0
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 224
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "target"

    .prologue
    .line 227
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LenovoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LenovoLockScreen;->access$200(Lcom/android/internal/policy/impl/LenovoLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 242
    :cond_1
    :goto_0
    return-void

    .line 229
    :cond_2
    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 230
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    if-nez v1, :cond_4

    .line 232
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 234
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LenovoLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LenovoLockScreen;->access$700(Lcom/android/internal/policy/impl/LenovoLockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 235
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LenovoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LenovoLockScreen;->access$200(Lcom/android/internal/policy/impl/LenovoLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 237
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    #calls: Lcom/android/internal/policy/impl/LenovoLockScreen;->toggleRingMode()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/LenovoLockScreen;->access$300(Lcom/android/internal/policy/impl/LenovoLockScreen;)V

    .line 238
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LenovoLockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LenovoLockScreen$UnlockWidgetCommonMethods;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LenovoLockScreen;->access$800(Lcom/android/internal/policy/impl/LenovoLockScreen;)Lcom/android/internal/policy/impl/LenovoLockScreen$UnlockWidgetCommonMethods;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/LenovoLockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 239
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LenovoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LenovoLockScreen;->access$200(Lcom/android/internal/policy/impl/LenovoLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0
.end method

.method public ping()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->ping()V

    .line 263
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->reset(Z)V

    .line 259
    return-void
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 207
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    .line 208
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LenovoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/LenovoLockScreen;->mSilentMode:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LenovoLockScreen;->access$000(Lcom/android/internal/policy/impl/LenovoLockScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x107000b

    .line 215
    .local v0, resId:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetResources(I)V

    .line 216
    return-void

    .line 210
    .end local v0           #resId:I
    :cond_0
    const v0, 0x107000e

    goto :goto_0

    .line 213
    :cond_1
    const v0, 0x1070011

    .restart local v0       #resId:I
    goto :goto_0
.end method
