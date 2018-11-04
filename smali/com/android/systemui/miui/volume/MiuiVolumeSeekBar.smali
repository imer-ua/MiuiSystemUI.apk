.class public Lcom/android/systemui/miui/volume/MiuiVolumeSeekBar;
.super Lmiui/widget/VerticalSeekBar;
.source "MiuiVolumeSeekBar.java"


# instance fields
.field private mInjector:Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lmiui/widget/VerticalSeekBar;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;-><init>(Landroid/widget/SeekBar;Z)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeSeekBar;->mInjector:Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lmiui/widget/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;-><init>(Landroid/widget/SeekBar;Z)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeSeekBar;->mInjector:Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance v0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;-><init>(Landroid/widget/SeekBar;Z)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeSeekBar;->mInjector:Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;

    .line 26
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeSeekBar;->mInjector:Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->transformTouchEvent(Landroid/view/MotionEvent;)V

    .line 33
    invoke-super {p0, p1}, Lmiui/widget/VerticalSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
