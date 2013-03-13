.class Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeAction"
.end annotation


# instance fields
.field private final ITEM_IDS:[I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mHandler:Landroid/os/Handler;

.field private mProfileStr:Ljava/lang/String;

.field private mcontext:Landroid/content/Context;

.field private v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 1
    .parameter "audioManager"
    .parameter "handler"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->ITEM_IDS:[I

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mHandler:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 0x4
        0x64t 0x2t 0x2t 0x1t
        0x65t 0x2t 0x2t 0x1t
        0x66t 0x2t 0x2t 0x1t
        0x67t 0x2t 0x2t 0x1t
    .end array-data
.end method

.method private indexToRingerMode(I)I
    .locals 2
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .local v0, ringerMode:I
    if-nez p1, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private ringerModeToIndex(I)I
    .locals 0
    .parameter "ringerMode"

    .prologue
    return p1
.end method

.method private saveProfileAndBroadcast(Ljava/lang/String;)V
    .locals 4
    .parameter "profile"

    .prologue
    const-string v1, "huanghh3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveProfileandBroadcast profile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mProfileStr:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "profile_type"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.PROFILE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from"

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mProfileStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "to"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "module"

    const-string v2, "globalActions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mcontext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mProfileStr:Ljava/lang/String;

    goto :goto_0
.end method

.method private syncCurrentProfile()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "profile_type"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mProfileStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    const/4 v4, 0x0

    const v3, 0x1090041

    invoke-virtual {p4, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->v:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->ringerModeToIndex(I)I

    move-result v2

    .local v2, selectedIndex:I
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mcontext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "profile_type"

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mProfileStr:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mProfileStr:Ljava/lang/String;

    const-string v5, "general"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const-string v3, "huanghh3"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createInit --- mProfile:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mProfileStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " selectedIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v3, 0x4

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->v:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->ITEM_IDS:[I

    aget v5, v5, v0

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .local v1, itemView:Landroid/view/View;
    if-ne v2, v0, :cond_4

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #itemView:Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mProfileStr:Ljava/lang/String;

    const-string v5, "silence"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mProfileStr:Ljava/lang/String;

    const-string v5, "meeting"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mProfileStr:Ljava/lang/String;

    const-string v5, "outdoors"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    .restart local v0       #i:I
    .restart local v1       #itemView:Landroid/view/View;
    :cond_4
    move v3, v4

    goto :goto_2

    .end local v1           #itemView:Landroid/view/View;
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->v:Landroid/view/View;

    return-object v3
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, index:I
    const-string v1, "huanghh3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onclick index= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->syncCurrentProfile()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "vibrate_in_silent"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "general"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->saveProfileAndBroadcast(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->syncCurrentProfile()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "vibrate_in_silent"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "outdoors"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->saveProfileAndBroadcast(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->indexToRingerMode(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_1
.end method

.method public onPress()V
    .locals 0

    .prologue
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 0

    .prologue
    return-void
.end method
