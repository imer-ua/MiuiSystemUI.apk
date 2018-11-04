.class public Lcom/android/systemui/recents/SwipeHelperForRecents;
.super Ljava/lang/Object;
.source "SwipeHelperForRecents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;,
        Lcom/android/systemui/recents/SwipeHelperForRecents$LongPressListener;
    }
.end annotation


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_DISMISS_VELOCITY:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field private mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mCurrView:Landroid/view/View;

.field private mCurrentAnim:Landroid/animation/Animator;

.field private mDensityScale:F

.field private mDisableHwLayers:Z

.field private mDismissPendingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mDragging:Z

.field private mFalsingThreshold:I

.field private mHandler:Landroid/os/Handler;

.field private mInitialTouchPos:F

.field private mLongPressListener:Lcom/android/systemui/recents/SwipeHelperForRecents$LongPressListener;

.field private mLongPressSent:Z

.field private mLongPressTimeout:J

.field private mMaxSwipeProgress:F

.field private mMinSwipeProgress:F

.field private mPagingTouchSlop:F

.field private mPerpendicularInitialTouchPos:F

.field private mSnappingChild:Z

.field private mSwipeDirection:I

.field private final mTmpPos:[I

.field private mTouchAboveFalsingThreshold:Z

.field private mTranslation:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWatchLongPress:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/SwipeHelperForRecents;)Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/SwipeHelperForRecents;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/SwipeHelperForRecents;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDisableHwLayers:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/SwipeHelperForRecents;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDismissPendingMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/SwipeHelperForRecents;)Lcom/android/systemui/recents/SwipeHelperForRecents$LongPressListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mLongPressListener:Lcom/android/systemui/recents/SwipeHelperForRecents$LongPressListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/recents/SwipeHelperForRecents;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mLongPressSent:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/recents/SwipeHelperForRecents;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mTmpPos:[I

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/SwipeHelperForRecents;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrentAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/recents/SwipeHelperForRecents;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mLongPressSent:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/recents/SwipeHelperForRecents;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSnappingChild:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/SwipeHelperForRecents;Landroid/view/View;Z)V
    .locals 0
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/SwipeHelperForRecents;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/recents/SwipeHelperForRecents$Callback;Landroid/content/Context;)V
    .locals 3
    .param p1, "swipeDirection"    # I
    .param p2, "callback"    # Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x12c

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->SWIPE_ESCAPE_VELOCITY:F

    .line 53
    iput v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 54
    iput v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 55
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->MAX_DISMISS_VELOCITY:I

    .line 61
    iput v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mMinSwipeProgress:F

    .line 62
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mMaxSwipeProgress:F

    .line 77
    iput v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mTranslation:F

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mTmpPos:[I

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDismissPendingMap:Ljava/util/HashMap;

    .line 106
    iput-object p2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mHandler:Landroid/os/Handler;

    .line 108
    iput p1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSwipeDirection:I

    .line 109
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 110
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDensityScale:F

    .line 111
    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mPagingTouchSlop:F

    .line 113
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mLongPressTimeout:J

    .line 114
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 115
    const v1, 0x90f0154

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mFalsingThreshold:I

    .line 105
    return-void
.end method

.method private getFalsingThreshold()I
    .locals 2

    .prologue
    .line 612
    iget-object v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    invoke-interface {v1}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->getFalsingThresholdFactor()F

    move-result v0

    .line 613
    .local v0, "factor":F
    iget v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private getMaxVelocity()F
    .locals 2

    .prologue
    .line 617
    iget v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->MAX_DISMISS_VELOCITY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDensityScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private getPerpendicularPos(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 148
    iget v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_0
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 144
    iget v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method private getSwipeAlpha(F)F
    .locals 3
    .param p1, "progress"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 216
    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    div-float v1, p1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v0, v2, v0

    return v0
.end method

.method private getSwipeProgressForOffset(Landroid/view/View;F)F
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "translation"    # F

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getSize(Landroid/view/View;)F

    move-result v1

    .line 211
    .local v1, "viewSize":F
    div-float v2, p2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 212
    .local v0, "result":F
    iget v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mMinSwipeProgress:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mMaxSwipeProgress:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 156
    iget v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_0
    return v0

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getViewSize(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    iget v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    return v0

    .line 198
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 246
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 244
    invoke-static {p0, v0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 243
    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "childBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 255
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0    # "view":Landroid/view/View;
    check-cast p0, Landroid/view/View;

    .line 257
    .restart local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 258
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 259
    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 260
    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 261
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 258
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 251
    :cond_0
    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;Z)V
    .locals 1
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->updateSwipeProgressFromOffset(Landroid/view/View;ZF)V

    .line 219
    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;ZF)V
    .locals 6
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z
    .param p3, "translation"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 225
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getSwipeProgressForOffset(Landroid/view/View;F)F

    move-result v1

    .line 226
    .local v1, "swipeProgress":F
    iget-object v3, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    cmpl-float v2, p3, v4

    if-lez v2, :cond_2

    move v2, v1

    :goto_0
    invoke-interface {v3, p1, p2, v2}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->updateSwipeProgress(Landroid/view/View;ZF)Z

    move-result v2

    if-nez v2, :cond_1

    .line 227
    if-eqz p2, :cond_1

    .line 228
    move v0, v1

    .line 229
    .local v0, "alpha":F
    iget-boolean v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDisableHwLayers:Z

    if-nez v2, :cond_0

    .line 230
    cmpl-float v2, v1, v4

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_3

    .line 231
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 236
    :cond_0
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getSwipeAlpha(F)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 239
    .end local v0    # "alpha":F
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->invalidateGlobalRegion(Landroid/view/View;)V

    .line 224
    return-void

    .line 226
    :cond_2
    neg-float v2, v1

    goto :goto_0

    .line 233
    .restart local v0    # "alpha":F
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1
.end method


# virtual methods
.method protected createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "newPos"    # F

    .prologue
    const/4 v3, 0x0

    .line 162
    iget v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v1, :cond_0

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 161
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    .line 162
    aput p2, v2, v3

    .line 161
    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 163
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0

    .line 162
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    goto :goto_0
.end method

.method public dismissChild(Landroid/view/View;F)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    .line 360
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/SwipeHelperForRecents;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZ)V

    .line 359
    return-void
.end method

.method public dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZ)V
    .locals 10
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "velocity"    # F
    .param p3, "endAction"    # Ljava/lang/Runnable;
    .param p4, "delay"    # J
    .param p6, "isDismissAll"    # Z

    .prologue
    .line 373
    iget-object v8, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    invoke-interface {v8, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v4

    .line 375
    .local v4, "canBeDismissed":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    const/4 v5, 0x1

    .line 378
    .local v5, "isLayoutRtl":Z
    :goto_0
    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-nez v8, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_0

    if-eqz p6, :cond_6

    .line 379
    :cond_0
    iget v8, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSwipeDirection:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    const/4 v3, 0x1

    .line 381
    .local v3, "animateUpForMenu":Z
    :goto_1
    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-nez v8, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_1

    if-eqz p6, :cond_7

    .line 382
    :cond_1
    move v2, v5

    .line 384
    :goto_2
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x43fa0000    # 500.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_9

    .line 385
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result v8

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_8

    const/4 v1, 0x1

    .line 390
    .local v1, "animateLeft":Z
    :goto_3
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-eqz v3, :cond_b

    .line 391
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getSize(Landroid/view/View;)F

    move-result v8

    neg-float v6, v8

    .line 396
    .local v6, "newPos":F
    :goto_4
    iget-boolean v8, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDisableHwLayers:Z

    if-nez v8, :cond_3

    .line 397
    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 399
    :cond_3
    new-instance v7, Lcom/android/systemui/recents/SwipeHelperForRecents$3;

    invoke-direct {v7, p0, p1, v4}, Lcom/android/systemui/recents/SwipeHelperForRecents$3;-><init>(Lcom/android/systemui/recents/SwipeHelperForRecents;Landroid/view/View;Z)V

    .line 405
    .local v7, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-virtual {p0, p1, v6, v7}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v0

    .line 406
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v0, :cond_c

    .line 407
    return-void

    .line 375
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "animateLeft":Z
    .end local v3    # "animateUpForMenu":Z
    .end local v5    # "isLayoutRtl":Z
    .end local v6    # "newPos":F
    .end local v7    # "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "isLayoutRtl":Z
    goto :goto_0

    .line 379
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "animateUpForMenu":Z
    goto :goto_1

    .line 378
    .end local v3    # "animateUpForMenu":Z
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "animateUpForMenu":Z
    goto :goto_1

    .line 381
    :cond_7
    const/4 v2, 0x0

    .local v2, "animateLeftForRtl":Z
    goto :goto_2

    .line 385
    .end local v2    # "animateLeftForRtl":Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "animateLeft":Z
    goto :goto_3

    .line 387
    .end local v1    # "animateLeft":Z
    :cond_9
    const/4 v8, 0x0

    cmpg-float v8, p2, v8

    if-gez v8, :cond_a

    const/4 v1, 0x1

    .restart local v1    # "animateLeft":Z
    goto :goto_3

    .end local v1    # "animateLeft":Z
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "animateLeft":Z
    goto :goto_3

    .line 393
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getSize(Landroid/view/View;)F

    move-result v6

    .restart local v6    # "newPos":F
    goto :goto_4

    .line 410
    .restart local v0    # "anim":Landroid/animation/Animator;
    .restart local v7    # "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    :cond_c
    sget-object v8, Lcom/android/systemui/Interpolators;->EASE_IN_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 411
    iget v8, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 413
    const-wide/16 v8, 0x0

    cmp-long v8, p4, v8

    if-lez v8, :cond_d

    .line 414
    invoke-virtual {v0, p4, p5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 416
    :cond_d
    new-instance v8, Lcom/android/systemui/recents/SwipeHelperForRecents$4;

    invoke-direct {v8, p0, p1, v4, p3}, Lcom/android/systemui/recents/SwipeHelperForRecents$4;-><init>(Lcom/android/systemui/recents/SwipeHelperForRecents;Landroid/view/View;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 438
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V

    .line 439
    iget-object v8, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDismissPendingMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 372
    return-void
.end method

.method protected getEscapeVelocity()F
    .locals 2

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getUnscaledEscapeVelocity()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDensityScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getSize(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    iget v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    return v0

    .line 193
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method protected getTranslation(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    iget v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0
.end method

.method protected getUnscaledEscapeVelocity()F
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->SWIPE_ESCAPE_VELOCITY:F

    return v0
.end method

.method protected getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "target"    # F
    .param p3, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/SwipeHelperForRecents;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 174
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    if-eqz p3, :cond_0

    .line 175
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 177
    :cond_0
    return-object v0
.end method

.method protected handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "animView"    # Landroid/view/View;
    .param p3, "velocity"    # F
    .param p4, "translation"    # F

    .prologue
    .line 657
    const/4 v0, 0x0

    return v0
.end method

.method protected isDismissGesture(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 638
    iget-object v3, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    invoke-interface {v3}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->isAntiFalsingNeeded()Z

    move-result v0

    .line 640
    .local v0, "falsingDetected":Z
    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mTouchAboveFalsingThreshold:Z

    if-eqz v3, :cond_3

    :cond_0
    move v0, v1

    .line 642
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->swipedFastEnough()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->swipedFarEnough()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 643
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 644
    iget-object v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    iget-object v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    .line 642
    :cond_2
    return v1

    :cond_3
    move v0, v2

    .line 640
    goto :goto_0
.end method

.method public onDownUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "currView"    # Landroid/view/View;

    .prologue
    .line 483
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 281
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 351
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDragging:Z

    if-nez v7, :cond_1

    iget-boolean v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mLongPressSent:Z

    :cond_1
    return v6

    .line 283
    :pswitch_0
    iput-boolean v9, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mTouchAboveFalsingThreshold:Z

    .line 284
    iput-boolean v9, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDragging:Z

    .line 285
    iget-boolean v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSnappingChild:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrentAnim:Landroid/animation/Animator;

    if-eqz v7, :cond_2

    .line 286
    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrentAnim:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->end()V

    .line 288
    :cond_2
    iput-boolean v9, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mLongPressSent:Z

    .line 289
    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    .line 290
    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    invoke-interface {v7, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    .line 292
    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 293
    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/SwipeHelperForRecents;->onDownUpdate(Landroid/view/View;)V

    .line 294
    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    iget-object v8, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCanCurrViewBeDimissed:Z

    .line 295
    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 296
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getPos(Landroid/view/MotionEvent;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mInitialTouchPos:F

    .line 297
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getPerpendicularPos(Landroid/view/MotionEvent;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mPerpendicularInitialTouchPos:F

    .line 298
    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mTranslation:F

    .line 299
    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mLongPressListener:Lcom/android/systemui/recents/SwipeHelperForRecents$LongPressListener;

    if-eqz v7, :cond_0

    .line 300
    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mWatchLongPress:Ljava/lang/Runnable;

    if-nez v7, :cond_3

    .line 301
    new-instance v7, Lcom/android/systemui/recents/SwipeHelperForRecents$2;

    invoke-direct {v7, p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents$2;-><init>(Lcom/android/systemui/recents/SwipeHelperForRecents;Landroid/view/MotionEvent;)V

    iput-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mWatchLongPress:Ljava/lang/Runnable;

    .line 316
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mWatchLongPress:Ljava/lang/Runnable;

    iget-wide v10, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mLongPressTimeout:J

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 322
    :pswitch_1
    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mLongPressSent:Z

    if-nez v7, :cond_0

    .line 323
    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 324
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getPos(Landroid/view/MotionEvent;)F

    move-result v5

    .line 325
    .local v5, "pos":F
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getPerpendicularPos(Landroid/view/MotionEvent;)F

    move-result v4

    .line 326
    .local v4, "perpendicularPos":F
    iget v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mInitialTouchPos:F

    sub-float v2, v5, v7

    .line 327
    .local v2, "delta":F
    iget v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mPerpendicularInitialTouchPos:F

    sub-float v3, v4, v7

    .line 328
    .local v3, "deltaPerpendicular":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mPagingTouchSlop:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 329
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 330
    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    iget-object v8, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->checkToBeginDrag(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 331
    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    iget-object v8, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 332
    iput-boolean v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDragging:Z

    .line 333
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getPos(Landroid/view/MotionEvent;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mInitialTouchPos:F

    .line 334
    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mTranslation:F

    .line 335
    invoke-virtual {p0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->removeLongPressCallback()V

    goto/16 :goto_0

    .line 343
    .end local v2    # "delta":F
    .end local v3    # "deltaPerpendicular":F
    .end local v4    # "perpendicularPos":F
    .end local v5    # "pos":F
    :pswitch_2
    iget-boolean v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDragging:Z

    if-nez v7, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mLongPressSent:Z

    .line 344
    :goto_1
    iput-boolean v9, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDragging:Z

    .line 345
    iput-object v8, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    .line 346
    iput-boolean v9, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mLongPressSent:Z

    .line 347
    invoke-virtual {p0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->removeLongPressCallback()V

    .line 348
    if-eqz v1, :cond_0

    return v6

    .line 343
    :cond_4
    const/4 v1, 0x1

    .local v1, "captured":Z
    goto :goto_1

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMoveUpdate(Landroid/view/View;FF)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "totalTranslation"    # F
    .param p3, "delta"    # F

    .prologue
    .line 490
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 538
    iget-boolean v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mLongPressSent:Z

    if-eqz v6, :cond_0

    .line 539
    return v10

    .line 542
    :cond_0
    iget-boolean v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDragging:Z

    if-nez v6, :cond_2

    .line 543
    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    invoke-interface {v6, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 547
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 548
    return v10

    .line 553
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->removeLongPressCallback()V

    .line 554
    return v12

    .line 558
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 559
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 560
    .local v1, "action":I
    packed-switch v1, :pswitch_data_0

    .line 608
    :cond_3
    :goto_0
    return v10

    .line 563
    :pswitch_0
    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 564
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getPos(Landroid/view/MotionEvent;)F

    move-result v6

    iget v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mInitialTouchPos:F

    sub-float v2, v6, v7

    .line 565
    .local v2, "delta":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 566
    .local v0, "absDelta":F
    invoke-direct {p0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getFalsingThreshold()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_4

    .line 567
    iput-boolean v10, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mTouchAboveFalsingThreshold:Z

    .line 571
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v7}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 581
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    iget v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mTranslation:F

    add-float/2addr v7, v2

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/recents/SwipeHelperForRecents;->setTranslation(Landroid/view/View;F)V

    .line 582
    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    iget v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mTranslation:F

    add-float/2addr v7, v2

    invoke-virtual {p0, v6, v7, v2}, Lcom/android/systemui/recents/SwipeHelperForRecents;->onMoveUpdate(Landroid/view/View;FF)V

    goto :goto_0

    .line 572
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getSize(Landroid/view/View;)F

    move-result v4

    .line 573
    .local v4, "size":F
    const/high16 v6, 0x3e800000    # 0.25f

    mul-float v3, v6, v4

    .line 574
    .local v3, "maxScrollDistance":F
    cmpl-float v6, v0, v4

    if-ltz v6, :cond_7

    .line 575
    cmpl-float v6, v2, v11

    if-lez v6, :cond_6

    move v2, v3

    goto :goto_1

    :cond_6
    neg-float v2, v3

    goto :goto_1

    .line 577
    :cond_7
    div-float v6, v2, v4

    float-to-double v6, v6

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v2, v3, v6

    goto :goto_1

    .line 587
    .end local v0    # "absDelta":F
    .end local v2    # "delta":F
    .end local v3    # "maxScrollDistance":F
    .end local v4    # "size":F
    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 590
    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getMaxVelocity()F

    move-result v7

    const/16 v8, 0x3e8

    invoke-virtual {v6, v8, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 591
    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v6}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v5

    .line 593
    .local v5, "velocity":F
    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v7}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->onDragEnd(Landroid/view/View;)V

    .line 594
    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result v7

    invoke-virtual {p0, p1, v6, v5, v7}, Lcom/android/systemui/recents/SwipeHelperForRecents;->handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z

    move-result v6

    if-nez v6, :cond_8

    .line 595
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 597
    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v6, v5}, Lcom/android/systemui/recents/SwipeHelperForRecents;->dismissChild(Landroid/view/View;F)V

    .line 603
    :goto_2
    iput-object v9, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    .line 605
    :cond_8
    iput-boolean v12, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDragging:Z

    goto/16 :goto_0

    .line 600
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v7}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 601
    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v6, v11, v5}, Lcom/android/systemui/recents/SwipeHelperForRecents;->snapChild(Landroid/view/View;FF)V

    goto :goto_2

    .line 560
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTranslationUpdate(Landroid/view/View;FZ)V
    .locals 0
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "value"    # F
    .param p3, "canBeDismissed"    # Z

    .prologue
    .line 499
    invoke-direct {p0, p1, p3, p2}, Lcom/android/systemui/recents/SwipeHelperForRecents;->updateSwipeProgressFromOffset(Landroid/view/View;ZF)V

    .line 498
    return-void
.end method

.method protected prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 446
    return-void
.end method

.method protected prepareSnapBackAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 476
    return-void
.end method

.method public removeLongPressCallback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mWatchLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mWatchLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 274
    iput-object v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mWatchLongPress:Ljava/lang/Runnable;

    .line 271
    :cond_0
    return-void
.end method

.method public setDisableHardwareLayers(Z)V
    .locals 0
    .param p1, "disableHwLayers"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDisableHwLayers:Z

    .line 139
    return-void
.end method

.method protected setTranslation(Landroid/view/View;F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "translate"    # F

    .prologue
    .line 181
    if-nez p1, :cond_0

    .line 182
    return-void

    .line 184
    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_1

    .line 185
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 180
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method public snapChild(Landroid/view/View;FF)V
    .locals 4
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "targetLeft"    # F
    .param p3, "velocity"    # F

    .prologue
    const/4 v3, 0x0

    .line 451
    iget-object v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    invoke-interface {v2, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    .line 453
    .local v1, "canBeDismissed":Z
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v0

    .line 454
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v0, :cond_0

    .line 455
    return-void

    .line 458
    :cond_0
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 459
    new-instance v2, Lcom/android/systemui/recents/SwipeHelperForRecents$5;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/android/systemui/recents/SwipeHelperForRecents$5;-><init>(Lcom/android/systemui/recents/SwipeHelperForRecents;Landroid/view/View;ZF)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 467
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->prepareSnapBackAnimation(Landroid/view/View;Landroid/animation/Animator;)V

    .line 468
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSnappingChild:Z

    .line 469
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 470
    iput-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrentAnim:Landroid/animation/Animator;

    .line 450
    return-void
.end method

.method protected swipedFarEnough()Z
    .locals 8

    .prologue
    .line 633
    iget-object v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result v0

    .line 634
    .local v0, "translation":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    iget-object v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getViewSize(Landroid/view/View;)F

    move-result v1

    float-to-double v4, v1

    const-wide v6, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected swipedFastEnough()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 648
    iget-object v4, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v4}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v2

    .line 649
    .local v2, "velocity":F
    iget-object v4, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result v1

    .line 650
    .local v1, "translation":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getEscapeVelocity()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 651
    cmpl-float v4, v2, v6

    if-lez v4, :cond_0

    move v5, v0

    :goto_0
    cmpl-float v4, v1, v6

    if-lez v4, :cond_1

    move v4, v0

    :goto_1
    if-ne v5, v4, :cond_2

    .line 652
    .local v0, "ret":Z
    :goto_2
    return v0

    .end local v0    # "ret":Z
    :cond_0
    move v5, v3

    .line 651
    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v3

    .line 650
    goto :goto_2
.end method
