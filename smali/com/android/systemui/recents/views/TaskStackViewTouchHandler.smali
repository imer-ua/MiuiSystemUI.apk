.class Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
.super Ljava/lang/Object;
.source "TaskStackViewTouchHandler.java"

# interfaces
.implements Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;


# static fields
.field private static final OVERSCROLL_INTERP:Landroid/view/animation/Interpolator;


# instance fields
.field mActivePointerId:I

.field mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

.field private mAllowHideRecentsFromBackgroundTap:Z

.field mContext:Landroid/content/Context;

.field private mCurrentTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field mDownScrollP:F

.field mDownX:I

.field mDownY:I

.field private mFinalTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field mFlingAnimUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field mInterceptedBySwipeHelper:Z

.field private mIsCancelAnimations:Z

.field mIsScrolling:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mLastScrollP:F

.field mLastY:I

.field mMaximumVelocity:I

.field mMinimumVelocity:I

.field private mOldStackScroll:F

.field mOverscrollSize:I

.field mRecentsTaskLockDistance:I

.field mScrollFlingAnimator:Landroid/animation/ValueAnimator;

.field mScrollTouchSlop:I

.field mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

.field private final mStackViewScrolledEvent:Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

.field mSv:Lcom/android/systemui/recents/views/TaskStackView;

.field mSwipeHelper:Lcom/android/systemui/recents/SwipeHelperForRecents;

.field private mSwipeHelperAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetStackScroll:F

