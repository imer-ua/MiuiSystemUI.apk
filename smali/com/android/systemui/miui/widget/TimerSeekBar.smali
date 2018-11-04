.class public Lcom/android/systemui/miui/widget/TimerSeekBar;
.super Lmiui/widget/SeekBar;
.source "TimerSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/miui/widget/TimerSeekBar$OnTimeUpdateListener;
    }
.end annotation


# instance fields
.field private mCurrentSegmentPoint:I

.field private mDeterminedSegmentPoint:I

.field private mDragging:Z

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mOnTimeUpdateListener:Lcom/android/systemui/miui/widget/TimerSeekBar$OnTimeUpdateListener;

.field private mTimeSegments:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/miui/widget/TimerSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/miui/widget/TimerSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    sget-object v2, Lcom/android/systemui/miui/widget/R$styleable;->TimerSeekBar:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/android/systemui/miui/widget/R$styleable;->TimerSeekBar_timeSegments:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 39
    .local v1, "arrayId":I
    if-lez v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/miui/widget/TimerSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mTimeSegments:[I

    .line 42
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    invoke-direct {p0, p0}, Lcom/android/systemui/miui/widget/TimerSeekBar;->superSetOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 34
    return-void
.end method

.method private animateToProgress(I)V
    .locals 5
    .param p1, "progress"    # I

    .prologue
    const/4 v4, 0x1

    .line 156
    const-string/jumbo v1, "progress"

    new-array v2, v4, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 157
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 158
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 159
    sget-object v1, Lcom/android/systemui/Interpolators;->DECELERATE_QUART:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 160
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 155
    return-void
.end method

.method private determineProgressToSegment(I)I
    .locals 8
    .param p1, "progress"    # I

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/miui/widget/TimerSeekBar;->getMax()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mTimeSegments:[I

    array-length v4, v4

    div-int v2, v3, v4

    .line 102
    .local v2, "progressPerSeg":I
    div-int v0, p1, v2

    .line 103
    .local v0, "left":I
    int-to-double v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    int-to-double v6, v2

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 104
    .local v1, "midProgress":I
    if-ge p1, v1, :cond_0

    .end local v0    # "left":I
    :goto_0
    return v0

    .restart local v0    # "left":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setCurrentSegment(II)V
    .locals 2
    .param p1, "segment"    # I
    .param p2, "determinedSegmentPoint"    # I

    .prologue
    .line 108
    iget v0, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mCurrentSegmentPoint:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mDeterminedSegmentPoint:I

    if-eq p2, v0, :cond_1

    .line 109
    :cond_0
    iput p1, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mCurrentSegmentPoint:I

    .line 110
    iput p2, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mDeterminedSegmentPoint:I

    .line 111
    iget v0, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mCurrentSegmentPoint:I

    iget v1, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mDeterminedSegmentPoint:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/miui/widget/TimerSeekBar;->onSegmentChange(II)V

    .line 107
    :cond_1
    return-void
.end method

.method private superSetOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .prologue
    .line 182
    invoke-super {p0, p1}, Lmiui/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 181
    return-void
.end method

.method private timeToProgress(I)I
    .locals 9
    .param p1, "time"    # I

    .prologue
    const/4 v6, 0x0

    .line 79
    iget-object v7, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mTimeSegments:[I

    array-length v1, v7

    .line 80
    .local v1, "length":I
    iget-object v7, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mTimeSegments:[I

    add-int/lit8 v8, v1, -0x1

    aget v2, v7, v8

    .line 81
    .local v2, "maxTime":I
    if-gez p1, :cond_1

    move p1, v6

    .line 83
    :cond_0
    :goto_0
    if-ne p1, v2, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/miui/widget/TimerSeekBar;->getMax()I

    move-result v6

    return v6

    .line 81
    :cond_1
    if-le p1, v2, :cond_0

    move p1, v2

    goto :goto_0

    .line 87
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mTimeSegments:[I

    array-length v7, v7

    add-int/lit8 v0, v7, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 89
    iget-object v7, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mTimeSegments:[I

    aget v7, v7, v0

    if-ge v7, p1, :cond_3

    .line 90
    iget-object v6, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mTimeSegments:[I

    aget v4, v6, v0

    .line 91
    .local v4, "timeLeft":I
    iget-object v6, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mTimeSegments:[I

    add-int/lit8 v7, v0, 0x1

    aget v5, v6, v7

    .line 92
    .local v5, "timeRight":I
    sub-int v6, v5, v4

    int-to-float v3, v6

    .line 93
    .local v3, "segmentDuration":F
    invoke-virtual {p0}, Lcom/android/systemui/miui/widget/TimerSeekBar;->getMax()I

    move-result v6

    div-int/2addr v6, v1

    int-to-float v6, v6

    add-int/lit8 v7, v0, 0x1

    int-to-float v7, v7

    sub-int v8, p1, v4

    int-to-float v8, v8

    div-float/2addr v8, v3

    add-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    return v6

    .line 87
    .end local v3    # "segmentDuration":F
    .end local v4    # "timeLeft":I
    .end local v5    # "timeRight":I
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 96
    :cond_4
    return v6
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 117
    invoke-direct {p0, p2}, Lcom/android/systemui/miui/widget/TimerSeekBar;->determineProgressToSegment(I)I

    move-result v0

    .line 119
    .local v0, "determinedSegmentPoint":I
    invoke-virtual {p0}, Lcom/android/systemui/miui/widget/TimerSeekBar;->getMax()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mTimeSegments:[I

    array-length v4, v4

    div-int v1, v3, v4

    .line 120
    .local v1, "progressPerSeg":I
    div-int v2, p2, v1

    .line 121
    .local v2, "segment":I
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/miui/widget/TimerSeekBar;->setCurrentSegment(II)V

    .line 123
    iget-object v3, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v3, :cond_0

    .line 124
    iget-object v3, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v3, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 116
    :cond_0
    return-void
.end method

.method protected onSegmentChange(II)V
    .locals 1
    .param p1, "currentSegment"    # I
    .param p2, "determinedSegment"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mOnTimeUpdateListener:Lcom/android/systemui/miui/widget/TimerSeekBar$OnTimeUpdateListener;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mOnTimeUpdateListener:Lcom/android/systemui/miui/widget/TimerSeekBar$OnTimeUpdateListener;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/miui/widget/TimerSeekBar$OnTimeUpdateListener;->onSegmentChange(II)V

    .line 169
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mDragging:Z

    .line 132
    iget-object v0, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 129
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v2, 0x0

    .line 139
    iput-boolean v2, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mDragging:Z

    .line 140
    iget v3, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mDeterminedSegmentPoint:I

    iget v4, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mDeterminedSegmentPoint:I

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/miui/widget/TimerSeekBar;->setCurrentSegment(II)V

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/miui/widget/TimerSeekBar;->getMax()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mTimeSegments:[I

    array-length v4, v4

    div-int v0, v3, v4

    .line 144
    .local v0, "progressPerSeg":I
    iget v3, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mCurrentSegmentPoint:I

    mul-int/2addr v3, v0

    add-int/lit8 v1, v3, -0x1

    .line 145
    .local v1, "targetProgress":I
    invoke-direct {p0, v1}, Lcom/android/systemui/miui/widget/TimerSeekBar;->animateToProgress(I)V

    .line 147
    iget v3, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mCurrentSegmentPoint:I

    if-nez v3, :cond_1

    .line 148
    .local v2, "time":I
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/widget/TimerSeekBar;->onTimeSet(I)V

    .line 150
    iget-object v3, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v3, :cond_0

    .line 151
    iget-object v3, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v3, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 138
    :cond_0
    return-void

    .line 147
    .end local v2    # "time":I
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mTimeSegments:[I

    iget v4, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mCurrentSegmentPoint:I

    add-int/lit8 v4, v4, -0x1

    aget v2, v3, v4

    goto :goto_0
.end method

.method protected onTimeSet(I)V
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mOnTimeUpdateListener:Lcom/android/systemui/miui/widget/TimerSeekBar$OnTimeUpdateListener;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mOnTimeUpdateListener:Lcom/android/systemui/miui/widget/TimerSeekBar$OnTimeUpdateListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/miui/widget/TimerSeekBar$OnTimeUpdateListener;->onTimeSet(I)V

    .line 163
    :cond_0
    return-void
.end method

.method protected onTimeUpdate(I)V
    .locals 1
    .param p1, "timeRemain"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mOnTimeUpdateListener:Lcom/android/systemui/miui/widget/TimerSeekBar$OnTimeUpdateListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mOnTimeUpdateListener:Lcom/android/systemui/miui/widget/TimerSeekBar$OnTimeUpdateListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/miui/widget/TimerSeekBar$OnTimeUpdateListener;->onTimeUpdate(I)V

    .line 175
    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 186
    return-void
.end method

.method public setOnTimeUpdateListener(Lcom/android/systemui/miui/widget/TimerSeekBar$OnTimeUpdateListener;)V
    .locals 0
    .param p1, "onTimeUpdateListener"    # Lcom/android/systemui/miui/widget/TimerSeekBar$OnTimeUpdateListener;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mOnTimeUpdateListener:Lcom/android/systemui/miui/widget/TimerSeekBar$OnTimeUpdateListener;

    .line 47
    return-void
.end method

.method public updateRemainTime(I)V
    .locals 1
    .param p1, "remain"    # I

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/miui/widget/TimerSeekBar;->mDragging:Z

    if-eqz v0, :cond_0

    .line 67
    return-void

    .line 69
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/widget/TimerSeekBar;->timeToProgress(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/widget/TimerSeekBar;->setProgress(I)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/systemui/miui/widget/TimerSeekBar;->onTimeUpdate(I)V

    .line 64
    return-void
.end method
