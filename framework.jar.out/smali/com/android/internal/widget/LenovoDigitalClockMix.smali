.class public Lcom/android/internal/widget/LenovoDigitalClockMix;
.super Landroid/widget/LinearLayout;
.source "LenovoDigitalClockMix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LenovoDigitalClockMix$FormatChangeObserver;,
        Lcom/android/internal/widget/LenovoDigitalClockMix$AmPm;,
        Lcom/android/internal/widget/LenovoDigitalClockMix$TimeChangedReceiver;
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

.field private static final TAG:Ljava/lang/String; = "LenovoDigitalClockMix"

.field private static final sBackgroundFont:Landroid/graphics/Typeface;

.field private static final sForegroundFont:Landroid/graphics/Typeface;


# instance fields
.field private mAmPm:Lcom/android/internal/widget/LenovoDigitalClockMix$AmPm;

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
    .line 76
    const-string v0, "/system/fonts/AndroidClock.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/LenovoDigitalClockMix;->sBackgroundFont:Landroid/graphics/Typeface;

    .line 77
    const-string v0, "/system/fonts/AndroidClock_Highlight.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/LenovoDigitalClockMix;->sForegroundFont:Landroid/graphics/Typeface;

    .line 89
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/widget/LenovoDigitalClockMix;->LOCK_SCREEN_TIME:[I

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/widget/LenovoDigitalClockMix;->LOCK_SCREEN_AMPM:[I

    .line 266
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    const v1, 0x3e4ccccd

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    sput-object v0, Lcom/android/internal/widget/LenovoDigitalClockMix;->AM_PM_SPAN:Landroid/text/style/RelativeSizeSpan;

    return-void

    .line 89
    :array_0
    .array-data 0x4
        0xb5t 0x3t 0x8t 0x1t
        0xb6t 0x3t 0x8t 0x1t
        0xb7t 0x3t 0x8t 0x1t
        0xb8t 0x3t 0x8t 0x1t
        0xb9t 0x3t 0x8t 0x1t
        0xbat 0x3t 0x8t 0x1t
        0xbbt 0x3t 0x8t 0x1t
        0xbct 0x3t 0x8t 0x1t
        0xbdt 0x3t 0x8t 0x1t
        0xbet 0x3t 0x8t 0x1t
    .end array-data

    .line 102
    :array_1
    .array-data 0x4
        0xbft 0x3t 0x8t 0x1t
        0xc1t 0x3t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LenovoDigitalClockMix;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput v1, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mAttached:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mHandler:Landroid/os/Handler;

    .line 87
    iput-boolean v1, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mIs24:Z

    .line 200
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/widget/LenovoDigitalClockMix;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/LenovoDigitalClockMix;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/widget/LenovoDigitalClockMix;->updateTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/widget/LenovoDigitalClockMix;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/LenovoDigitalClockMix;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/widget/LenovoDigitalClockMix;->setDateFormat()V

    return-void
.end method

.method private drawableDigital(Ljava/lang/CharSequence;)I
    .locals 3
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 352
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    :goto_0
    return v1

    .line 354
    :cond_0
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 355
    .local v0, charStr:C
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 357
    :pswitch_0
    sget-object v2, Lcom/android/internal/widget/LenovoDigitalClockMix;->LOCK_SCREEN_TIME:[I

    aget v1, v2, v1

    goto :goto_0

    .line 359
    :pswitch_1
    sget-object v1, Lcom/android/internal/widget/LenovoDigitalClockMix;->LOCK_SCREEN_TIME:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    goto :goto_0

    .line 361
    :pswitch_2
    sget-object v1, Lcom/android/internal/widget/LenovoDigitalClockMix;->LOCK_SCREEN_TIME:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    goto :goto_0

    .line 363
    :pswitch_3
    sget-object v1, Lcom/android/internal/widget/LenovoDigitalClockMix;->LOCK_SCREEN_TIME:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    goto :goto_0

    .line 365
    :pswitch_4
    sget-object v1, Lcom/android/internal/widget/LenovoDigitalClockMix;->LOCK_SCREEN_TIME:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    goto :goto_0

    .line 367
    :pswitch_5
    sget-object v1, Lcom/android/internal/widget/LenovoDigitalClockMix;->LOCK_SCREEN_TIME:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    goto :goto_0

    .line 369
    :pswitch_6
    sget-object v1, Lcom/android/internal/widget/LenovoDigitalClockMix;->LOCK_SCREEN_TIME:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    goto :goto_0

    .line 371
    :pswitch_7
    sget-object v1, Lcom/android/internal/widget/LenovoDigitalClockMix;->LOCK_SCREEN_TIME:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    goto :goto_0

    .line 373
    :pswitch_8
    sget-object v1, Lcom/android/internal/widget/LenovoDigitalClockMix;->LOCK_SCREEN_TIME:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    goto :goto_0

    .line 375
    :pswitch_9
    sget-object v1, Lcom/android/internal/widget/LenovoDigitalClockMix;->LOCK_SCREEN_TIME:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    goto :goto_0

    .line 355
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
    .line 313
    invoke-virtual {p0}, Lcom/android/internal/widget/LenovoDigitalClockMix;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 314
    .local v0, b24:Z
    if-eqz v0, :cond_1

    const-string v1, "kk:mm"

    :goto_0
    iput-object v1, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mFormat:Ljava/lang/String;

    .line 315
    const-string v1, "h:mma"

    iget-object v2, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mAmPm:Lcom/android/internal/widget/LenovoDigitalClockMix$AmPm;

    iget-object v2, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mFormat:Ljava/lang/String;

    const-string v3, "h:mma"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LenovoDigitalClockMix$AmPm;->setShowAmPm(Z)V

    .line 317
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mIs24:Z

    .line 318
    return-void

    .line 314
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

    .line 321
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, strHours:Ljava/lang/String;
    const-string v1, "LenovoDigitalClockMix"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "strHours; "

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

    .line 323
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 324
    iput v4, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mDrawableHours1:I

    .line 325
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LenovoDigitalClockMix;->drawableDigital(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mDrawableHours2:I

    .line 334
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 327
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LenovoDigitalClockMix;->drawableDigital(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mDrawableHours1:I

    .line 328
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LenovoDigitalClockMix;->drawableDigital(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mDrawableHours2:I

    goto :goto_0

    .line 330
    :cond_1
    const-string v1, "LenovoDigitalClockMix"

    const-string v2, "bad hours!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iput v4, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mDrawableHours1:I

    .line 332
    iput v4, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mDrawableHours2:I

    goto :goto_0
.end method

.method private updateMinutesImage(I)V
    .locals 5
    .parameter "min"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 337
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, strMin:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 339
    sget-object v1, Lcom/android/internal/widget/LenovoDigitalClockMix;->LOCK_SCREEN_TIME:[I

    aget v1, v1, v3

    iput v1, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mDrawableMinutes1:I

    .line 340
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LenovoDigitalClockMix;->drawableDigital(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mDrawableMinutes2:I

    .line 349
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 342
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LenovoDigitalClockMix;->drawableDigital(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mDrawableMinutes1:I

    .line 343
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LenovoDigitalClockMix;->drawableDigital(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mDrawableMinutes2:I

    goto :goto_0

    .line 345
    :cond_1
    const-string v1, "LenovoDigitalClockMix"

    const-string v2, "bad Minutes!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iput v3, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mDrawableMinutes1:I

    .line 347
    iput v3, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mDrawableMinutes2:I

    goto :goto_0
.end method

.method private updateTime()V
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x0

    .line 284
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 285
    .local v0, d:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v1

    .line 286
    .local v1, hr:I
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v2

    .line 287
    .local v2, min:I
    const-string v3, "LenovoDigitalClockMix"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hr; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "min: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-boolean v3, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mIs24:Z

    if-eqz v3, :cond_1

    .line 289
    iput v6, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mDrawableAmPm:I

    .line 302
    :cond_0
    :goto_0
    const-string v3, "LenovoDigitalClockMix"

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

    .line 303
    invoke-direct {p0, v1}, Lcom/android/internal/widget/LenovoDigitalClockMix;->updateHoursImage(I)V

    .line 304
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LenovoDigitalClockMix;->updateMinutesImage(I)V

    .line 305
    iget-object v3, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mTimeHour1:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mDrawableHours1:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 306
    iget-object v3, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mTimeHour2:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mDrawableHours2:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    iget-object v3, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mTimeMinutes1:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mDrawableMinutes1:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    iget-object v3, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mTimeMinutes2:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mDrawableMinutes2:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 309
    iget-object v3, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mTimeAmPm:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mDrawableAmPm:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 310
    return-void

    .line 291
    :cond_1
    if-ge v1, v7, :cond_2

    .line 292
    sget-object v3, Lcom/android/internal/widget/LenovoDigitalClockMix;->LOCK_SCREEN_AMPM:[I

    aget v3, v3, v6

    iput v3, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mDrawableAmPm:I

    .line 293
    if-nez v1, :cond_0

    .line 294
    const/16 v1, 0xc

    goto :goto_0

    .line 296
    :cond_2
    if-eq v1, v7, :cond_3

    .line 297
    add-int/lit8 v1, v1, -0xc

    .line 299
    :cond_3
    sget-object v3, Lcom/android/internal/widget/LenovoDigitalClockMix;->LOCK_SCREEN_AMPM:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iput v3, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mDrawableAmPm:I

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 220
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 222
    iget v1, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mAttached:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mAttached:I

    .line 225
    iget-object v1, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 226
    new-instance v1, Lcom/android/internal/widget/LenovoDigitalClockMix$TimeChangedReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LenovoDigitalClockMix$TimeChangedReceiver;-><init>(Lcom/android/internal/widget/LenovoDigitalClockMix;)V

    iput-object v1, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 227
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_1

    .line 236
    new-instance v1, Lcom/android/internal/widget/LenovoDigitalClockMix$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LenovoDigitalClockMix$FormatChangeObserver;-><init>(Lcom/android/internal/widget/LenovoDigitalClockMix;)V

    iput-object v1, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 237
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 241
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/LenovoDigitalClockMix;->updateTime()V

    .line 242
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 246
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 248
    iget v0, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mAttached:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mAttached:I

    .line 250
    iget-object v0, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 258
    :cond_1
    iput-object v2, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 259
    iput-object v2, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 260
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 206
    const v0, 0x10202ba

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LenovoDigitalClockMix;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mTimeHour1:Landroid/widget/ImageView;

    .line 207
    const v0, 0x10202bb

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LenovoDigitalClockMix;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mTimeHour2:Landroid/widget/ImageView;

    .line 208
    const v0, 0x10202bc

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LenovoDigitalClockMix;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mTimeMinutes1:Landroid/widget/ImageView;

    .line 209
    const v0, 0x10202bd

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LenovoDigitalClockMix;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mTimeMinutes2:Landroid/widget/ImageView;

    .line 210
    const v0, 0x10202be

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LenovoDigitalClockMix;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mTimeAmPm:Landroid/widget/ImageView;

    .line 212
    new-instance v0, Lcom/android/internal/widget/LenovoDigitalClockMix$AmPm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/LenovoDigitalClockMix$AmPm;-><init>(Landroid/view/View;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mAmPm:Lcom/android/internal/widget/LenovoDigitalClockMix$AmPm;

    .line 213
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mCalendar:Ljava/util/Calendar;

    .line 215
    invoke-direct {p0}, Lcom/android/internal/widget/LenovoDigitalClockMix;->setDateFormat()V

    .line 216
    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/internal/widget/LenovoDigitalClockMix;->mCalendar:Ljava/util/Calendar;

    .line 264
    invoke-direct {p0}, Lcom/android/internal/widget/LenovoDigitalClockMix;->updateTime()V

    .line 265
    return-void
.end method
