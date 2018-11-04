.class Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;
.super Ljava/lang/Object;
.source "MiuiVolumeTimerDrawableHelper.java"

# interfaces
.implements Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundSegments:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mCountDownStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSegment:I

.field private mDeterminedSegment:I

.field private mDragging:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgress:Landroid/graphics/drawable/Drawable;

.field private mProgressDraggingIcon:Landroid/graphics/drawable/Drawable;

.field private mProgressDraggingRect:Landroid/graphics/drawable/Drawable;

.field private mProgressDraggingRectIdle:Landroid/graphics/drawable/Drawable;

.field private mProgressNormalRect:Landroid/graphics/drawable/Drawable;

.field private mTicking:Z

.field private mTickingTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeDrawableBg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

.field private mTimeDrawableFg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

.field private mTimeDrawableHint:Ljava/lang/String;

.field private mTimeRemain:I

.field private mTimeSegmentTitle:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressDraggingRect:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressNormalRect:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTicking:Z

    return v0
.end method

.method constructor <init>(Landroid/widget/SeekBar;Z)V
    .locals 2
    .param p1, "timer"    # Landroid/widget/SeekBar;
    .param p2, "drawTickingTime"    # Z

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTickingTimes:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mCountDownStates:Ljava/util/List;

    .line 61
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/miui/volume/R$string;->miui_ringer_count_down:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableHint:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/miui/volume/R$array;->miui_volume_timer_segments_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeSegmentTitle:[Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->setupDrawables(Landroid/content/Context;Z)V

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->setOutlineProvider(Landroid/view/View;)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->updateDrawables()V

    .line 60
    :cond_0
    return-void
.end method

.method private addTextDrawables(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 91
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/LayerDrawable;

    if-nez v2, :cond_0

    .line 92
    const-string/jumbo v2, "VolumeTimerDrawables"

    const-string/jumbo v3, "progress drawable is not a LayerDrawable"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 97
    .local v0, "layer":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_timer_time_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 99
    .local v1, "textSize":F
    new-instance v2, Lcom/android/systemui/miui/widget/CenterTextDrawable;

    invoke-direct {v2}, Lcom/android/systemui/miui/widget/CenterTextDrawable;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableBg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    .line 100
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableBg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    invoke-virtual {v2, v1}, Lcom/android/systemui/miui/widget/CenterTextDrawable;->setTextSize(F)V

    .line 101
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableBg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/miui/volume/R$color;->miui_volume_tint_dark:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/miui/widget/CenterTextDrawable;->setTextColor(I)V

    .line 102
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mBackground:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableBg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    aput-object v4, v3, v9

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 v3, 0x1020000

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 104
    new-instance v2, Lcom/android/systemui/miui/widget/CenterTextDrawable;

    invoke-direct {v2}, Lcom/android/systemui/miui/widget/CenterTextDrawable;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableFg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    .line 105
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableFg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    invoke-virtual {v2, v1}, Lcom/android/systemui/miui/widget/CenterTextDrawable;->setTextSize(F)V

    .line 106
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableFg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/miui/volume/R$color;->miui_volume_tint_light:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/miui/widget/CenterTextDrawable;->setTextColor(I)V

    .line 107
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    .line 108
    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    .line 109
    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgress:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v5

    .line 110
    new-instance v4, Landroid/graphics/drawable/ScaleDrawable;

    iget-object v5, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableFg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    const v6, 0x800003

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/Drawable;IFF)V

    aput-object v4, v3, v9

    .line 107
    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const v3, 0x102000d

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 112
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTickingTimes:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableFg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTickingTimes:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableBg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method private formatRemainTime(I)Ljava/lang/String;
    .locals 8
    .param p1, "remain"    # I

    .prologue
    .line 267
    div-int/lit8 v3, p1, 0x3c

    div-int/lit8 v0, v3, 0x3c

    .line 268
    .local v0, "hour":I
    div-int/lit8 v3, p1, 0x3c

    rem-int/lit8 v1, v3, 0x3c

    .line 269
    .local v1, "minutes":I
    rem-int/lit8 v2, p1, 0x3c

    .line 270
    .local v2, "seconds":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private setOutlineProvider(Landroid/view/View;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/view/View;

    .prologue
    .line 117
    new-instance v0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper$1;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 116
    return-void
.end method

.method private setupDrawables(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawTickingTime"    # Z

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x1020000

    invoke-static {v0, v1}, Lcom/android/systemui/miui/volume/Util;->findDrawableById(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mBackground:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/android/systemui/miui/volume/R$id;->miui_volume_timer_background_segments:I

    invoke-static {v0, v1}, Lcom/android/systemui/miui/volume/Util;->findDrawableById(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mBackgroundSegments:Landroid/graphics/drawable/Drawable;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDrawable:Landroid/graphics/drawable/Drawable;

    const v1, 0x102000d

    invoke-static {v0, v1}, Lcom/android/systemui/miui/volume/Util;->findDrawableById(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgress:Landroid/graphics/drawable/Drawable;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgress:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/android/systemui/miui/volume/R$id;->miui_volume_timer_progress_normal:I

    invoke-static {v0, v1}, Lcom/android/systemui/miui/volume/Util;->findDrawableById(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressNormalRect:Landroid/graphics/drawable/Drawable;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgress:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/android/systemui/miui/volume/R$id;->miui_volume_timer_progress_dragging_rect:I

    invoke-static {v0, v1}, Lcom/android/systemui/miui/volume/Util;->findDrawableById(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressDraggingRect:Landroid/graphics/drawable/Drawable;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgress:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/android/systemui/miui/volume/R$id;->miui_volume_timer_progress_dragging_rect_idle:I

    invoke-static {v0, v1}, Lcom/android/systemui/miui/volume/Util;->findDrawableById(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressDraggingRectIdle:Landroid/graphics/drawable/Drawable;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgress:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/android/systemui/miui/volume/R$id;->miui_volume_timer_progress_dragging_icon:I

    invoke-static {v0, v1}, Lcom/android/systemui/miui/volume/Util;->findDrawableById(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressDraggingIcon:Landroid/graphics/drawable/Drawable;

    .line 85
    if-eqz p2, :cond_0

    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->addTextDrawables(Landroid/content/Context;)V

    .line 76
    :cond_0
    return-void
.end method

.method private updateCountDownStateText()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 247
    const-string/jumbo v4, ""

    .line 248
    .local v4, "text":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    if-eqz v5, :cond_0

    .line 249
    iget v5, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDeterminedSegment:I

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeSegmentTitle:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v8, v6}, Lcom/android/systemui/miui/volume/Util;->constrain(III)I

    move-result v2

    .line 250
    .local v2, "segmentIndex":I
    iget-object v5, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeSegmentTitle:[Ljava/lang/String;

    aget-object v3, v5, v2

    .line 251
    .local v3, "segmentTitle":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/miui/volume/R$string;->miui_ringer_count_down_time:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 254
    .end local v2    # "segmentIndex":I
    .end local v3    # "segmentTitle":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mCountDownStates:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "o$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 255
    .local v0, "o":Ljava/lang/Object;
    instance-of v5, v0, Lcom/android/systemui/miui/widget/CenterTextDrawable;

    if-eqz v5, :cond_2

    .line 256
    check-cast v0, Lcom/android/systemui/miui/widget/CenterTextDrawable;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0, v4}, Lcom/android/systemui/miui/widget/CenterTextDrawable;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v5, v0, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 258
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 246
    :cond_3
    return-void
.end method

.method private updateDrawables()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 128
    iget-object v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressDraggingIcon:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTicking:Z

    if-eqz v3, :cond_6

    move v3, v5

    :goto_0
    invoke-static {v6, v3}, Lcom/android/systemui/miui/DrawableAnimators;->fade(Landroid/graphics/drawable/Drawable;Z)Landroid/animation/Animator;

    .line 129
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mBackgroundSegments:Landroid/graphics/drawable/Drawable;

    iget-boolean v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    invoke-static {v3, v6}, Lcom/android/systemui/miui/DrawableAnimators;->fade(Landroid/graphics/drawable/Drawable;Z)Landroid/animation/Animator;

    .line 130
    iget-object v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressDraggingRectIdle:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTicking:Z

    if-eqz v3, :cond_7

    :cond_0
    move v3, v5

    :goto_1
    invoke-static {v6, v3}, Lcom/android/systemui/miui/DrawableAnimators;->fade(Landroid/graphics/drawable/Drawable;Z)Landroid/animation/Animator;

    .line 132
    iget-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTicking:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    if-eqz v3, :cond_8

    :cond_1
    const/4 v2, 0x0

    .line 133
    .local v2, "ongoing":Z
    :goto_2
    iget-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTicking:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    if-eqz v3, :cond_9

    :cond_2
    const/4 v0, 0x0

    .line 135
    .local v0, "idle":Z
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableFg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    if-eqz v3, :cond_3

    .line 136
    iget-object v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableFg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    if-eqz v2, :cond_a

    iget v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mCurrentSegment:I

    if-le v3, v4, :cond_a

    move v3, v4

    :goto_4
    invoke-static {v6, v3}, Lcom/android/systemui/miui/DrawableAnimators;->fade(Landroid/graphics/drawable/Drawable;Z)Landroid/animation/Animator;

    .line 138
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableBg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    if-eqz v3, :cond_4

    .line 139
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableBg:Lcom/android/systemui/miui/widget/CenterTextDrawable;

    if-eqz v2, :cond_b

    iget v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mCurrentSegment:I

    if-gt v6, v4, :cond_b

    :goto_5
    invoke-static {v3, v4}, Lcom/android/systemui/miui/DrawableAnimators;->fade(Landroid/graphics/drawable/Drawable;Z)Landroid/animation/Animator;

    .line 142
    :cond_4
    if-eqz v0, :cond_5

    .line 143
    invoke-direct {p0, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->updateTickingTimeText(I)V

    .line 146
    :cond_5
    if-nez v2, :cond_e

    .line 147
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressNormalRect:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_c

    const/4 v1, 0x1

    .line 149
    .local v1, "normalRectVisible":Z
    :goto_6
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressNormalRect:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, v5}, Lcom/android/systemui/miui/volume/Util;->setVisOrInvis(Landroid/graphics/drawable/Drawable;Z)V

    .line 150
    if-eqz v1, :cond_d

    .line 151
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressDraggingRect:Landroid/graphics/drawable/Drawable;

    iget-boolean v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    invoke-static {v3, v4}, Lcom/android/systemui/miui/volume/Util;->setVisOrInvis(Landroid/graphics/drawable/Drawable;Z)V

    .line 155
    :goto_7
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressDraggingRect:Landroid/graphics/drawable/Drawable;

    .line 156
    sget v5, Lcom/android/systemui/miui/volume/R$array;->miui_volume_progress_dragging_corners:I

    .line 155
    invoke-static {v3, v4, v5}, Lcom/android/systemui/miui/DrawableAnimators;->updateCornerRadii(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/animation/Animator;

    .line 157
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressDraggingRectIdle:Landroid/graphics/drawable/Drawable;

    .line 158
    sget v5, Lcom/android/systemui/miui/volume/R$array;->miui_volume_progress_dragging_corners:I

    .line 157
    invoke-static {v3, v4, v5}, Lcom/android/systemui/miui/DrawableAnimators;->updateCornerRadii(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/animation/Animator;

    .line 127
    .end local v1    # "normalRectVisible":Z
    :goto_8
    return-void

    .end local v0    # "idle":Z
    .end local v2    # "ongoing":Z
    :cond_6
    move v3, v4

    .line 128
    goto :goto_0

    :cond_7
    move v3, v4

    .line 130
    goto :goto_1

    .line 132
    :cond_8
    const/4 v2, 0x1

    .restart local v2    # "ongoing":Z
    goto :goto_2

    .line 133
    :cond_9
    const/4 v0, 0x1

    .restart local v0    # "idle":Z
    goto :goto_3

    :cond_a
    move v3, v5

    .line 136
    goto :goto_4

    :cond_b
    move v4, v0

    .line 139
    goto :goto_5

    .line 147
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "normalRectVisible":Z
    goto :goto_6

    .line 153
    :cond_d
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressDraggingRect:Landroid/graphics/drawable/Drawable;

    iget-boolean v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    invoke-static {v3, v4}, Lcom/android/systemui/miui/DrawableAnimators;->fade(Landroid/graphics/drawable/Drawable;Z)Landroid/animation/Animator;

    goto :goto_7

    .line 160
    .end local v1    # "normalRectVisible":Z
    :cond_e
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressDraggingRectIdle:Landroid/graphics/drawable/Drawable;

    .line 161
    sget v5, Lcom/android/systemui/miui/volume/R$array;->miui_volume_progress_released_corners:I

    .line 160
    invoke-static {v3, v4, v5}, Lcom/android/systemui/miui/DrawableAnimators;->updateCornerRadii(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/animation/Animator;

    .line 163
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mProgressDraggingRect:Landroid/graphics/drawable/Drawable;

    .line 164
    sget v5, Lcom/android/systemui/miui/volume/R$array;->miui_volume_progress_released_corners:I

    .line 163
    invoke-static {v3, v4, v5}, Lcom/android/systemui/miui/DrawableAnimators;->updateCornerRadii(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/animation/Animator;

    move-result-object v3

    .line 165
    new-instance v4, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper$2;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;)V

    .line 163
    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_8
.end method

.method private updateTickingTimeText(I)V
    .locals 5
    .param p1, "remain"    # I

    .prologue
    .line 229
    iget-boolean v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTicking:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    if-eqz v4, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 230
    .local v0, "idle":Z
    :goto_0
    const-string/jumbo v3, ""

    .line 231
    .local v3, "text":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 232
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeDrawableHint:Ljava/lang/String;

    .line 237
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTickingTimes:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "o$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 238
    .local v1, "o":Ljava/lang/Object;
    instance-of v4, v1, Lcom/android/systemui/miui/widget/CenterTextDrawable;

    if-eqz v4, :cond_4

    .line 239
    check-cast v1, Lcom/android/systemui/miui/widget/CenterTextDrawable;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1, v3}, Lcom/android/systemui/miui/widget/CenterTextDrawable;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 229
    .end local v0    # "idle":Z
    .end local v2    # "o$iterator":Ljava/util/Iterator;
    .end local v3    # "text":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "idle":Z
    goto :goto_0

    .line 234
    .restart local v3    # "text":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->formatRemainTime(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 240
    .restart local v1    # "o":Ljava/lang/Object;
    .restart local v2    # "o$iterator":Ljava/util/Iterator;
    :cond_4
    instance-of v4, v1, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 241
    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 228
    :cond_5
    return-void
.end method


# virtual methods
.method public addCountDownStateReceiver(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mCountDownStates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method

.method public addTickingTimeReceiver(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTickingTimes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    return-void
.end method

.method public onSegmentChange(II)V
    .locals 1
    .param p1, "currentSegment"    # I
    .param p2, "determinedSegment"    # I

    .prologue
    .line 194
    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mCurrentSegment:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDeterminedSegment:I

    if-eq v0, p2, :cond_1

    .line 195
    :cond_0
    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mCurrentSegment:I

    .line 196
    iput p2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDeterminedSegment:I

    .line 197
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->updateDrawables()V

    .line 200
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    if-eqz v0, :cond_2

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->updateCountDownStateText()V

    .line 193
    :cond_2
    return-void
.end method

.method public onTimeUpdate(I)V
    .locals 2
    .param p1, "remain"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeRemain:I

    .line 209
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->updateTickingTimeText(I)V

    .line 210
    if-lez p1, :cond_1

    const/4 v0, 0x1

    .line 212
    .local v0, "ticking":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTicking:Z

    if-eq v1, v0, :cond_0

    .line 213
    iput-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTicking:Z

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->updateDrawables()V

    .line 207
    :cond_0
    return-void

    .line 210
    .end local v0    # "ticking":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "ticking":Z
    goto :goto_0
.end method

.method public onTouchDown()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->updateDrawables()V

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->updateCountDownStateText()V

    .line 179
    return-void
.end method

.method public onTouchRelease()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mDragging:Z

    .line 188
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->updateDrawables()V

    .line 189
    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->mTimeRemain:I

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->updateTickingTimeText(I)V

    .line 186
    return-void
.end method
