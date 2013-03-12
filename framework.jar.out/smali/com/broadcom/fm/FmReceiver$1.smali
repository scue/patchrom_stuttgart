.class final Lcom/broadcom/fm/FmReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/fm/FmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0xa

    const/high16 v4, 0x4170

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 60
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/16 v3, 0xf

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 61
    .local v1, volume:I
    int-to-float v2, v1

    div-float/2addr v2, v4

    #calls: Lcom/broadcom/fm/FmReceiver;->setVolumeNative(F)I
    invoke-static {v2}, Lcom/broadcom/fm/FmReceiver;->access$000(F)I

    .line 69
    .end local v1           #volume:I
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.broadcom.fm.FM_ENABLED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-static {}, Lcom/broadcom/fm/FmReceiver;->access$100()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 66
    .local v0, audioMgr:Landroid/media/AudioManager;
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 67
    .restart local v1       #volume:I
    int-to-float v2, v1

    div-float/2addr v2, v4

    #calls: Lcom/broadcom/fm/FmReceiver;->setVolumeNative(F)I
    invoke-static {v2}, Lcom/broadcom/fm/FmReceiver;->access$000(F)I

    goto :goto_0
.end method
