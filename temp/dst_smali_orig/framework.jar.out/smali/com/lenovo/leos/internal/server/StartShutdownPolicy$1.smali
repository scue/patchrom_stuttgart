.class Lcom/lenovo/leos/internal/server/StartShutdownPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "StartShutdownPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/internal/server/StartShutdownPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$1;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v5, "com.android.startshutdown.AUTO_SHUTDOWN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "Long_time"

    const-wide/16 v6, 0x0

    invoke-virtual {p2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .local v3, setFor:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .local v1, now:J
    const-wide/32 v5, 0x1b7740

    add-long/2addr v5, v3

    cmp-long v5, v1, v5

    if-lez v5, :cond_1

    .end local v1           #now:J
    .end local v3           #setFor:J
    :cond_0
    :goto_0
    return-void

    .restart local v1       #now:J
    .restart local v3       #setFor:J
    :cond_1
    iget-object v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$1;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    #calls: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->handleAutoShutdown()V
    invoke-static {v5}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$000(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)V

    goto :goto_0

    .end local v1           #now:J
    .end local v3           #setFor:J
    :cond_2
    const-string v5, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    iget-object v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$1;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    invoke-virtual {v5}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->isAutoStartTimeSet()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$1;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    iget-object v6, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$1;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartHour:I
    invoke-static {v6}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$100(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)I

    move-result v6

    iget-object v7, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$1;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mStartMinute:I
    invoke-static {v7}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$200(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->enableAutoStart(II)V

    :cond_4
    iget-object v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$1;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    invoke-virtual {v5}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->isAutoShutdownTimeSet()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$1;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    iget-object v6, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$1;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownHour:I
    invoke-static {v6}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$300(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)I

    move-result v6

    iget-object v7, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$1;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownMinute:I
    invoke-static {v7}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$400(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->enableAutoShutdown(II)V

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$1;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mShutdownDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$500(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$1;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    iget-object v6, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$1;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$600(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)Landroid/content/Context;

    move-result-object v6

    #calls: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->releaseAfterScreenOffWakeLock(Landroid/content/Context;)V
    invoke-static {v5, v6}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$700(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;Landroid/content/Context;)V

    iget-object v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$1;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    iget-object v6, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$1;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$600(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)Landroid/content/Context;

    move-result-object v6

    #calls: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->acquireAfterScreenOffWakeLock(Landroid/content/Context;)V
    invoke-static {v5, v6}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$800(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$1;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    iget-object v6, p0, Lcom/lenovo/leos/internal/server/StartShutdownPolicy$1;->this$0:Lcom/lenovo/leos/internal/server/StartShutdownPolicy;

    #getter for: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$600(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;)Landroid/content/Context;

    move-result-object v6

    #calls: Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->releaseAfterScreenOffWakeLock(Landroid/content/Context;)V
    invoke-static {v5, v6}, Lcom/lenovo/leos/internal/server/StartShutdownPolicy;->access$700(Lcom/lenovo/leos/internal/server/StartShutdownPolicy;Landroid/content/Context;)V

    goto/16 :goto_0
.end method
