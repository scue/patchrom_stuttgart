.class public Lcom/android/internal/widget/LenovoDigitalClockSimple;
.super Landroid/widget/LinearLayout;
.source "LenovoDigitalClockSimple.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LenovoDigitalClockSimple$FormatChangeObserver;,
        Lcom/android/internal/widget/LenovoDigitalClockSimple$AmPm;,
        Lcom/android/internal/widget/LenovoDigitalClockSimple$TimeChangedReceiver;
    }
.end annotation


# static fields
.field static final AM_PM_SPAN:Landroid/text/style/RelativeSizeSpan; = null

.field private static final LOCK_SCREEN_AMPM:[I = null

.field private static final LOCK_SCREEN_TIME:[I = null

.field private static final M12:Ljava/lang/String; = "h:mma"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final SYSTEM:Ljava/lang/String; = "/system/fonts/"

.field private static final SYSTEM_FONT_TIME_BACKGROUND:Ljava/lang/String; = "/system/fonts/AndroidClock.ttf"

.field private static final SYSTEM_FONT_TIME_FOREGROUND:Ljava/lang/String; = "/system/fonts/AndroidClock_Highlight.ttf"

.field private static final TAG:Ljava/lang/String; = "LenovoDigitalClockSimple"

.field private static final sBackgroundFont:Landroid/graphics/Typeface;

.field private static final sForegroundFont:Landroid/graphics/Typeface;


# instance fields
.field private mAmPm:Lcom/android/internal/widget/LenovoDigitalClockSimple$AmPm;

.field private mAttached:I

.field private mCalendar:Ljava/util/Calendar;

.field private mDrawableAmPm:I

.field private mDrawableHours1:I

.field private mDrawableHours2:I

.field private mDrawableMinutes1:I

.field private mDrawableMinutes2:I

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs24:Z

.field private mTimeAmPm:Landroid/widget/ImageView;

.field private mTimeDisplayBackground:Landroid/widget/TextView;

.field private mTimeDisplayForeground:Landroid/widget/TextView;

.field private mTimeHour1:Landroid/widget/ImageView;

.field private mTimeHour2:Landroid/widget/ImageView;

.field private mTimeMinutes1:Landroid/widget/ImageView;

.field private mTimeMinutes2:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "/system/fonts/AndroidClock.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->sBackgroundFont:Landroid/graphics/Typeface;

    const-string v0, "/system/fonts/AndroidClock_Highlight.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->sForegroundFont:Landroid/graphics/Typeface;

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->LOCK_SCREEN_TIME:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->LOCK_SCREEN_AMPM:[I

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    const v1, 0x3e4ccccd

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    sput-object v0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->AM_PM_SPAN:Landroid/text/style/RelativeSizeSpan;

    return-void

    :array_0
    .array-data 0x4
        0xc2t 0x3t 0x8t 0x1t
        0xc3t 0x3t 0x8t 0x1t
        0xc4t 0x3t 0x8t 0x1t
        0xc5t 0x3t 0x8t 0x1t
        0xc6t 0x3t 0x8t 0x1t
        0xc7t 0x3t 0x8t 0x1t
        0xc8t 0x3t 0x8t 0x1t
        0xc9t 0x3t 0x8t 0x1t
        0xcat 0x3t 0x8t 0x1t
        0xcbt 0x3t 0x8t 0x1t
    .end array-data

    :array_1
    .array-data 0x4
        0xcct 0x3t 0x8t 0x1t
        0xcet 0x3t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LenovoDigitalClockSimple;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mAttached:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mIs24:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/widget/LenovoDigitalClockSimple;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/LenovoDigitalClockSimple;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LenovoDigitalClockSimple;->updateTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/widget/LenovoDigitalClockSimple;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/LenovoDigitalClockSimple;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LenovoDigitalClockSimple;->setDateFormat()V

    return-void
.end method

.method private drawableDigital(Ljava/lang/CharSequence;)I
    .locals 3
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, charStr:C
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v2, Lcom/android/internal/widget/LenovoDigitalClockSimple;->LOCK_SCREEN_TIME:[I

    aget v1, v2, v1

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/internal/widget/LenovoDigitalClockSimple;->LOCK_SCREEN_TIME:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/internal/widget/LenovoDigitalClockSimple;->LOCK_SCREEN_TIME:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/android/internal/widget/LenovoDigitalClockSimple;->LOCK_SCREEN_TIME:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    goto :goto_0

    :pswitch_4
    sget-object v1, Lcom/android/internal/widget/LenovoDigitalClockSimple;->LOCK_SCREEN_TIME:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    goto :goto_0

    :pswitch_5
    sget-object v1, Lcom/android/internal/widget/LenovoDigitalClockSimple;->LOCK_SCREEN_TIME:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    goto :goto_0

    :pswitch_6
    sget-object v1, Lcom/android/internal/widget/LenovoDigitalClockSimple;->LOCK_SCREEN_TIME:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    goto :goto_0

    :pswitch_7
    sget-object v1, Lcom/android/internal/widget/LenovoDigitalClockSimple;->LOCK_SCREEN_TIME:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    goto :goto_0

    :pswitch_8
    sget-object v1, Lcom/android/internal/widget/LenovoDigitalClockSimple;->LOCK_SCREEN_TIME:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    goto :goto_0

    :pswitch_9
    sget-object v1, Lcom/android/internal/widget/LenovoDigitalClockSimple;->LOCK_SCREEN_TIME:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private setDateFormat()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LenovoDigitalClockSimple;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .local v0, b24:Z
    if-eqz v0, :cond_1

    const-string v1, "kk:mm"

    :goto_0
    iput-object v1, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mFormat:Ljava/lang/String;

    const-string v1, "h:mma"

    iget-object v2, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mAmPm:Lcom/android/internal/widget/LenovoDigitalClockSimple$AmPm;

    iget-object v2, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mFormat:Ljava/lang/String;

    const-string v3, "h:mma"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LenovoDigitalClockSimple$AmPm;->setShowAmPm(Z)V

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mIs24:Z

    return-void

    :cond_1
    const-string v1, "h:mma"

    goto :goto_0
.end method

.method private updateHoursImage(I)V
    .locals 7
    .parameter "hours"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .local v0, strHours:Ljava/lang/String;
    const-string v1, "LenovoDigitalClockSimple"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "strHours; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_0

    iput v4, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mDrawableHours1:I

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LenovoDigitalClockSimple;->drawableDigital(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mDrawableHours2:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v6, :cond_1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LenovoDigitalClockSimple;->drawableDigital(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mDrawableHours1:I

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LenovoDigitalClockSimple;->drawableDigital(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mDrawableHours2:I

    goto :goto_0

    :cond_1
    const-string v1, "LenovoDigitalClockSimple"

    const-string v2, "bad hours!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mDrawableHours1:I

    iput v4, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mDrawableHours2:I

    goto :goto_0
.end method

.method private updateMinutesImage(I)V
    .locals 5
    .parameter "min"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .local v0, strMin:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/widget/LenovoDigitalClockSimple;->LOCK_SCREEN_TIME:[I

    aget v1, v1, v3

    iput v1, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mDrawableMinutes1:I

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LenovoDigitalClockSimple;->drawableDigital(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mDrawableMinutes2:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LenovoDigitalClockSimple;->drawableDigital(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mDrawableMinutes1:I

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LenovoDigitalClockSimple;->drawableDigital(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mDrawableMinutes2:I

    goto :goto_0

    :cond_1
    const-string v1, "LenovoDigitalClockSimple"

    const-string v2, "bad Minutes!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mDrawableMinutes1:I

    iput v3, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mDrawableMinutes2:I

    goto :goto_0
.end method

.method private updateTime()V
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .local v0, d:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v1

    .local v1, hr:I
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v2

    .local v2, min:I
    const-string v3, "LenovoDigitalClockSimple"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hr; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "min: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mIs24:Z

    if-eqz v3, :cond_1

    iput v6, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mDrawableAmPm:I

    :cond_0
    :goto_0
    const-string v3, "LenovoDigitalClockSimple"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hr1; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LenovoDigitalClockSimple;->updateHoursImage(I)V

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LenovoDigitalClockSimple;->updateMinutesImage(I)V

    iget-object v3, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mTimeHour1:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mDrawableHours1:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mTimeHour2:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mDrawableHours2:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mTimeMinutes1:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mDrawableMinutes1:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mTimeMinutes2:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mDrawableMinutes2:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mTimeAmPm:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mDrawableAmPm:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_1
    if-ge v1, v7, :cond_2

    sget-object v3, Lcom/android/internal/widget/LenovoDigitalClockSimple;->LOCK_SCREEN_AMPM:[I

    aget v3, v3, v6

    iput v3, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mDrawableAmPm:I

    if-nez v1, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :cond_2
    if-eq v1, v7, :cond_3

    add-int/lit8 v1, v1, -0xc

    :cond_3
    sget-object v3, Lcom/android/internal/widget/LenovoDigitalClockSimple;->LOCK_SCREEN_AMPM:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iput v3, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mDrawableAmPm:I

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget v1, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mAttached:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mAttached:I

    iget-object v1, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/widget/LenovoDigitalClockSimple$TimeChangedReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LenovoDigitalClockSimple$TimeChangedReceiver;-><init>(Lcom/android/internal/widget/LenovoDigitalClockSimple;)V

    iput-object v1, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/internal/widget/LenovoDigitalClockSimple$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LenovoDigitalClockSimple$FormatChangeObserver;-><init>(Lcom/android/internal/widget/LenovoDigitalClockSimple;)V

    iput-object v1, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mFormatChangeObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/LenovoDigitalClockSimple;->updateTime()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget v0, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mAttached:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mAttached:I

    iget-object v0, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iput-object v2, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mFormatChangeObserver:Landroid/database/ContentObserver;

    iput-object v2, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x10202ba

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LenovoDigitalClockSimple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mTimeHour1:Landroid/widget/ImageView;

    const v0, 0x10202bb

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LenovoDigitalClockSimple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mTimeHour2:Landroid/widget/ImageView;

    const v0, 0x10202bc

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LenovoDigitalClockSimple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mTimeMinutes1:Landroid/widget/ImageView;

    const v0, 0x10202bd

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LenovoDigitalClockSimple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mTimeMinutes2:Landroid/widget/ImageView;

    const v0, 0x10202be

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LenovoDigitalClockSimple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mTimeAmPm:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/internal/widget/LenovoDigitalClockSimple$AmPm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/LenovoDigitalClockSimple$AmPm;-><init>(Landroid/view/View;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mAmPm:Lcom/android/internal/widget/LenovoDigitalClockSimple$AmPm;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/android/internal/widget/LenovoDigitalClockSimple;->setDateFormat()V

    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/LenovoDigitalClockSimple;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/android/internal/widget/LenovoDigitalClockSimple;->updateTime()V

    return-void
.end method
