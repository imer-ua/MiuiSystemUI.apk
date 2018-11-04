.class public Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;
.super Lcom/android/systemui/miui/widget/TimerSeekBar;
.source "MiuiVolumeTimerSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;
    }
.end annotation


# instance fields
.field private mBoundsStart:I

.field private mCurrentSegment:I

.field protected mInjector:Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;

.field private mMotions:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;

.field private mTimeRemain:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/miui/widget/TimerSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    sget-object v2, Lcom/android/systemui/miui/volume/R$styleable;->MiuiVolumeTimerSeekBar:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/android/systemui/miui/volume/R$styleable;->MiuiVolumeTimerSeekBar_progressBoundsStart:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mBoundsStart:I

    .line 36
    sget v2, Lcom/android/systemui/miui/volume/R$styleable;->MiuiVolumeTimerSeekBar_drawTickingTime:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 37
    .local v1, "drawTickingTime":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    new-instance v2, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;-><init>(Landroid/widget/SeekBar;Z)V

    iput-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mMotions:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;

    .line 40
    new-instance v2, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;-><init>(Landroid/widget/SeekBar;Z)V

    iput-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mInjector:Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;

    .line 41
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mInjector:Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;

    iget v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mBoundsStart:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->setBounds(FF)V

    .line 31
    return-void
.end method

.method private constrainProgress(I)I
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 82
    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mBoundsStart:I

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->getMax()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/systemui/miui/volume/Util;->constrain(III)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addCountDownStateReceiver(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mMotions:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;

    invoke-interface {v0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;->addCountDownStateReceiver(Landroid/widget/TextView;)V

    .line 108
    return-void
.end method

.method public addTickingTimeReceiver(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mMotions:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;

    invoke-interface {v0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;->addTickingTimeReceiver(Landroid/widget/TextView;)V

    .line 104
    return-void
.end method

.method public getRemainTime()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mTimeRemain:I

    return v0
.end method

.method public onSegmentChange(II)V
    .locals 1
    .param p1, "currentSegment"    # I
    .param p2, "determinedSegment"    # I

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lcom/android/systemui/miui/widget/TimerSeekBar;->onSegmentChange(II)V

    .line 71
    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mCurrentSegment:I

    .line 72
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mMotions:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;->onSegmentChange(II)V

    .line 69
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/systemui/miui/widget/TimerSeekBar;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mMotions:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;

    invoke-interface {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;->onTouchDown()V

    .line 53
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/systemui/miui/widget/TimerSeekBar;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mMotions:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;

    invoke-interface {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;->onTouchRelease()V

    .line 58
    return-void
.end method

.method public onTimeSet(I)V
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/systemui/miui/widget/TimerSeekBar;->onTimeSet(I)V

    .line 65
    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mTimeRemain:I

    .line 66
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mMotions:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;

    invoke-interface {v0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;->onTimeUpdate(I)V

    .line 63
    return-void
.end method

.method public onTimeUpdate(I)V
    .locals 1
    .param p1, "timeRemain"    # I

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/systemui/miui/widget/TimerSeekBar;->onTimeUpdate(I)V

    .line 77
    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mTimeRemain:I

    .line 78
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mMotions:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;

    invoke-interface {v0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;->onTimeUpdate(I)V

    .line 75
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->transformTouchEvent(Landroid/view/MotionEvent;)V

    .line 50
    invoke-super {p0, p1}, Lcom/android/systemui/miui/widget/TimerSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I

    .prologue
    monitor-enter p0

    .line 94
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/systemui/miui/widget/TimerSeekBar;->setMax(I)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mInjector:Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mInjector:Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;

    iget v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mBoundsStart:I

    int-to-float v1, v1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->setBounds(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 93
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    monitor-enter p0

    .line 86
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->constrainProgress(I)I

    move-result v0

    invoke-super {p0, v0}, Lcom/android/systemui/miui/widget/TimerSeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 85
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected transformTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mInjector:Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->transformTouchEvent(Landroid/view/MotionEvent;)V

    .line 44
    return-void
.end method