.field private mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field final mWindowTouchSlop:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    return v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v4, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    .line 74
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 75
    .local v0, "OVERSCROLL_PATH":Landroid/graphics/Path;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 76
    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3e333333    # 0.175f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v5, 0x3f800000    # 1.0f

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 77
    new-instance v1, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-direct {v1, v0}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    sput-object v1, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->OVERSCROLL_INTERP:Landroid/view/animation/Interpolator;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskStackViewScroller;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sv"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "scroller"    # Lcom/android/systemui/recents/views/TaskStackViewScroller;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 97
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 106
    new-instance v4, Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mStackViewScrolledEvent:Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    .line 109
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    .line 110
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 111
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    .line 112
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    .line 113
    new-instance v4, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v4}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 119
    iput-boolean v7, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mAllowHideRecentsFromBackgroundTap:Z

    .line 120
    iput-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsCancelAnimations:Z

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 125
    .local v3, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 126
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    .line 128
    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    .line 129
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMinimumVelocity:I

    .line 130
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    .line 131
    const v4, 0x90f023e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    .line 132
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mWindowTouchSlop:I

    .line 133
    new-instance v4, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v4, p1, v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mFlingAnimUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 134
    const v4, 0x90f01eb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOverscrollSize:I

    .line 135
    const v4, 0x90f023f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mRecentsTaskLockDistance:I

    .line 136
    const v4, 0x90f022e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 137
    .local v2, "mLockViewSwipeTopMargin":I
    const v4, 0x90f022f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 139
    .local v1, "mLockViewSwipeHeight":I
    new-instance v4, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$1;

    invoke-direct {v4, p0, v6, p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$1;-><init>(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;ILcom/android/systemui/recents/SwipeHelperForRecents$Callback;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/recents/SwipeHelperForRecents;

    .line 170
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-virtual {v4, v7}, Lcom/android/systemui/recents/SwipeHelperForRecents;->setDisableHardwareLayers(Z)V

    .line 123
    return-void
.end method

.method private findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v7, 0x0

    .line 775
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 776
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 777
    .local v1, "taskCount":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 778
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v5, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v3

    .line 779
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 780
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/systemui/recents/views/TaskStackView;->isTouchPointInView(FFLcom/android/systemui/recents/views/TaskView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 781
    return-object v3

    .line 777
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 785
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    return-object v7
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 35
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->isShowingMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    const/4 v2, 0x1

    return v2

    .line 256
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->initVelocityTrackerIfNotExists()V

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v0, v2, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-object/from16 v18, v0

    .line 258
    .local v18, "layoutAlgorithm":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 259
    .local v10, "action":I
    and-int/lit16 v2, v10, 0xff

    packed-switch v2, :pswitch_data_0

    .line 421
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    return v2

    .line 262
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->resetDeltaScroll()V

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->cancelNonDismissTaskAnimations()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsCancelAnimations:Z

    .line 268
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    .line 271
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    .line 272
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    .line 273
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 275
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 276
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 277
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->startScaleAnim()V

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->initOrResetVelocityTracker()V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 285
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v16

    .line 286
    .local v16, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 287
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    .line 288
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    .line 289
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->resetDeltaScroll()V

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 296
    .end local v16    # "index":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 297
    .local v11, "activePointerIndex":I
    if-ltz v11, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-lt v11, v2, :cond_3

    .line 298
    :cond_2
    const/4 v11, 0x0

    .line 299
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 301
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v5, v2

    .line 302
    .local v5, "y":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v32, v0

    .line 303
    .local v32, "x":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-nez v2, :cond_6

    .line 304
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    sub-int v2, v5, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v34

    .line 305
    .local v34, "yDiff":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    sub-int v2, v32, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v33

    .line 306
    .local v33, "xDiff":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    sub-int v2, v5, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    if-le v2, v3, :cond_6

    move/from16 v0, v34

    move/from16 v1, v33

    if-le v0, v1, :cond_6

    .line 307
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v29

    .line 309
    .local v29, "stackScroll":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v30

    .line 310
    .local v30, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    .local v15, "i":I
    :goto_1
    if-ltz v15, :cond_4

    .line 311
    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->addUnfocusedTaskOverride(Lcom/android/systemui/recents/model/Task;F)V

    .line 310
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 314
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    .line 318
    .local v26, "parent":Landroid/view/ViewParent;
    if-eqz v26, :cond_5

    .line 319
    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 322
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x11f

    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 323
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->startResetAnim()V

    .line 326
    .end local v15    # "i":I
    .end local v26    # "parent":Landroid/view/ViewParent;
    .end local v29    # "stackScroll":F
    .end local v30    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .end local v33    # "xDiff":I
    .end local v34    # "yDiff":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v2, :cond_a

    .line 329
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDeltaPForX(II)F

    move-result v14

    .line 332
    .local v14, "deltaP":F
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v21, v0

    .line 333
    .local v21, "minScrollP":F
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v19, v0

    .line 334
    .local v19, "maxScrollP":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    add-float v13, v2, v14

    .line 335
    .local v13, "curScrollP":F
    cmpg-float v2, v13, v21

    if-ltz v2, :cond_7

    cmpl-float v2, v13, v19

    if-lez v2, :cond_8

    .line 336
    :cond_7
    move/from16 v0, v21

    move/from16 v1, v19

    invoke-static {v13, v0, v1}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v12

    .line 337
    .local v12, "clampedScrollP":F
    sub-float v24, v13, v12

    .line 338
    .local v24, "overscrollP":F
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x40155555

    div-float v25, v2, v3

    .line 339
    .local v25, "overscrollX":F
    sget-object v2, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->OVERSCROLL_INTERP:Landroid/view/animation/Interpolator;

    move/from16 v0, v25

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v17

    .line 340
    .local v17, "interpX":F
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->signum(F)F

    move-result v2

    .line 341
    const v3, 0x40155555

    mul-float v3, v3, v17

    .line 340
    mul-float/2addr v2, v3

    add-float v13, v12, v2

    .line 343
    .end local v12    # "clampedScrollP":F
    .end local v17    # "interpX":F
    .end local v24    # "overscrollP":F
    .end local v25    # "overscrollX":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget v0, v2, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mExitRecentOverscrollThreshold:F

    move/from16 v31, v0

    .line 344
    .local v31, "threshold":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastScrollP:F

    move/from16 v0, v31

    neg-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    move/from16 v0, v31

    neg-float v2, v0

    cmpg-float v2, v13, v2

    if-gez v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    sub-int v2, v5, v2

    if-lez v2, :cond_9

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->performHapticFeedback(I)Z

    .line 347
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 348
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    sub-float v7, v13, v7

    .line 347
    invoke-virtual {v3, v4, v7}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setDeltaStackScroll(FF)F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mStackViewScrolledEvent:Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    sub-int v3, v5, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;->updateY(I)V

    .line 350
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mStackViewScrolledEvent:Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 351
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastScrollP:F

    .line 354
    .end local v13    # "curScrollP":F
    .end local v14    # "deltaP":F
    .end local v19    # "maxScrollP":F
    .end local v21    # "minScrollP":F
    .end local v31    # "threshold":F
    :cond_a
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 359
    .end local v5    # "y":I
    .end local v11    # "activePointerIndex":I
    .end local v32    # "x":I
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v28

    .line 360
    .local v28, "pointerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    .line 361
    .local v27, "pointerId":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move/from16 v0, v27

    if-ne v0, v2, :cond_b

    .line 363
    if-nez v28, :cond_c

    const/16 v23, 0x1

    .line 364
    .local v23, "newPointerIndex":I
    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 365
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    .line 366
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    .line 367
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 370
    .end local v23    # "newPointerIndex":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 363
    :cond_c
    const/16 v23, 0x0

    goto :goto_2

    .line 374
    .end local v27    # "pointerId":I
    .end local v28    # "pointerIndex":I
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    int-to-float v3, v3

    const/16 v4, 0x3e8

    invoke-virtual {v2, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 376
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 377
    .restart local v11    # "activePointerIndex":I
    if-ltz v11, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-lt v11, v2, :cond_e

    .line 378
    :cond_d
    const/4 v11, 0x0

    .line 379
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 381
    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v5, v2

    .line 382
    .restart local v5    # "y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v6, v2

    .line 383
    .local v6, "velocity":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v2, :cond_11

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2, v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateBoundScroll(I)Landroid/animation/ObjectAnimator;

    .line 397
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-boolean v2, v2, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    if-nez v2, :cond_f

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 407
    :cond_f
    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsCancelAnimations:Z

    .line 408
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 409
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    goto/16 :goto_0

    .line 387
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 388
    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    .line 387
    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getXForDeltaP(FF)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v22, v0

    .line 389
    .local v22, "minY":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 390
    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 389
    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getXForDeltaP(FF)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v20, v0

    .line 391
    .local v20, "maxY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move/from16 v0, v22

    float-to-int v7, v0

    move/from16 v0, v20

    float-to-int v8, v0

    .line 392
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOverscrollSize:I

    .line 391
    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->fling(FIIIIII)V

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    goto :goto_3

    .line 400
    .end local v20    # "maxY":F
    .end local v22    # "minY":F
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    if-nez v2, :cond_12

    .line 402
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->maybeHideRecentsFromBackgroundTap(II)V

    goto :goto_4

    .line 404
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->startResetAnim()V

    goto :goto_4

    .line 414
    .end local v5    # "y":I
    .end local v6    # "velocity":I
    .end local v11    # "activePointerIndex":I
    :pswitch_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsCancelAnimations:Z

    .line 415
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 416
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    goto/16 :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 184
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 182
    :cond_0
    return-void
.end method

.method private startResetAnim()V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 434
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$2;-><init>(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 445
    sget-object v1, Lcom/android/systemui/Interpolators;->QUAD_EASE_OUT:Landroid/view/animation/Interpolator;

    .line 435
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 432
    :cond_0
    return-void
.end method

.method private startScaleAnim()V
    .locals 4

    .prologue
    const v1, 0x3f828f5c    # 1.02f

    .line 426
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 428
    sget-object v1, Lcom/android/systemui/Interpolators;->EASE_IN_OUT:Landroid/view/animation/Interpolator;

    .line 427
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 424
    :cond_0
    return-void
.end method

.method private updateTaskViewTransforms(F)V
    .locals 12
    .param p1, "dismissFraction"    # F

    .prologue
    .line 730
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v5

    .line 731
    .local v5, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 732
    .local v4, "taskViewCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_4

    .line 733
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskView;

    .line 734
    .local v7, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    .line 736
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v8, v2}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 732
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 740
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 741
    .local v3, "taskIndex":I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_0

    .line 747
    if-ltz v3, :cond_2

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v3, v8, :cond_3

    .line 748
    :cond_2
    const-string/jumbo v8, "TaskStackViewTouchHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateTaskViewTransforms error, taskIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 749
    const-string/jumbo v10, ",  mCurrentTaskTransforms.size() = "

    .line 748
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 749
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 748
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 750
    const-string/jumbo v10, ",  mCurrentTaskTransforms.size() = "

    .line 748
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 750
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 748
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 747
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 754
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 755
    .local v0, "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 757
    .local v6, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v8, v0}, Lcom/android/systemui/recents/views/TaskViewTransform;->copyFrom(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    .line 759
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v8, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    sget-object v9, Lcom/android/systemui/recents/misc/Utilities;->RECTF_EVALUATOR:Lcom/android/systemui/recents/misc/RectFEvaluator;

    .line 760
    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v11, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    .line 759
    invoke-virtual {v9, p1, v10, v11}, Lcom/android/systemui/recents/misc/RectFEvaluator;->evaluate(FLandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 761
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v9, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    iget v10, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 762
    iget v11, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 761
    sub-float/2addr v10, v11

    mul-float/2addr v10, p1

    add-float/2addr v9, v10

    iput v9, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 763
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v9, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 764
    iget v10, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    iget v11, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, p1

    .line 763
    add-float/2addr v9, v10

    iput v9, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 766
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v9, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 767
    iget v10, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    iget v11, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, p1

    .line 766
    add-float/2addr v9, v10

    iput v9, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 769
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    sget-object v10, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {v8, v7, v9, v10}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto/16 :goto_1

    .line 729
    .end local v0    # "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v3    # "taskIndex":I
    .end local v6    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v7    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_4
    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    move-object v1, p1

    .line 530
    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    .line 531
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 532
    .local v0, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 533
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 534
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    const/4 v2, 0x1

    .line 532
    :cond_0
    return v2
.end method

.method public cancelNonDismissTaskAnimations()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 225
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollFlingAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v4}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, "isCancelAnimations":Z
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 229
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    .line 230
    .local v2, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 231
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 233
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 230
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    .line 238
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    invoke-virtual {v4, v3, v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->addUnfocusedTaskOverride(Lcom/android/systemui/recents/views/TaskView;F)V

    goto :goto_1

    .line 240
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    .line 242
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    invoke-virtual {v4, v5, v7}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/recents/views/AnimationProps;)V

    .line 244
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 245
    const/4 v1, 0x1

    .line 247
    .end local v0    # "i":I
    .end local v2    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    :cond_2
    iput-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 248
    return v1
.end method

.method public checkToBeginDrag(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 713
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->startDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 515
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    .line 516
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v0, :cond_0

    .line 517
    return-object v0

    .line 519
    :cond_0
    return-object v3
.end method

.method public getFalsingThresholdFactor()F
    .locals 1

    .prologue
    .line 723
    const/4 v0, 0x0

    return v0
.end method

.method public getOldStackScroll()F
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOldStackScroll:F

    return v0
.end method

.method public getScaledDismissSize()F
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 176
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 174
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method public isAntiFalsingNeeded()Z
    .locals 1

    .prologue
    .line 718
    const/4 v0, 0x0

    return v0
.end method

.method maybeHideRecentsFromBackgroundTap(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v7, 0x0

    .line 457
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 458
    .local v0, "dx":I
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 459
    .local v1, "dy":I
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    if-gt v0, v4, :cond_0

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    if-le v1, v4, :cond_2

    .line 460
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsCancelAnimations:Z

    if-eqz v4, :cond_1

    .line 461
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    .line 463
    :cond_1
    return-void

    .line 466
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mAllowHideRecentsFromBackgroundTap:Z

    if-nez v4, :cond_3

    .line 467
    const-string/jumbo v4, "TaskStackViewTouchHandler"

    const-string/jumbo v5, "mAllowHideRecentsFromBackgroundTap == false"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return-void

    .line 472
    :cond_3
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 473
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 474
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, v4, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    .line 475
    .local v2, "freeformRect":Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-gt v4, p2, :cond_4

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v4, :cond_4

    .line 476
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->launchFreeformTasks()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 478
    return-void

    .line 485
    .end local v2    # "freeformRect":Landroid/graphics/Rect;
    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    const/4 v6, 0x1

    invoke-direct {v5, v7, v6, v7}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZZ)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 486
    const-string/jumbo v4, "hideRecents"

    const-string/jumbo v5, "clickEmptySpace"

    invoke-static {v4, v5}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    move-object v1, p1

    .line 558
    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    .line 559
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->reset()V

    .line 561
    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskView;->setTranslationZ(F)V

    .line 562
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 565
    invoke-virtual {v1, v6}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 567
    invoke-virtual {v1, v6}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 569
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 570
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 571
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 557
    :cond_0
    return-void
.end method

.method public onBeginManualDrag(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 2
    .param p1, "v"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 552
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onBeginDrag(Landroid/view/View;)V

    .line 550
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    move-object v0, p1

    .line 627
    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    .line 630
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v0, v7}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 632
    invoke-virtual {v0, v7}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 635
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    .line 636
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 637
    new-instance v1, Lcom/android/systemui/recents/views/AnimationProps;

    .line 638
    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 637
    const/16 v6, 0xc8

    invoke-direct {v1, v6, v5}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    .line 635
    :goto_0
    invoke-direct {v3, v4, v0, v1}, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/AnimationProps;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 642
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    new-instance v2, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$3;-><init>(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;)V

    .line 649
    const-wide/16 v4, 0xc8

    .line 644
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/recents/views/TaskStackView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 651
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    .line 652
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->clearUnfocusedTaskOverrides()V

    .line 654
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "overview_task_dismissed_source"

    invoke-static {v1, v2, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 659
    const-string/jumbo v1, "removeTask"

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    return-void

    .line 639
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onChildSnappedBack(Landroid/view/View;F)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "targetLeft"    # F

    .prologue
    const/4 v2, 0x1

    move-object v1, p1

    .line 668
    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    .line 671
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 673
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 675
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskView;->setTranslationZ(F)V

    .line 680
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 681
    .local v0, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 682
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 683
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    sget-object v3, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 684
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v8, 0x96

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, p1

    .line 690
    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    .line 691
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v6, 0xc8

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 692
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 694
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 695
    .local v0, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mRecentsTaskLockDistance:I

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    .line 696
    iget-boolean v2, v0, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskView;->updateLockedFlagVisible(Z)V

    .line 697
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v5, Lcom/android/systemui/recents/events/component/ChangeTaskLockStateEvent;

    iget-boolean v6, v0, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    if-eqz v6, :cond_2

    :goto_1
    invoke-direct {v5, v0, v3}, Lcom/android/systemui/recents/events/component/ChangeTaskLockStateEvent;-><init>(Lcom/android/systemui/recents/model/Task;Z)V

    invoke-virtual {v2, v5}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 689
    :cond_0
    return-void

    :cond_1
    move v2, v4

    .line 696
    goto :goto_0

    :cond_2
    move v3, v4

    .line 697
    goto :goto_1
.end method

.method public onDragEnd(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 577
    instance-of v0, p1, Lcom/android/systemui/recents/views/TaskView;

    if-eqz v0, :cond_0

    move-object v7, p1

    .line 578
    check-cast v7, Lcom/android/systemui/recents/views/TaskView;

    .line 581
    .local v7, "tv":Lcom/android/systemui/recents/views/TaskView;
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 583
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    .line 585
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v6

    .line 587
    .local v6, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/recents/views/TaskStackView;->getCurrentTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 590
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 592
    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOldStackScroll:F

    .line 595
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOldStackScroll:F

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(FZ)V

    .line 598
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOldStackScroll:F

    .line 599
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    .line 598
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackView;->getLayoutTaskTransforms(FILjava/util/ArrayList;ZLjava/util/ArrayList;)V

    .line 602
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOldStackScroll:F

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    .line 576
    .end local v6    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .end local v7    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 491
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    .line 492
    const/4 v3, 0x2

    .line 491
    if-ne v2, v3, :cond_0

    .line 493
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 494
    .local v0, "action":I
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    .line 508
    .end local v0    # "action":I
    :cond_0
    return v4

    .line 497
    .restart local v0    # "action":I
    :pswitch_0
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 498
    .local v1, "vScroll":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 499
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v5, v5, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZ)V

    .line 505
    :goto_0
    return v5

    .line 502
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v4, v5, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZ)V

    goto :goto_0

    .line 494
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 197
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->isShowingMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    return v1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    .line 203
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    if-eqz v0, :cond_1

    .line 204
    return v1

    .line 207
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 213
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    return v1

    .line 217
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 218
    return v1
.end method

.method recycleVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 189
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 191
    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 188
    :cond_0
    return-void
.end method

.method public setAllowHideRecentsFromBackgroundTap(Z)V
    .locals 0
    .param p1, "isAllow"    # Z

    .prologue
    .line 450
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mAllowHideRecentsFromBackgroundTap:Z

    .line 449
    return-void
.end method

.method public updateSwipeProgress(Landroid/view/View;ZF)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "dismissable"    # Z
    .param p3, "swipeProgress"    # F

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    :cond_0
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 615
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->updateTaskViewTransforms(F)V

    .line 619
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
