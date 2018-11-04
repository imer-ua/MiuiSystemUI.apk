.class Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;
.super Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;
.source "BoundsSeekBarInjector.java"


# instance fields
.field private mBoundsEnd:F

.field private mBoundsStart:F

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTouchBoundsEnd:F

.field private mTouchBoundsStart:F

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;Z)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "vertical"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;-><init>(Landroid/widget/SeekBar;Z)V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    .line 29
    iput-boolean p2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mVertical:Z

    .line 26
    return-void
.end method

.method private computeTouchOffset()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 72
    iget-boolean v2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mVertical:Z

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 75
    .local v0, "progressHeight":F
    iget-object v2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mBoundsStart:F

    iget-object v4, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mTouchBoundsStart:F

    .line 76
    iget-object v2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mBoundsEnd:F

    iget-object v4, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mTouchBoundsEnd:F

    .line 70
    .end local v0    # "progressHeight":F
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 79
    .local v1, "progressWidth":F
    iget-object v2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mBoundsStart:F

    iget-object v4, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mTouchBoundsStart:F

    .line 80
    iget-object v2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mBoundsEnd:F

    iget-object v4, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mTouchBoundsEnd:F

    goto :goto_0
.end method


# virtual methods
.method public setBounds(FF)V
    .locals 0
    .param p1, "boundsStart"    # F
    .param p2, "boundsEnd"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mBoundsStart:F

    .line 34
    iput p2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mBoundsEnd:F

    .line 32
    return-void
.end method

.method public setVertical(Z)V
    .locals 0
    .param p1, "vertical"    # Z

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->setVertical(Z)V

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mVertical:Z

    .line 38
    return-void
.end method

.method public transformTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/android/systemui/miui/widget/RelativeSeekBarInjector;->transformTouchEvent(Landroid/view/MotionEvent;)V

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 56
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mVertical:Z

    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 58
    iget v3, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mTouchBoundsStart:F

    iget v4, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mTouchBoundsEnd:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 59
    iget v4, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mTouchBoundsStart:F

    iget v5, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mTouchBoundsEnd:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 57
    invoke-static {v2, v3, v4}, Lcom/android/systemui/miui/volume/Util;->constrain(FFF)F

    move-result v1

    .line 60
    .local v1, "transformedY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v2, v1, v2

    invoke-virtual {p1, v6, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 49
    .end local v1    # "transformedY":F
    :goto_1
    return-void

    .line 53
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->computeTouchOffset()V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 63
    iget v3, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mTouchBoundsStart:F

    iget v4, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mTouchBoundsEnd:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 64
    iget v4, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mTouchBoundsStart:F

    iget v5, p0, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->mTouchBoundsEnd:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 62
    invoke-static {v2, v3, v4}, Lcom/android/systemui/miui/volume/Util;->constrain(FFF)F

    move-result v0

    .line 65
    .local v0, "transformedX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v2, v0, v2

    invoke-virtual {p1, v2, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_1

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
