.class public Landroid/view/ContextThemeWrapper;
.super Landroid/content/ContextWrapper;
.source "ContextThemeWrapper.java"


# instance fields
.field private mBase:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResource:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "base"
    .parameter "themeres"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p1, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    .line 41
    iput p2, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    .line 42
    return-void
.end method

.method private initializeTheme()V
    .locals 4

    .prologue
    .line 159
    iget-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 160
    .local v0, first:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    iput-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 162
    iget-object v2, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 163
    .local v1, theme:Landroid/content/res/Resources$Theme;
    if-eqz v1, :cond_0

    .line 164
    iget-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 167
    .end local v1           #theme:Landroid/content/res/Resources$Theme;
    :cond_0
    iget-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    iget v3, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    invoke-virtual {p0, v2, v3, v0}, Landroid/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 168
    return-void

    .line 159
    .end local v0           #first:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .parameter "newBase"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 46
    iput-object p1, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 134
    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 138
    :cond_0
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 140
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 130
    :goto_0
    return-object v0

    .line 126
    :cond_0
    iget v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0, v1}, Landroid/content/res/Resources;->selectDefaultTheme(II)I

    move-result v0

    iput v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    .line 128
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;->initializeTheme()V

    .line 130
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    goto :goto_0
.end method

.method public getThemeResId()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    .line 155
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 156
    return-void
.end method

.method public setTheme(I)V
    .locals 7
    .parameter "resid"

    .prologue
    const/16 v6, 0x18

    .line 51
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 52
    .local v3, stack:[Ljava/lang/StackTraceElement;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.holo.cts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    new-array v1, v6, [I

    fill-array-data v1, :array_0

    .line 78
    .local v1, resid_holo:[I
    new-array v2, v6, [I

    fill-array-data v2, :array_1

    .line 103
    .local v2, resid_holo_cts:[I
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 104
    aget v4, v1, v0

    if-ne p1, v4, :cond_1

    .line 105
    aget p1, v2, v0

    .line 111
    .end local v0           #n:I
    .end local v1           #resid_holo:[I
    .end local v2           #resid_holo_cts:[I
    :cond_0
    iput p1, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    .line 112
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;->initializeTheme()V

    .line 113
    return-void

    .line 103
    .restart local v0       #n:I
    .restart local v1       #resid_holo:[I
    .restart local v2       #resid_holo_cts:[I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    nop

    :array_0
    .array-data 0x4
        0x6bt 0x0t 0x3t 0x1t
        0x6ft 0x0t 0x3t 0x1t
        0x70t 0x0t 0x3t 0x1t
        0x71t 0x0t 0x3t 0x1t
        0x72t 0x0t 0x3t 0x1t
        0x77t 0x0t 0x3t 0x1t
        0x78t 0x0t 0x3t 0x1t
        0x7ft 0x0t 0x3t 0x1t
        0x6et 0x0t 0x3t 0x1t
        0x19t 0x1t 0x3t 0x1t
        0x73t 0x0t 0x3t 0x1t
        0x74t 0x0t 0x3t 0x1t
        0x75t 0x0t 0x3t 0x1t
        0x76t 0x0t 0x3t 0x1t
        0x79t 0x0t 0x3t 0x1t
        0x7at 0x0t 0x3t 0x1t
        0xf0t 0x0t 0x3t 0x1t
        0xf1t 0x0t 0x3t 0x1t
        0x7ct 0x0t 0x3t 0x1t
        0x6ct 0x0t 0x3t 0x1t
        0x6dt 0x0t 0x3t 0x1t
        0x7bt 0x0t 0x3t 0x1t
        0x7dt 0x0t 0x3t 0x1t
        0x7et 0x0t 0x3t 0x1t
    .end array-data

    .line 78
    :array_1
    .array-data 0x4
        0xd8t 0x1t 0x3t 0x1t
        0xd9t 0x1t 0x3t 0x1t
        0xdat 0x1t 0x3t 0x1t
        0xdbt 0x1t 0x3t 0x1t
        0xdct 0x1t 0x3t 0x1t
        0xddt 0x1t 0x3t 0x1t
        0xdet 0x1t 0x3t 0x1t
        0xdft 0x1t 0x3t 0x1t
        0xe0t 0x1t 0x3t 0x1t
        0xe1t 0x1t 0x3t 0x1t
        0xe2t 0x1t 0x3t 0x1t
        0xe3t 0x1t 0x3t 0x1t
        0xe4t 0x1t 0x3t 0x1t
        0xe5t 0x1t 0x3t 0x1t
        0xe6t 0x1t 0x3t 0x1t
        0xe7t 0x1t 0x3t 0x1t
        0xe8t 0x1t 0x3t 0x1t
        0xe9t 0x1t 0x3t 0x1t
        0xeat 0x1t 0x3t 0x1t
        0xebt 0x1t 0x3t 0x1t
        0xect 0x1t 0x3t 0x1t
        0xedt 0x1t 0x3t 0x1t
        0xeet 0x1t 0x3t 0x1t
        0xeft 0x1t 0x3t 0x1t
    .end array-data
.end method
