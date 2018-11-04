.class public Lcom/android/systemui/settings/ToggleSeekBar;
.super Landroid/widget/SeekBar;
.source "ToggleSeekBar.java"


# instance fields
.field private mAccessibilityLabel:Ljava/lang/String;

.field private mInjector:Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/settings/ToggleSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/settings/ToggleSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSeekBar;->initInjector()V

    .line 39
    return-void
.end method

.method private initInjector()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;-><init>(Landroid/widget/SeekBar;Z)V

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mInjector:Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;

    .line 44
    return-void
.end method


# virtual methods
.method protected internalSetPadding(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 60
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mAccessibilityLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mAccessibilityLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnabled(Z)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mInjector:Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mInjector:Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->transformTouchEvent(Landroid/view/MotionEvent;)V

    .line 56
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAccessibilityLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mAccessibilityLabel:Ljava/lang/String;

    .line 64
    return-void
.end method
