.class public Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;
.super Ljava/lang/Object;
.source "RelativeSeekBarInjector.java"


# instance fields
.field private mOffset:F

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;Z)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "vertical"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    .line 19
    iput-boolean p2, p0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->mVertical:Z

    .line 17
    return-void
.end method

.method private computeTouchOffset(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "down"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 42
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 43
    .local v2, "location":[I
    iget-object v6, p0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v2}, Landroid/widget/SeekBar;->getLocationOnScreen([I)V

    .line 45
    iget-object v6, p0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 46
    .local v3, "progress":F
    iget-boolean v6, p0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->mVertical:Z

    if-eqz v6, :cond_0

    .line 47
    iget-object v6, p0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v7

    sub-int v4, v6, v7

    .line 48
    .local v4, "visualHeight":I
    const/4 v6, 0x1

    aget v6, v2, v6

    iget-object v7, p0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v3

    int-to-float v8, v4

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 49
    .local v1, "currentY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    sub-float v6, v1, v6

    iput v6, p0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->mOffset:F

    .line 41
    .end local v1    # "currentY":F
    .end local v4    # "visualHeight":I
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getPaddingStart()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getPaddingEnd()I

    move-result v7

    sub-int v5, v6, v7

    .line 52
    .local v5, "visualWidth":I
    iget-object v6, p0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 53
    aget v6, v2, v8

    iget-object v7, p0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getPaddingEnd()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v7, v5

    mul-float/2addr v7, v3

    sub-float v0, v6, v7

    .line 55
    .local v0, "currentX":F
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    sub-float v6, v0, v6

    iput v6, p0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->mOffset:F

    goto :goto_0

    .line 54
    .end local v0    # "currentX":F
    :cond_1
    aget v6, v2, v8

    iget-object v7, p0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getPaddingStart()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v7, v5

    mul-float/2addr v7, v3

    add-float v0, v6, v7

    .restart local v0    # "currentX":F
    goto :goto_1
.end method


# virtual methods
.method public setVertical(Z)V
    .locals 0
    .param p1, "vertical"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->mVertical:Z

    .line 22
    return-void
.end method

.method public transformTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 37
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->mVertical:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->mVertical:Z

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->mOffset:F

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 31
    return-void

    .line 34
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->computeTouchOffset(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 37
    :cond_1
    iget v0, p0, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->mOffset:F

    goto :goto_1

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
