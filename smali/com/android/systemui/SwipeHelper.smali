.class public Lcom/android/systemui/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SwipeHelper$Callback;,
        Lcom/android/systemui/SwipeHelper$LongPressListener;,
        Lcom/android/systemui/SwipeHelper$MenuPressListener;
    }
.end annotation


# static fields
.field private static sMenuShownSize:F


# instance fields
.field private mBlockWidth:I

.field private mCallback:Lcom/android/systemui/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mContext:Landroid/content/Context;

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDisableHwLayers:Z

.field private mDismissAllAnimatorSet:Landroid/animation/AnimatorSet;

.field private mDismissAllRunning:Z

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

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mFalsingThreshold:I

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mHandler:Landroid/os/Handler;

.field private mInitialTouchPos:F

.field private mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

.field private mLongPressSent:Z

.field private mLongPressTimeout:J

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
.method static synthetic -get0(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/SwipeHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/SwipeHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/SwipeHelper;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$LongPressListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/SwipeHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/SwipeHelper;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTmpPos:[I

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/SwipeHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mDismissAllRunning:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/SwipeHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/SwipeHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/SwipeHelper;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "realHideAnimatedList"    # Ljava/util/List;
    .param p2, "animationFinishAction"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->doRowAnimations(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V
    .locals 0
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V
    .locals 4
    .param p1, "swipeDirection"    # I
    .param p2, "callback"    # Lcom/android/systemui/SwipeHelper$Callback;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTmpPos:[I

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Ljava/util/HashMap;

    .line 108
    iput-object p3, p0, Lcom/android/systemui/SwipeHelper;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    .line 111
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    .line 112
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 113
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    .line 114
    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    .line 116
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    .line 117
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 118
    const v1, 0x90f0154

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    .line 119
    invoke-static {p3}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 120
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f032d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mBlockWidth:I

    .line 121
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getMaxEscapeAnimDuration()J

    move-result-wide v2

    long-to-float v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-direct {v0, p3, v1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 122
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f0281

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/systemui/SwipeHelper;->sMenuShownSize:F

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/SwipeHelper;->initDismissAllAnimation()V

    .line 107
    return-void
.end method

.method private createAlphaAnimators(Ljava/util/Collection;F)Ljava/util/List;
    .locals 8
    .param p2, "toValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/View;",
            ">;F)",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    const/4 v7, 0x1

    .line 449
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v1, "animatorList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "view$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 451
    .local v2, "view":Landroid/view/View;
    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    const/4 v6, 0x0

    aput p2, v5, v6

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 452
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 453
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 455
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-object v1
.end method

.method private doRowAnimations(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 14
    .param p2, "animationFinishAction"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 462
    .local p1, "realHideAnimatedList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/16 v10, 0x64

    .line 463
    .local v10, "currentDelay":I
    const/4 v13, 0x0

    .line 464
    .local v13, "totalDelay":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    .line 465
    .local v12, "numItems":I
    add-int/lit8 v11, v12, -0x1

    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_1

    .line 466
    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 467
    .local v1, "view":Landroid/view/View;
    const/4 v3, 0x0

    .line 468
    .local v3, "endRunnable":Ljava/lang/Runnable;
    if-nez v11, :cond_0

    .line 469
    move-object/from16 v3, p2

    .line 471
    .end local v3    # "endRunnable":Ljava/lang/Runnable;
    :cond_0
    const/4 v2, 0x0

    int-to-long v4, v13

    const-wide/16 v7, 0xc8

    const/4 v6, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V

    .line 472
    add-int/lit8 v0, v10, -0xa

    const/16 v2, 0x1e

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 473
    add-int/2addr v13, v10

    .line 465
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 458
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public static getAlphaForOffset(F)F
    .locals 4
    .param p0, "translation"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 201
    sget v0, Lcom/android/systemui/SwipeHelper;->sMenuShownSize:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 202
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/android/systemui/SwipeHelper;->sMenuShownSize:F

    div-float/2addr v0, v1

    const v1, 0x3eb33334    # 0.35000002f

    mul-float/2addr v0, v1

    sub-float v0, v3, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    .line 204
    :cond_0
    return v3
.end method

.method private getFalsingThreshold()I
    .locals 2

    .prologue
    .line 773
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/SwipeHelper$Callback;->getFalsingThresholdFactor()F

    move-result v0

    .line 774
    .local v0, "factor":F
    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private getMaxVelocity()F
    .locals 2

    .prologue
    .line 778
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    const/high16 v1, 0x457a0000    # 4000.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method private getPerpendicularPos(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 152
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

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
    .line 148
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

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

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 160
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_0
    return v0

    .line 161
    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private initDismissAllAnimation()V
    .locals 4

    .prologue
    .line 127
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mDismissAllAnimatorSet:Landroid/animation/AnimatorSet;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mDismissAllAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 126
    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 233
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

    .line 231
    invoke-static {p0, v0}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 230
    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "childBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 242
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0    # "view":Landroid/view/View;
    check-cast p0, Landroid/view/View;

    .line 244
    .restart local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 245
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 246
    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 247
    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 248
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 245
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 238
    :cond_0
    return-void
.end method

.method private snapChildInstantly(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 657
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    .line 658
    .local v0, "canAnimViewBeDismissed":Z
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 659
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    .line 656
    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;Z)V
    .locals 1
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;ZF)V

    .line 207
    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;ZF)V
    .locals 4
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z
    .param p3, "translation"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 213
    cmpl-float v1, p3, v2

    if-lez v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    cmpg-float v1, p3, v2

    if-gez v1, :cond_3

    .line 214
    :cond_1
    invoke-static {p3}, Lcom/android/systemui/SwipeHelper;->getAlphaForOffset(F)F

    move-result v0

    .line 215
    .local v0, "alpha":F
    cmpl-float v1, p3, v2

    if-lez v1, :cond_3

    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_3

    .line 216
    iget-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    if-nez v1, :cond_2

    .line 217
    cmpl-float v1, v0, v2

    if-eqz v1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    .line 218
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 223
    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 226
    .end local v0    # "alpha":F
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    .line 212
    return-void

    .line 220
    .restart local v0    # "alpha":F
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method protected createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "newPos"    # F

    .prologue
    const/4 v3, 0x0

    .line 166
    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 165
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    .line 166
    aput p2, v2, v3

    .line 165
    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 167
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0

    .line 166
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    goto :goto_0
.end method

.method public dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V
    .locals 18
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "velocity"    # F
    .param p3, "endAction"    # Ljava/lang/Runnable;
    .param p4, "delay"    # J
    .param p6, "useAccelerateInterpolator"    # Z
    .param p7, "fixedDuration"    # J
    .param p9, "isDismissAll"    # Z

    .prologue
    .line 498
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v13

    .line 500
    .local v13, "canBeDismissed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    const/16 v16, 0x1

    .line 503
    .local v16, "isLayoutRtl":Z
    :goto_0
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-nez v4, :cond_6

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_0

    if-eqz p9, :cond_6

    .line 504
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_5

    const/4 v12, 0x1

    .line 506
    .local v12, "animateUpForMenu":Z
    :goto_1
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-nez v4, :cond_7

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_1

    if-eqz p9, :cond_7

    .line 507
    :cond_1
    move/from16 v11, v16

    .line 508
    :goto_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/SwipeHelper;->getEscapeVelocity()F

    move-result v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_8

    const/4 v4, 0x0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_8

    const/4 v10, 0x1

    .line 510
    .local v10, "animateLeft":Z
    :goto_3
    if-nez v10, :cond_2

    if-nez v11, :cond_2

    if-eqz v12, :cond_b

    .line 511
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v4

    neg-float v7, v4

    .line 516
    .local v7, "newPos":F
    :goto_4
    const-wide/16 v8, 0x0

    cmp-long v4, p7, v8

    if-nez v4, :cond_d

    .line 517
    const-wide/16 v14, 0x190

    .line 518
    .local v14, "duration":J
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-eqz v4, :cond_c

    .line 520
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    sub-float v4, v7, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v4, v6

    float-to-int v4, v4

    int-to-long v8, v4

    .line 519
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 530
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    if-nez v4, :cond_3

    .line 531
    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 533
    :cond_3
    new-instance v17, Lcom/android/systemui/SwipeHelper$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v13}, Lcom/android/systemui/SwipeHelper$3;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    .line 540
    .local v17, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/systemui/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v5

    .line 541
    .local v5, "anim":Landroid/animation/Animator;
    if-nez v5, :cond_e

    .line 542
    return-void

    .line 500
    .end local v5    # "anim":Landroid/animation/Animator;
    .end local v7    # "newPos":F
    .end local v10    # "animateLeft":Z
    .end local v12    # "animateUpForMenu":Z
    .end local v14    # "duration":J
    .end local v16    # "isLayoutRtl":Z
    .end local v17    # "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    :cond_4
    const/16 v16, 0x0

    .restart local v16    # "isLayoutRtl":Z
    goto/16 :goto_0

    .line 504
    :cond_5
    const/4 v12, 0x0

    .restart local v12    # "animateUpForMenu":Z
    goto :goto_1

    .line 503
    .end local v12    # "animateUpForMenu":Z
    :cond_6
    const/4 v12, 0x0

    .restart local v12    # "animateUpForMenu":Z
    goto :goto_1

    .line 506
    :cond_7
    const/4 v11, 0x0

    .local v11, "animateLeftForRtl":Z
    goto :goto_2

    .line 509
    .end local v11    # "animateLeftForRtl":Z
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    const/4 v6, 0x0

    cmpg-float v4, v4, v6

    if-gez v4, :cond_9

    if-eqz p9, :cond_a

    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    :cond_a
    const/4 v10, 0x1

    goto :goto_3

    .line 513
    .restart local v10    # "animateLeft":Z
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v7

    .restart local v7    # "newPos":F
    goto :goto_4

    .line 524
    .restart local v14    # "duration":J
    :cond_c
    const-wide/16 v14, 0xc8

    goto :goto_5

    .line 527
    .end local v14    # "duration":J
    :cond_d
    move-wide/from16 v14, p7

    .restart local v14    # "duration":J
    goto :goto_5

    .line 544
    .restart local v5    # "anim":Landroid/animation/Animator;
    .restart local v17    # "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    :cond_e
    if-eqz p6, :cond_10

    .line 545
    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 546
    invoke-virtual {v5, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 551
    :goto_6
    const-wide/16 v8, 0x0

    cmp-long v4, p4, v8

    if-lez v4, :cond_f

    .line 552
    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 554
    :cond_f
    new-instance v4, Lcom/android/systemui/SwipeHelper$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v13, v2}, Lcom/android/systemui/SwipeHelper$4;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ZLjava/lang/Runnable;)V

    invoke-virtual {v5, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 578
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/SwipeHelper;->prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    .line 497
    return-void

    .line 548
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SwipeHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v6

    .line 549
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v9

    move/from16 v8, p2

    .line 548
    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    goto :goto_6
.end method

.method public dismissChild(Landroid/view/View;FZ)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F
    .param p3, "useAccelerateInterpolator"    # Z

    .prologue
    const-wide/16 v4, 0x0

    .line 483
    const/4 v3, 0x0

    .line 484
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p3

    move-wide v7, v4

    .line 483
    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V

    .line 482
    return-void
.end method

.method public dispatchDismissAllToChild(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 7
    .param p2, "finishAction"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "realHideAnimatedList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v6, 0x1

    .line 391
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 392
    return-void

    .line 394
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/SwipeHelper;->mDismissAllRunning:Z

    if-eqz v4, :cond_1

    .line 395
    const-string/jumbo v4, "com.android.systemui.SwipeHelper"

    const-string/jumbo v5, "dispatchDismissAllToChild mDismissAllAnimatorSet is Running"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-void

    .line 398
    :cond_1
    const-string/jumbo v4, "com.android.systemui.SwipeHelper"

    const-string/jumbo v5, "dispatchDismissAllToChild do dismiss All."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mDismissAllRunning:Z

    .line 400
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mDismissAllAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 401
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mDismissAllAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 402
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 403
    .local v0, "alphaViews":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "view$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 404
    .local v2, "view":Landroid/view/View;
    instance-of v4, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_2

    move-object v1, v2

    .line 407
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 409
    .local v1, "expandableRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDismissAllInProgress(Z)V

    .line 410
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 413
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 415
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 416
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getCollapsedButton()Landroid/widget/TextView;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_3
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundNormal()Lcom/android/systemui/statusbar/NotificationBackgroundView;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 420
    :cond_4
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 422
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundNormal()Lcom/android/systemui/statusbar/NotificationBackgroundView;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 425
    .end local v1    # "expandableRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "view":Landroid/view/View;
    :cond_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-ge v4, v5, :cond_6

    .line 426
    invoke-direct {p0}, Lcom/android/systemui/SwipeHelper;->initDismissAllAnimation()V

    .line 428
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mDismissAllAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/systemui/SwipeHelper$2;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/systemui/SwipeHelper$2;-><init>(Lcom/android/systemui/SwipeHelper;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 443
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mDismissAllAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x0

    invoke-direct {p0, v0, v5}, Lcom/android/systemui/SwipeHelper;->createAlphaAnimators(Ljava/util/Collection;F)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 444
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mDismissAllAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 445
    const-string/jumbo v4, "com.android.systemui.SwipeHelper"

    const-string/jumbo v5, "dispatchDismissAllToChild mDismissAllAnimatorSet started."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void
.end method

.method protected getEscapeVelocity()F
    .locals 2

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getUnscaledEscapeVelocity()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getMaxEscapeAnimDuration()J
    .locals 2

    .prologue
    .line 790
    const-wide/16 v0, 0x190

    return-wide v0
.end method

.method protected getSize(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 196
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    return v0

    .line 197
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method protected getTranslation(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

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
    .line 786
    const/high16 v0, 0x43fa0000    # 500.0f

    return v0
.end method

.method protected getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "target"    # F
    .param p3, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 178
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    if-eqz p3, :cond_0

    .line 179
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 181
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
    .line 825
    const/4 v0, 0x0

    return v0
.end method

.method public isDismissGesture(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 800
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 801
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isFalseGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 801
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFastEnough()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFarEnough()Z

    move-result v0

    .line 800
    if-eqz v0, :cond_0

    .line 802
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

.method public isFalseGesture(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 806
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/SwipeHelper$Callback;->isAntiFalsingNeeded()Z

    move-result v0

    .line 807
    .local v0, "falsingDetected":Z
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->isClassiferEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 808
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->isFalseTouch()Z

    move-result v0

    .line 812
    .end local v0    # "falsingDetected":Z
    :goto_0
    return v0

    .line 808
    .restart local v0    # "falsingDetected":Z
    :cond_0
    const/4 v0, 0x0

    .local v0, "falsingDetected":Z
    goto :goto_0

    .line 810
    .local v0, "falsingDetected":Z
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    .local v0, "falsingDetected":Z
    goto :goto_0

    .local v0, "falsingDetected":Z
    :cond_3
    const/4 v0, 0x1

    .local v0, "falsingDetected":Z
    goto :goto_0
.end method

.method public onDownUpdate(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "currView"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 637
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 269
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 368
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v7, :cond_1

    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    :cond_1
    return v6

    .line 271
    :pswitch_0
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 272
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 273
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    .line 274
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 275
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    .line 276
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v7, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 278
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 279
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7, p1}, Lcom/android/systemui/SwipeHelper;->onDownUpdate(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 280
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 281
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 282
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 283
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPerpendicularPos(Landroid/view/MotionEvent;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mPerpendicularInitialTouchPos:F

    .line 284
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    .line 285
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    if-eqz v7, :cond_0

    .line 286
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-nez v7, :cond_2

    .line 287
    new-instance v7, Lcom/android/systemui/SwipeHelper$1;

    invoke-direct {v7, p0, p1}, Lcom/android/systemui/SwipeHelper$1;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/MotionEvent;)V

    iput-object v7, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 307
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    iget-wide v10, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 313
    :pswitch_1
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-nez v7, :cond_0

    .line 314
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 315
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v5

    .line 316
    .local v5, "pos":F
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPerpendicularPos(Landroid/view/MotionEvent;)F

    move-result v4

    .line 317
    .local v4, "perpendicularPos":F
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float v2, v5, v7

    .line 328
    .local v2, "delta":F
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mPerpendicularInitialTouchPos:F

    sub-float v3, v4, v7

    .line 329
    .local v3, "deltaPerpendicular":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 330
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 331
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/systemui/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 332
    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 333
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 334
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    .line 335
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    goto/16 :goto_0

    .line 360
    .end local v2    # "delta":F
    .end local v3    # "deltaPerpendicular":F
    .end local v4    # "perpendicularPos":F
    .end local v5    # "pos":F
    :pswitch_2
    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v7, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 361
    :goto_1
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 362
    iput-object v9, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 363
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 364
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    .line 365
    if-eqz v1, :cond_0

    return v6

    .line 360
    :cond_3
    const/4 v1, 0x1

    .local v1, "captured":Z
    goto :goto_1

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMoveUpdate(Landroid/view/View;Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .param p3, "totalTranslation"    # F
    .param p4, "delta"    # F

    .prologue
    .line 644
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 693
    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-eqz v7, :cond_0

    .line 694
    const/4 v7, 0x1

    return v7

    .line 697
    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v7, :cond_2

    .line 698
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v7, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 702
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 703
    const/4 v7, 0x1

    return v7

    .line 708
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    .line 709
    const/4 v7, 0x0

    return v7

    .line 713
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 714
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 715
    .local v1, "action":I
    packed-switch v1, :pswitch_data_0

    .line 769
    :cond_3
    :goto_0
    const/4 v7, 0x1

    return v7

    .line 718
    :pswitch_0
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 719
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v7

    iget v8, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float v2, v7, v8

    .line 720
    .local v2, "delta":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 721
    .local v0, "absDelta":F
    invoke-direct {p0}, Lcom/android/systemui/SwipeHelper;->getFalsingThreshold()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_4

    .line 722
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 726
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 736
    :goto_1
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    add-float v5, v7, v2

    .line 737
    .local v5, "translation":F
    const/4 v7, 0x0

    cmpg-float v7, v5, v7

    if-gez v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-static {v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 741
    :cond_5
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7, v5}, Lcom/android/systemui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 742
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    .line 743
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7, p1, v5, v2}, Lcom/android/systemui/SwipeHelper;->onMoveUpdate(Landroid/view/View;Landroid/view/MotionEvent;FF)V

    goto :goto_0

    .line 727
    .end local v5    # "translation":F
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v4

    .line 728
    .local v4, "size":F
    const v7, 0x3e99999a    # 0.3f

    mul-float v3, v7, v4

    .line 729
    .local v3, "maxScrollDistance":F
    cmpl-float v7, v0, v4

    if-ltz v7, :cond_8

    .line 730
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_7

    move v2, v3

    goto :goto_1

    :cond_7
    neg-float v2, v3

    goto :goto_1

    .line 732
    :cond_8
    div-float v7, v2, v4

    float-to-double v8, v7

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v7, v8

    mul-float v2, v3, v7

    goto :goto_1

    .line 739
    .end local v3    # "maxScrollDistance":F
    .end local v4    # "size":F
    .restart local v5    # "translation":F
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x90f032d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x0

    int-to-float v7, v7

    .line 738
    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_2

    .line 748
    .end local v0    # "absDelta":F
    .end local v2    # "delta":F
    .end local v5    # "translation":F
    :pswitch_1
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 751
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0}, Lcom/android/systemui/SwipeHelper;->getMaxVelocity()F

    move-result v8

    const/16 v9, 0x3e8

    invoke-virtual {v7, v9, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 752
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v7}, Lcom/android/systemui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v6

    .line 754
    .local v6, "velocity":F
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v8}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v8

    invoke-virtual {p0, p1, v7, v6, v8}, Lcom/android/systemui/SwipeHelper;->handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z

    move-result v7

    if-nez v7, :cond_a

    .line 755
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 757
    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 758
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFastEnough()Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v7, 0x0

    .line 757
    :goto_3
    invoke-virtual {p0, v8, v6, v7}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FZ)V

    .line 764
    :goto_4
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 766
    :cond_a
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    goto/16 :goto_0

    .line 758
    :cond_b
    const/4 v7, 0x1

    goto :goto_3

    .line 761
    :cond_c
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 762
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8, v6}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    goto :goto_4

    .line 715
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
    .line 653
    invoke-direct {p0, p1, p3, p2}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;ZF)V

    .line 652
    return-void
.end method

.method protected prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 586
    return-void
.end method

.method protected prepareSnapBackAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 630
    return-void
.end method

.method public removeLongPressCallback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 259
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 261
    iput-object v2, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 258
    :cond_0
    return-void
.end method

.method public resetAnimatingValue()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mDismissAllRunning:Z

    .line 382
    return-void
.end method

.method public setDensityScale(F)V
    .locals 0
    .param p1, "densityScale"    # F

    .prologue
    .line 136
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    .line 135
    return-void
.end method

.method public setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/SwipeHelper$LongPressListener;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    .line 131
    return-void
.end method

.method public setPagingTouchSlop(F)V
    .locals 0
    .param p1, "pagingTouchSlop"    # F

    .prologue
    .line 140
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    .line 139
    return-void
.end method

.method protected setTranslation(Landroid/view/View;F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "translate"    # F

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 186
    return-void

    .line 188
    :cond_0
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_1

    .line 189
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 184
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method public snapChild(Landroid/view/View;FF)V
    .locals 6
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "targetLeft"    # F
    .param p3, "velocity"    # F

    .prologue
    .line 591
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v3, p1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    .line 592
    .local v1, "canBeDismissed":Z
    new-instance v2, Lcom/android/systemui/SwipeHelper$5;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/systemui/SwipeHelper$5;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    .line 599
    .local v2, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/systemui/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v0

    .line 600
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v0, :cond_0

    .line 601
    return-void

    .line 604
    :cond_0
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 605
    new-instance v3, Lcom/android/systemui/SwipeHelper$6;

    invoke-direct {v3, p0, p1, v1, p2}, Lcom/android/systemui/SwipeHelper$6;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ZF)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 622
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/SwipeHelper;->prepareSnapBackAnimation(Landroid/view/View;Landroid/animation/Animator;)V

    .line 623
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    .line 624
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 590
    return-void
.end method

.method public snapChildIfNeeded(Landroid/view/View;ZF)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animate"    # Z
    .param p3, "targetLeft"    # F

    .prologue
    const/4 v3, 0x0

    .line 671
    iget-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-ne v2, p1, :cond_1

    .line 672
    :cond_0
    return-void

    .line 671
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    if-nez v2, :cond_0

    .line 674
    const/4 v1, 0x0

    .line 675
    .local v1, "needToSnap":Z
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 676
    .local v0, "dismissPendingAnim":Landroid/animation/Animator;
    if-eqz v0, :cond_4

    .line 677
    const/4 v1, 0x1

    .line 678
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 682
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 683
    if-eqz p2, :cond_5

    .line 684
    invoke-virtual {p0, p1, p3, v3}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    .line 670
    :cond_3
    :goto_1
    return-void

    .line 679
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 680
    const/4 v1, 0x1

    goto :goto_0

    .line 686
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->snapChildInstantly(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected swipedFarEnough()Z
    .locals 4

    .prologue
    .line 794
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    .line 796
    .local v0, "translation":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v2

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 795
    :goto_0
    return v1

    .line 796
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

    .line 816
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v4}, Lcom/android/systemui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v2

    .line 817
    .local v2, "velocity":F
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    .line 818
    .local v1, "translation":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getEscapeVelocity()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 819
    cmpl-float v4, v2, v6

    if-lez v4, :cond_0

    move v5, v0

    :goto_0
    cmpl-float v4, v1, v6

    if-lez v4, :cond_1

    move v4, v0

    :goto_1
    if-ne v5, v4, :cond_2

    .line 820
    .local v0, "ret":Z
    :goto_2
    return v0

    .end local v0    # "ret":Z
    :cond_0
    move v5, v3

    .line 819
    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v3

    .line 818
    goto :goto_2
.end method
