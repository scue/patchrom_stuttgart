.class Lcom/android/internal/policy/impl/LenovoLockScreen;
.super Landroid/widget/LinearLayout;
.source "LenovoLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;,
        Lcom/android/internal/policy/impl/LenovoLockScreen$WaveViewMethods;,
        Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;,
        Lcom/android/internal/policy/impl/LenovoLockScreen$UnlockWidgetCommonMethods;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final ON_RESUME_PING_DELAY:I = 0x1f4

.field private static final STAY_ON_WHILE_GRABBED_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "LenovoLockScreen"

.field private static final WAIT_FOR_ANIMATION_TIMEOUT:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCreationOrientation:I

.field private mEmergencyCallButton1:Landroid/widget/Button;

.field private mEnableMenuKeyInLockScreen:Z

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mOnResumePing:Ljava/lang/Runnable;

.field private mSilentMode:Z

.field private mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mUnlockWidget:Landroid/view/View;

.field private mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LenovoLockScreen$UnlockWidgetCommonMethods;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 14
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 317
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 456
    new-instance v1, Lcom/android/internal/policy/impl/LenovoLockScreen$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LenovoLockScreen$3;-><init>(Lcom/android/internal/policy/impl/LenovoLockScreen;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mOnResumePing:Ljava/lang/Runnable;

    .line 318
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 319
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 320
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 322
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoLockScreen;->shouldEnableMenuKey()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 324
    move-object/from16 v0, p2

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mCreationOrientation:I

    .line 326
    move-object/from16 v0, p2

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mKeyboardHidden:I

    .line 334
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 335
    .local v7, inflater:Landroid/view/LayoutInflater;
    const-string v1, "LenovoLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creation orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mCreationOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mCreationOrientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 337
    const v1, 0x109005d

    const/4 v2, 0x1

    invoke-virtual {v7, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 341
    :goto_0
    const v1, 0x10202bf

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LenovoLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mEmergencyCallButton1:Landroid/widget/Button;

    .line 342
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mEmergencyCallButton1:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mEmergencyCallButton1:Landroid/widget/Button;

    const v2, 0x10402ef

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 344
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mEmergencyCallButton1:Landroid/widget/Button;

    new-instance v2, Lcom/android/internal/policy/impl/LenovoLockScreen$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LenovoLockScreen$2;-><init>(Lcom/android/internal/policy/impl/LenovoLockScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mEmergencyCallButton1:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 353
    :cond_0
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 356
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LenovoLockScreen;->setFocusable(Z)V

    .line 357
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LenovoLockScreen;->setFocusableInTouchMode(Z)V

    .line 358
    const/high16 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LenovoLockScreen;->setDescendantFocusability(I)V

    .line 360
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 361
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoLockScreen;->isSilentMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mSilentMode:Z

    .line 363
    const v1, 0x10202ad

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LenovoLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mUnlockWidget:Landroid/view/View;

    .line 364
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v1, v1, Lcom/android/internal/widget/SlidingTab;

    if-eqz v1, :cond_2

    .line 365
    iget-object v11, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v11, Lcom/android/internal/widget/SlidingTab;

    .line 366
    .local v11, slidingTabView:Lcom/android/internal/widget/SlidingTab;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Lcom/android/internal/widget/SlidingTab;->setHoldAfterTrigger(ZZ)V

    .line 367
    const v1, 0x104031e

    invoke-virtual {v11, v1}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 368
    const v1, 0x10802cc

    const v2, 0x108039b

    const v3, 0x108037c

    const v4, 0x108038f

    invoke-virtual {v11, v1, v2, v3, v4}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    .line 373
    new-instance v10, Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;

    invoke-direct {v10, p0, v11}, Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;-><init>(Lcom/android/internal/policy/impl/LenovoLockScreen;Lcom/android/internal/widget/SlidingTab;)V

    .line 374
    .local v10, slidingTabMethods:Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;
    invoke-virtual {v11, v10}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 375
    iput-object v10, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LenovoLockScreen$UnlockWidgetCommonMethods;

    .line 391
    .end local v10           #slidingTabMethods:Lcom/android/internal/policy/impl/LenovoLockScreen$SlidingTabMethods;
    .end local v11           #slidingTabView:Lcom/android/internal/widget/SlidingTab;
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LenovoLockScreen$UnlockWidgetCommonMethods;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/LenovoLockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 393
    const-string v2, "LenovoLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** LenovoLockScreen accel is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "on"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void

    .line 339
    :cond_1
    const v1, 0x1090058

    const/4 v2, 0x1

    invoke-virtual {v7, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 376
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v1, v1, Lcom/android/internal/widget/WaveView;

    if-eqz v1, :cond_3

    .line 377
    iget-object v12, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v12, Lcom/android/internal/widget/WaveView;

    .line 378
    .local v12, waveView:Lcom/android/internal/widget/WaveView;
    new-instance v13, Lcom/android/internal/policy/impl/LenovoLockScreen$WaveViewMethods;

    invoke-direct {v13, p0, v12}, Lcom/android/internal/policy/impl/LenovoLockScreen$WaveViewMethods;-><init>(Lcom/android/internal/policy/impl/LenovoLockScreen;Lcom/android/internal/widget/WaveView;)V

    .line 379
    .local v13, waveViewMethods:Lcom/android/internal/policy/impl/LenovoLockScreen$WaveViewMethods;
    invoke-virtual {v12, v13}, Lcom/android/internal/widget/WaveView;->setOnTriggerListener(Lcom/android/internal/widget/WaveView$OnTriggerListener;)V

    .line 380
    iput-object v13, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LenovoLockScreen$UnlockWidgetCommonMethods;

    goto :goto_1

    .line 381
    .end local v12           #waveView:Lcom/android/internal/widget/WaveView;
    .end local v13           #waveViewMethods:Lcom/android/internal/policy/impl/LenovoLockScreen$WaveViewMethods;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v1, v1, Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    if-eqz v1, :cond_4

    .line 382
    iget-object v8, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v8, Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    .line 383
    .local v8, multiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;
    new-instance v9, Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;

    invoke-direct {v9, p0, v8}, Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;-><init>(Lcom/android/internal/policy/impl/LenovoLockScreen;Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V

    .line 384
    .local v9, multiWaveViewMethods:Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;
    invoke-virtual {v8, v9}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;)V

    .line 385
    iput-object v9, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LenovoLockScreen$UnlockWidgetCommonMethods;

    goto :goto_1

    .line 387
    .end local v8           #multiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;
    .end local v9           #multiWaveViewMethods:Lcom/android/internal/policy/impl/LenovoLockScreen$MultiWaveViewMethods;
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized unlock widget: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_5
    const-string v1, "off"

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LenovoLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mSilentMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/LenovoLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mSilentMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LenovoLockScreen;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/LenovoLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/LenovoLockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoLockScreen;->toggleRingMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/LenovoLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoLockScreen;->isSilentMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/LenovoLockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoLockScreen;->requestUnlockScreen()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/LenovoLockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/LenovoLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/LenovoLockScreen;)Lcom/android/internal/policy/impl/LenovoLockScreen$UnlockWidgetCommonMethods;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LenovoLockScreen$UnlockWidgetCommonMethods;

    return-object v0
.end method

.method private isSilentMode()Z
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestUnlockScreen()V
    .locals 3

    .prologue
    .line 268
    new-instance v0, Lcom/android/internal/policy/impl/LenovoLockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LenovoLockScreen$1;-><init>(Lcom/android/internal/policy/impl/LenovoLockScreen;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/LenovoLockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .locals 6

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LenovoLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 300
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x111001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 301
    .local v0, configDisabled:Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 302
    .local v2, isTestHarness:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 303
    .local v1, fileOverride:Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private toggleRingMode()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 277
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mSilentMode:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mSilentMode:Z

    .line 278
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mSilentMode:Z

    if-eqz v1, :cond_3

    .line 279
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "vibrate_in_silent"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v0, v2

    .line 283
    .local v0, vibe:Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 289
    .end local v0           #vibe:Z
    :goto_3
    return-void

    :cond_0
    move v1, v3

    .line 277
    goto :goto_0

    :cond_1
    move v0, v3

    .line 279
    goto :goto_1

    .restart local v0       #vibe:Z
    :cond_2
    move v2, v3

    .line 283
    goto :goto_2

    .line 287
    .end local v0           #vibe:Z
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_3
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 470
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 471
    iput-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 472
    iput-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 473
    iput-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 474
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 424
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 430
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LenovoLockScreen;->updateConfiguration()V

    .line 431
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 436
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 442
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LenovoLockScreen;->updateConfiguration()V

    .line 443
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 403
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mEnableMenuKeyInLockScreen:Z

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 406
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 453
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LenovoLockScreen$UnlockWidgetCommonMethods;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/LenovoLockScreen$UnlockWidgetCommonMethods;->reset(Z)V

    .line 454
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 486
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 465
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mOnResumePing:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/LenovoLockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 466
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 478
    const/4 v1, 0x2

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 479
    .local v0, silent:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mSilentMode:Z

    if-eq v0, v1, :cond_0

    .line 480
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mSilentMode:Z

    .line 481
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LenovoLockScreen$UnlockWidgetCommonMethods;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/LenovoLockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 483
    :cond_0
    return-void

    .line 478
    .end local v0           #silent:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateConfiguration()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 410
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LenovoLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 411
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_1

    .line 412
    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_0

    .line 414
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mKeyboardHidden:I

    .line 415
    iget v2, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mKeyboardHidden:I

    if-ne v2, v0, :cond_2

    .line 416
    .local v0, isKeyboardOpen:Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 417
    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 415
    .end local v0           #isKeyboardOpen:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
