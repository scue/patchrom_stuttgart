.class Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;
.super Landroid/app/ProgressDialog;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$21;


## direct methods
##.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$21;Landroid/content/Context;)V
#.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$18;Landroid/content/Context;I)V
#    .locals 0
#    .parameter
#    .parameter "x0"
#    .parameter "x1"
#
#    .prologue
#    .line 3634
#    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$21;
#
##    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
#    invoke-direct {p0, p2, p3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
#
#    return-void
#.end method

# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$21;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3634
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    invoke-direct {p0, p2, p3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 3650
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 3638
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 3641
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 3654
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 3644
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 3647
    const/4 v0, 0x1

    return v0
.end method
