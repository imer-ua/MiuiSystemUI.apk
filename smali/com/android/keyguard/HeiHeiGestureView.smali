.class public Lcom/android/keyguard/HeiHeiGestureView;
.super Landroid/widget/FrameLayout;
.source "HeiHeiGestureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;,
        Lcom/android/keyguard/HeiHeiGestureView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final DENSITY:F

.field private static final MOVE_DOWN_DISTANCE_THREDHOLD:F

.field private static final MOVE_UP_DISTANCE_THREDHOLD:F

.field private static final TWO_POINTS_DISTANCE_X_THREDHOLD:F

.field private static final TWO_POINTS_DISTANCE_Y_THREDHOLD:F

.field private static final TWO_POINTS_DISTANCE_Y_THREDHOLD_MIN:F


# instance fields
.field private mBottomY:F

.field private mChances:[D

.field private mCurrentPicture:I

.field private mCurrentSound:Ljava/lang/String;

.field private mFirstY:F

.field private mImageView:Landroid/widget/ImageView;

.field private mLastMatchTime:J

.field private mLastTiggerTime:J

.field private mListener:Lcom/android/keyguard/HeiHeiGestureView$OnTriggerListener;

.field private mPictures:[I

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mSounds:[Ljava/lang/String;

.field private mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

.field private mTopY:F


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/HeiHeiGestureView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 23
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/keyguard/HeiHeiGestureView;->DENSITY:F

    .line 27
    sget v0, Lcom/android/keyguard/HeiHeiGestureView;->DENSITY:F

    const/high16 v1, 0x43160000    # 150.0f

    mul-float/2addr v0, v1

    sput v0, Lcom/android/keyguard/HeiHeiGestureView;->TWO_POINTS_DISTANCE_X_THREDHOLD:F

    .line 28
    sget v0, Lcom/android/keyguard/HeiHeiGestureView;->DENSITY:F

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    sput v0, Lcom/android/keyguard/HeiHeiGestureView;->TWO_POINTS_DISTANCE_Y_THREDHOLD:F

    .line 29
    sget v0, Lcom/android/keyguard/HeiHeiGestureView;->DENSITY:F

    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v0, v1

    sput v0, Lcom/android/keyguard/HeiHeiGestureView;->TWO_POINTS_DISTANCE_Y_THREDHOLD_MIN:F

    .line 30
    sget v0, Lcom/android/keyguard/HeiHeiGestureView;->DENSITY:F

    mul-float/2addr v0, v2

    sput v0, Lcom/android/keyguard/HeiHeiGestureView;->MOVE_DOWN_DISTANCE_THREDHOLD:F

    .line 31
    sget v0, Lcom/android/keyguard/HeiHeiGestureView;->DENSITY:F

    mul-float/2addr v0, v2

    sput v0, Lcom/android/keyguard/HeiHeiGestureView;->MOVE_UP_DISTANCE_THREDHOLD:F

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mChances:[D

    .line 60
    return-void
.end method

.method private exitWaiting(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 164
    sget-object v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->WAITING:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    iget-object v1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    if-ne v0, v1, :cond_1

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-ne v1, v0, :cond_1

    .line 167
    invoke-direct {p0, p1}, Lcom/android/keyguard/HeiHeiGestureView;->getElapsedTime(Landroid/view/MotionEvent;)J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 168
    sget-object v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->MOVE_UP:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    iput-object v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 169
    invoke-direct {p0, p1}, Lcom/android/keyguard/HeiHeiGestureView;->getTrackingY(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mFirstY:F

    .line 170
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mBottomY:F

    .line 171
    const/high16 v0, 0x4f000000

    iput v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mTopY:F

    .line 172
    invoke-direct {p0}, Lcom/android/keyguard/HeiHeiGestureView;->prepare()V

    .line 177
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 175
    :cond_0
    sget-object v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->STOP:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    iput-object v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    goto :goto_0

    .line 179
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getElapsedTime(Landroid/view/MotionEvent;)J
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getTrackingY(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method

.method private matchGesture(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 184
    iget v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mBottomY:F

    iget v1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mTopY:F

    sub-float/2addr v0, v1

    sget v1, Lcom/android/keyguard/HeiHeiGestureView;->MOVE_DOWN_DISTANCE_THREDHOLD:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 185
    invoke-direct {p0, p1}, Lcom/android/keyguard/HeiHeiGestureView;->getElapsedTime(Landroid/view/MotionEvent;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 186
    :cond_0
    sget-object v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->STOP:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    iput-object v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 187
    const/4 v0, 0x0

    return v0

    .line 189
    :cond_1
    sget-object v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->MATCHED:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    iput-object v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/keyguard/HeiHeiGestureView;->getElapsedTime(Landroid/view/MotionEvent;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mLastMatchTime:J

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method private playSound()V
    .locals 2

    .prologue
    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method private prepare()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 106
    const-string/jumbo v2, "/system/media/audio/ui/HeiHei.mp3"

    .line 107
    .local v2, "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/keyguard/HeiHeiGestureView;->mChances:[D

    array-length v3, v3

    if-lez v3, :cond_0

    .line 108
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    .line 109
    .local v4, "rand":D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/HeiHeiGestureView;->mChances:[D

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/android/keyguard/HeiHeiGestureView;->mChances:[D

    aget-wide v6, v3, v1

    sub-double/2addr v4, v6

    .line 111
    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_2

    .line 112
    iget-object v3, p0, Lcom/android/keyguard/HeiHeiGestureView;->mSounds:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 113
    iget-object v3, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPictures:[I

    aget v3, v3, v1

    iput v3, p0, Lcom/android/keyguard/HeiHeiGestureView;->mCurrentPicture:I

    .line 120
    .end local v1    # "i":I
    .end local v4    # "rand":D
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_1

    .line 121
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    .line 122
    iget-object v3, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 125
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/HeiHeiGestureView;->mCurrentSound:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 126
    iget-object v3, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 127
    iget-object v3, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 133
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 105
    :goto_2
    return-void

    .line 109
    .restart local v1    # "i":I
    .restart local v4    # "rand":D
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "i":I
    .end local v4    # "rand":D
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V

    .line 131
    iget-object v3, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    iput-object v8, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_2
.end method

.method private trigger()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mLastTiggerTime:J

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mChances:[D

    array-length v0, v0

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mListener:Lcom/android/keyguard/HeiHeiGestureView$OnTriggerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mListener:Lcom/android/keyguard/HeiHeiGestureView$OnTriggerListener;

    invoke-interface {v0}, Lcom/android/keyguard/HeiHeiGestureView$OnTriggerListener;->onTrigger()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_sounds_enabled"

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 87
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/android/keyguard/HeiHeiGestureView;->playSound()V

    .line 82
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/HeiHeiGestureView;->playSound()V

    .line 94
    iget-object v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mCurrentPicture:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    new-instance v0, Lcom/android/keyguard/HeiHeiGestureView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/HeiHeiGestureView$1;-><init>(Lcom/android/keyguard/HeiHeiGestureView;)V

    .line 101
    const-wide/16 v2, 0x5dc

    .line 96
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/HeiHeiGestureView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-wide v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mLastTiggerTime:J

    const-wide/16 v2, 0x5dc

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 153
    sget-object v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->WAITING:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    iput-object v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 156
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/HeiHeiGestureView;->exitWaiting(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v6, v1, :cond_1

    .line 198
    sget-object v1, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->MATCHED:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    iget-object v2, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    if-ne v1, v2, :cond_0

    .line 199
    invoke-direct {p0, p1}, Lcom/android/keyguard/HeiHeiGestureView;->getElapsedTime(Landroid/view/MotionEvent;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/keyguard/HeiHeiGestureView;->mLastMatchTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/android/keyguard/HeiHeiGestureView;->trigger()V

    .line 202
    :cond_0
    return v6

    .line 205
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/keyguard/HeiHeiGestureView;->exitWaiting(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v6

    .line 207
    :cond_2
    sget-object v1, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->MOVE_DOWN:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    iget-object v2, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    if-eq v1, v2, :cond_3

    sget-object v1, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->MOVE_UP:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    iget-object v2, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    if-eq v1, v2, :cond_3

    return v6

    .line 209
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x6

    if-ne v2, v1, :cond_4

    .line 210
    invoke-direct {p0, p1}, Lcom/android/keyguard/HeiHeiGestureView;->matchGesture(Landroid/view/MotionEvent;)Z

    .line 211
    return v6

    .line 215
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 217
    sget-object v1, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->STOP:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    iput-object v1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 218
    return v6

    .line 222
    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/android/keyguard/HeiHeiGestureView;->TWO_POINTS_DISTANCE_X_THREDHOLD:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_6

    .line 223
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/android/keyguard/HeiHeiGestureView;->TWO_POINTS_DISTANCE_Y_THREDHOLD:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 226
    :cond_6
    sget-object v1, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->STOP:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    iput-object v1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 227
    return v6

    .line 224
    :cond_7
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/android/keyguard/HeiHeiGestureView;->TWO_POINTS_DISTANCE_Y_THREDHOLD_MIN:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_6

    .line 230
    invoke-direct {p0, p1}, Lcom/android/keyguard/HeiHeiGestureView;->getTrackingY(Landroid/view/MotionEvent;)F

    move-result v0

    .line 231
    .local v0, "trackingY":F
    sget-object v1, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->MOVE_UP:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    iget-object v2, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    if-ne v1, v2, :cond_b

    .line 232
    iget v1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mTopY:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_8

    .line 233
    iput v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mTopY:F

    .line 254
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 237
    :cond_8
    iget v1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mFirstY:F

    iget v2, p0, Lcom/android/keyguard/HeiHeiGestureView;->mTopY:F

    sub-float/2addr v1, v2

    sget v2, Lcom/android/keyguard/HeiHeiGestureView;->MOVE_UP_DISTANCE_THREDHOLD:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_9

    .line 238
    invoke-direct {p0, p1}, Lcom/android/keyguard/HeiHeiGestureView;->getElapsedTime(Landroid/view/MotionEvent;)J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-lez v1, :cond_a

    .line 239
    :cond_9
    sget-object v1, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->STOP:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    iput-object v1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 240
    return v6

    .line 242
    :cond_a
    sget-object v1, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->MOVE_DOWN:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    iput-object v1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    goto :goto_0

    .line 246
    :cond_b
    iget v1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mBottomY:F

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_c

    .line 247
    iput v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mBottomY:F

    goto :goto_0

    .line 250
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/keyguard/HeiHeiGestureView;->matchGesture(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public setOnTriggerListener(Lcom/android/keyguard/HeiHeiGestureView$OnTriggerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/keyguard/HeiHeiGestureView$OnTriggerListener;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mListener:Lcom/android/keyguard/HeiHeiGestureView$OnTriggerListener;

    .line 64
    return-void
.end method
