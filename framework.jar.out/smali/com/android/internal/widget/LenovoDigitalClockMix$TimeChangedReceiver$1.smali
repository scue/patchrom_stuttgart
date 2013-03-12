.class Lcom/android/internal/widget/LenovoDigitalClockMix$TimeChangedReceiver$1;
.super Ljava/lang/Object;
.source "LenovoDigitalClockMix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LenovoDigitalClockMix$TimeChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LenovoDigitalClockMix$TimeChangedReceiver;

.field final synthetic val$clock:Lcom/android/internal/widget/LenovoDigitalClockMix;

.field final synthetic val$timezoneChanged:Z


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LenovoDigitalClockMix$TimeChangedReceiver;ZLcom/android/internal/widget/LenovoDigitalClockMix;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/internal/widget/LenovoDigitalClockMix$TimeChangedReceiver$1;->this$0:Lcom/android/internal/widget/LenovoDigitalClockMix$TimeChangedReceiver;

    iput-boolean p2, p0, Lcom/android/internal/widget/LenovoDigitalClockMix$TimeChangedReceiver$1;->val$timezoneChanged:Z

    iput-object p3, p0, Lcom/android/internal/widget/LenovoDigitalClockMix$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/widget/LenovoDigitalClockMix;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/internal/widget/LenovoDigitalClockMix$TimeChangedReceiver$1;->val$timezoneChanged:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/internal/widget/LenovoDigitalClockMix$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/widget/LenovoDigitalClockMix;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    #setter for: Lcom/android/internal/widget/LenovoDigitalClockMix;->mCalendar:Ljava/util/Calendar;
    invoke-static {v0, v1}, Lcom/android/internal/widget/LenovoDigitalClockMix;->access$002(Lcom/android/internal/widget/LenovoDigitalClockMix;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LenovoDigitalClockMix$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/widget/LenovoDigitalClockMix;

    #calls: Lcom/android/internal/widget/LenovoDigitalClockMix;->updateTime()V
    invoke-static {v0}, Lcom/android/internal/widget/LenovoDigitalClockMix;->access$100(Lcom/android/internal/widget/LenovoDigitalClockMix;)V

    .line 129
    return-void
.end method
