.class public Lcom/android/systemui/recents/views/TaskStackViewScroller;
.super Ljava/lang/Object;
.source "TaskStackViewScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskStackViewScroller$1;,
        Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;
    }
.end annotation


# static fields
.field private static final STACK_SCROLL:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/recents/views/TaskStackViewScroller;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final VIBRATOR_DURATION:J

.field mCb:Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

.field mContext:Landroid/content/Context;

.field mExitRecentOverscrollThreshold:F

.field private mExitRecentVelocityThreshold:I

.field mFinalAnimatedScroll:F

.field mFlingDownScrollP:F

.field mFlingDownY:I

.field mLastDeltaP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

.field mScrollAnimator:Landroid/animation/ObjectAnimator;

.field mScroller:Landroid/widget/OverScroller;

.field mStackScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackViewScroller$1;

    const-string/jumbo v1, "stackScroll"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller$1;-><init>(Ljava/lang/String;)V

    .line 55
    sput-object v0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->STACK_SCROLL:Landroid/util/Property;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;
    .param p3, "layoutAlgorithm"    # Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLastDeltaP:F

    .line 82
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mExitRecentOverscrollThreshold:F

    .line 83
    const/16 v0, 0x9c4

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mExitRecentVelocityThreshold:I

    .line 85
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->VIBRATOR_DURATION:J

    .line 89
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mCb:Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    .line 91
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    .line 92
    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    const v1, 0x90f0268

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mExitRecentOverscrollThreshold:F

    .line 95
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mExitRecentVelocityThreshold:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mExitRecentVelocityThreshold:I

    .line 96
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mVibrator:Landroid/os/Vibrator;

    .line 88
    return-void
.end method


# virtual methods
.method animateBoundScroll(I)Landroid/animation/ObjectAnimator;
    .locals 10
    .param p1, "velocity"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    .line 211
    .local v0, "curScroll":F
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v1

    .line 212
    .local v1, "newScroll":F
    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mExitRecentOverscrollThreshold:F

    neg-float v2, v2

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_0

    .line 214
    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mExitRecentVelocityThreshold:I

    if-le p1, v2, :cond_3

    float-to-double v2, v0

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mExitRecentOverscrollThreshold:F

    neg-float v4, v4

    float-to-double v4, v4

    const-wide v6, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3

    .line 215
    :cond_0
    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mExitRecentOverscrollThreshold:F

    neg-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_1

    .line 216
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 219
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    const/4 v4, 0x1

    invoke-direct {v3, v8, v8, v8, v4}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZZZ)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 225
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    return-object v2

    .line 222
    :cond_3
    invoke-virtual {p0, v1, v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method animateScroll(FILjava/lang/Runnable;)V
    .locals 5
    .param p1, "newScroll"    # F
    .param p2, "duration"    # I
    .param p3, "postRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 238
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFinalAnimatedScroll:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v4}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 245
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iput p1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFinalAnimatedScroll:F

    .line 247
    sget-object v0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->STACK_SCROLL:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    aput v2, v1, v3

    aput p1, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    .line 248
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 249
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/recents/views/TaskStackViewScroller$3;

    invoke-direct {v1, p0, p3}, Lcom/android/systemui/recents/views/TaskStackViewScroller$3;-><init>(Lcom/android/systemui/recents/views/TaskStackViewScroller;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 236
    :cond_1
    :goto_0
    return-void

    .line 261
    :cond_2
    if-eqz p3, :cond_1

    .line 262
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method animateScroll(FLjava/lang/Runnable;)V
    .locals 3
    .param p1, "newScroll"    # F
    .param p2, "postRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 231
    const v2, 0x90e0024

    .line 230
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 232
    .local v0, "duration":I
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FILjava/lang/Runnable;)V

    .line 229
    return-void
.end method

.method public boundScroll()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    .line 179
    .local v0, "curScroll":F
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v1

    .line 180
    .local v1, "newScroll":F
    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 182
    const/4 v2, 0x1

    return v2

    .line 184
    :cond_0
    return v3
.end method

.method computeScroll()Z
    .locals 4

    .prologue
    .line 276
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFlingDownY:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDeltaPForX(II)F

    move-result v0

    .line 278
    .local v0, "deltaP":F
    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFlingDownScrollP:F

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFlingDownScrollP:F

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setDeltaStackScroll(FF)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFlingDownScrollP:F

    .line 282
    const/4 v1, 0x1

    return v1

    .line 284
    .end local v0    # "deltaP":F
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 300
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "TaskStackViewScroller"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    const-string/jumbo v0, " stackScroll:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 302
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 299
    return-void
.end method

.method public fling(FIIIIII)V
    .locals 11
    .param p1, "downScrollP"    # F
    .param p2, "downY"    # I
    .param p3, "y"    # I
    .param p4, "velY"    # I
    .param p5, "minY"    # I
    .param p6, "maxY"    # I
    .param p7, "overscroll"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFlingDownScrollP:F

    .line 166
    iput p2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFlingDownY:I

    .line 167
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move v2, p3

    move v4, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 168
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/recents/views/TaskStackViewScroller$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller$2;-><init>(Lcom/android/systemui/recents/views/TaskStackViewScroller;)V

    .line 173
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getDuration()I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    int-to-long v2, v2

    .line 168
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    return-void
.end method

.method getBoundedStackScroll(F)F
    .locals 2
    .param p1, "scroll"    # F

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-static {p1, v0, v1}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method getScrollAmountOutOfBounds(F)F
    .locals 1
    .param p1, "scroll"    # F

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    .line 199
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getStackScroll()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    return v0
.end method

.method isScrollOutOfBounds()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 204
    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getScrollAmountOutOfBounds(F)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    .line 102
    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLastDeltaP:F

    .line 100
    return-void
.end method

.method resetDeltaScroll()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLastDeltaP:F

    .line 105
    return-void
.end method

.method public setDeltaStackScroll(FF)F
    .locals 5
    .param p1, "downP"    # F
    .param p2, "deltaP"    # F

    .prologue
    .line 126
    add-float v1, p1, p2

    .line 127
    .local v1, "targetScroll":F
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLastDeltaP:F

    add-float/2addr v3, p1

    .line 128
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    .line 127
    invoke-virtual {v2, v3, v1, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->updateFocusStateOnScroll(FFF)F

    move-result v0

    .line 129
    .local v0, "newScroll":F
    sget-object v2, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/recents/views/AnimationProps;)V

    .line 130
    iput p2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLastDeltaP:F

    .line 131
    sub-float v2, v0, v1

    return v2
.end method

.method public setStackScroll(F)V
    .locals 1
    .param p1, "s"    # F

    .prologue
    .line 118
    sget-object v0, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/recents/views/AnimationProps;)V

    .line 117
    return-void
.end method

.method public setStackScroll(FLcom/android/systemui/recents/views/AnimationProps;)V
    .locals 3
    .param p1, "newScroll"    # F
    .param p2, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;

    .prologue
    .line 139
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    .line 140
    .local v0, "prevScroll":F
    iput p1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    .line 141
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mCb:Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mCb:Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-interface {v1, v0, v2, p2}, Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;->onStackScrollChanged(FFLcom/android/systemui/recents/views/AnimationProps;)V

    .line 138
    :cond_0
    return-void
.end method

.method public setStackScrollToInitialState()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 151
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    .line 152
    .local v0, "prevScroll":F
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 153
    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method stopBoundScrollAnimation()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 268
    return-void
.end method

.method stopScroller()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 293
    :cond_0
    return-void
.end method
