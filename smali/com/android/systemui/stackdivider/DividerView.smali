.class public Lcom/android/systemui/stackdivider/DividerView;
.super Landroid/widget/FrameLayout;
.source "DividerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/DividerView$1;,
        Lcom/android/systemui/stackdivider/DividerView$2;
    }
.end annotation


# static fields
.field private static final DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mAdjustedForIme:Z

.field private mBackground:Landroid/view/View;

.field private mBackgroundLifted:Z

.field private mCurrentAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentTouchAction:I

.field private mDisplayHeight:I

.field private final mDisplayRect:Landroid/graphics/Rect;

.field private mDisplayWidth:I

.field private mDividerInsets:I

.field private mDividerSize:I

.field private mDividerWindowWidth:I

.field private mDockSide:I

.field private final mDockedInsetRect:Landroid/graphics/Rect;

.field private final mDockedRect:Landroid/graphics/Rect;

.field private mDockedStackMinimized:Z

.field private final mDockedTaskRect:Landroid/graphics/Rect;

.field private mEntranceAnimationRunning:Z

.field private mExitAnimationRunning:Z

.field private mExitStartPosition:I

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGrowRecents:Z

.field private mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

.field private final mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final mHandler:Landroid/os/Handler;

.field private final mLastResizeRect:Landroid/graphics/Rect;

.field private mLongPressEntraceAnimDuration:I

.field private mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

.field private mMoving:Z

.field private final mOtherInsetRect:Landroid/graphics/Rect;

.field private final mOtherRect:Landroid/graphics/Rect;

.field private final mOtherTaskRect:Landroid/graphics/Rect;

.field private final mResetBackgroundRunnable:Ljava/lang/Runnable;

.field private mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

.field private final mStableInsets:Landroid/graphics/Rect;

.field private mStartPosition:I

.field private mStartX:I

.field private mStartY:I

.field private mState:Lcom/android/systemui/stackdivider/DividerState;

.field private final mTempInt2:[I

.field private mTouchElevation:I

.field private mTouchSlop:I

.field private mUnDockByUndockingTaskEvent:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

.field private final mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/DividerView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/DividerView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/stackdivider/DividerView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLongPressEntraceAnimDuration:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/systemui/stackdivider/WindowManagerProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/stackdivider/DividerView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/stackdivider/DividerView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/stackdivider/DividerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/stackdivider/DividerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)V
    .locals 0
    .param p1, "target"    # Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->commitSnapFlags(Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 108
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v5, v1, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 107
    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 110
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6b851f    # 0.23f

    const v2, 0x3f5eb852    # 0.87f

    const v3, 0x3f051eb8    # 0.52f

    const v4, -0x421eb852    # -0.11f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 109
    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 112
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 111
    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    .line 142
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mUnDockByUndockingTaskEvent:Z

    .line 162
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 229
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    .line 236
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 241
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    .line 142
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mUnDockByUndockingTaskEvent:Z

    .line 162
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 229
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 245
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    .line 142
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mUnDockByUndockingTaskEvent:Z

    .line 162
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 229
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 250
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    .line 142
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mUnDockByUndockingTaskEvent:Z

    .line 162
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 229
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    .line 249
    return-void
.end method

.method private alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "containingRect"    # Landroid/graphics/Rect;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 824
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 825
    .local v1, "width":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 826
    .local v0, "height":I
    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    .line 827
    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 826
    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 823
    return-void
.end method

.method private alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "containingRect"    # Landroid/graphics/Rect;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 817
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 818
    .local v1, "width":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 819
    .local v0, "height":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 820
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    .line 819
    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 816
    return-void
.end method

.method private applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;II)V
    .locals 10
    .param p1, "taskRect"    # Landroid/graphics/Rect;
    .param p2, "dockSide"    # I
    .param p3, "snapTarget"    # Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .param p4, "position"    # I
    .param p5, "taskPosition"    # I

    .prologue
    const/4 v9, 0x0

    .line 982
    const/high16 v7, 0x3f800000    # 1.0f

    .line 983
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v8, p4}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->calculateDismissingFraction(I)F

    move-result v8

    .line 982
    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 984
    .local v1, "fraction":F
    const/4 v0, 0x0

    .line 985
    .local v0, "dismissTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    const/4 v4, 0x0

    .line 986
    .local v4, "splitTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    const/4 v5, 0x0

    .line 987
    .local v5, "start":I
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    iget v7, v7, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    if-gt p4, v7, :cond_2

    .line 988
    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v7

    .line 987
    if-eqz v7, :cond_2

    .line 989
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 990
    .local v0, "dismissTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    .line 991
    .local v4, "splitTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    move v5, p5

    .line 998
    .end local v0    # "dismissTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .end local v4    # "splitTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    cmpl-float v7, v1, v9

    if-lez v7, :cond_1

    .line 999
    invoke-static {v4, p4, p2}, Lcom/android/systemui/stackdivider/DividerView;->isDismissing(Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;II)Z

    move-result v7

    .line 998
    if-eqz v7, :cond_1

    .line 1000
    invoke-static {v1, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculateParallaxDismissingFraction(FI)F

    move-result v1

    .line 1001
    int-to-float v7, v5

    .line 1002
    iget v8, v0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v9, v4, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v1

    .line 1001
    add-float/2addr v7, v8

    float-to-int v3, v7

    .line 1003
    .local v3, "offsetPosition":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 1004
    .local v6, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1005
    .local v2, "height":I
    packed-switch p2, :pswitch_data_0

    .line 981
    .end local v2    # "height":I
    .end local v3    # "offsetPosition":I
    .end local v6    # "width":I
    :cond_1
    :goto_1
    return-void

    .line 992
    .local v0, "dismissTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .local v4, "splitTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    iget v7, v7, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    if-lt p4, v7, :cond_0

    .line 993
    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v7

    .line 992
    if-eqz v7, :cond_0

    .line 994
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 995
    .local v0, "dismissTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    .line 996
    .local v4, "splitTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    iget v5, v4, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_0

    .line 1007
    .end local v0    # "dismissTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .end local v4    # "splitTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .restart local v2    # "height":I
    .restart local v3    # "offsetPosition":I
    .restart local v6    # "width":I
    :pswitch_0
    sub-int v7, v3, v6

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 1008
    iput v3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1011
    :pswitch_1
    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v3

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 1012
    add-int v7, v3, v6

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1015
    :pswitch_2
    sub-int v7, v3, v2

    iput v7, p1, Landroid/graphics/Rect;->top:I

    .line 1016
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1019
    :pswitch_3
    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v3

    iput v7, p1, Landroid/graphics/Rect;->top:I

    .line 1020
    add-int v7, v3, v2

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1005
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private applyExitAnimationParallax(Landroid/graphics/Rect;I)V
    .locals 4
    .param p1, "taskRect"    # Landroid/graphics/Rect;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3e800000    # 0.25f

    .line 918
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 919
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 920
    :cond_1
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 921
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 922
    :cond_2
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 923
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0
.end method

.method private static calculateParallaxDismissingFraction(FI)F
    .locals 3
    .param p0, "fraction"    # F
    .param p1, "dockSide"    # I

    .prologue
    .line 1031
    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, p0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v2, 0x40600000    # 3.5f

    div-float v0, v1, v2

    .line 1034
    .local v0, "result":F
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1035
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 1037
    :cond_0
    return v0
.end method

.method private calculatePosition(II)I
    .locals 1
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculateYPosition(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->calculateXPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method private calculateXPosition(I)I
    .locals 2
    .param p1, "touchX"    # I

    .prologue
    .line 809
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private calculateYPosition(I)I
    .locals 2
    .param p1, "touchY"    # I

    .prologue
    .line 813
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private cancelFlingAnimation()V
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 592
    :cond_0
    return-void
.end method

.method private commitSnapFlags(Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)V
    .locals 6
    .param p1, "target"    # Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 599
    iget v2, p1, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-nez v2, :cond_3

    .line 601
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 602
    const-string/jumbo v1, "firstSplitTarget"

    .line 610
    .local v1, "targetName":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "resizeStack"

    invoke-static {v2, v1}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendMultiWindowEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    return-void

    .line 603
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 604
    const-string/jumbo v1, "middleTarget"

    .restart local v1    # "targetName":Ljava/lang/String;
    goto :goto_0

    .line 605
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 606
    const-string/jumbo v1, "lastSplitTarget"

    .restart local v1    # "targetName":Ljava/lang/String;
    goto :goto_0

    .line 608
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "otherTarget"

    .restart local v1    # "targetName":Ljava/lang/String;
    goto :goto_0

    .line 614
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_3
    iget v2, p1, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-ne v2, v3, :cond_6

    .line 615
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v2, v3, :cond_4

    .line 616
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    const/4 v0, 0x1

    .line 621
    .local v0, "dismissOrMaximize":Z
    :goto_1
    if-eqz v0, :cond_9

    .line 622
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->dismissDockedStack()V

    .line 626
    :goto_2
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/component/ExitMultiModeEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/component/ExitMultiModeEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 627
    const-string/jumbo v3, "exitMultiWindow"

    .line 628
    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mUnDockByUndockingTaskEvent:Z

    if-eqz v2, :cond_a

    const-string/jumbo v2, "exitMultiWindowButton"

    .line 627
    :goto_3
    invoke-static {v3, v2}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendMultiWindowEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iput-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mUnDockByUndockingTaskEvent:Z

    .line 630
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v5, v4}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizeDimLayer(ZIIF)V

    .line 598
    return-void

    .line 615
    .end local v0    # "dismissOrMaximize":Z
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "dismissOrMaximize":Z
    goto :goto_1

    .line 616
    .end local v0    # "dismissOrMaximize":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "dismissOrMaximize":Z
    goto :goto_1

    .line 618
    .end local v0    # "dismissOrMaximize":Z
    :cond_6
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    .line 619
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    const/4 v0, 0x1

    .restart local v0    # "dismissOrMaximize":Z
    goto :goto_1

    .line 618
    .end local v0    # "dismissOrMaximize":Z
    :cond_7
    const/4 v0, 0x1

    .restart local v0    # "dismissOrMaximize":Z
    goto :goto_1

    .line 619
    .end local v0    # "dismissOrMaximize":Z
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "dismissOrMaximize":Z
    goto :goto_1

    .line 624
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->maximizeDockedStack()V

    goto :goto_2

    .line 628
    :cond_a
    const-string/jumbo v2, "Slippery"

    goto :goto_3
.end method

.method private convertToScreenCoordinates(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 514
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 513
    return-void
.end method

.method private static dockSideBottomRight(I)Z
    .locals 2
    .param p0, "dockSide"    # I

    .prologue
    const/4 v0, 0x1

    .line 1083
    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static dockSideTopLeft(I)Z
    .locals 2
    .param p0, "dockSide"    # I

    .prologue
    const/4 v0, 0x1

    .line 1076
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fling(IFZZ)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "velocity"    # F
    .param p3, "avoidDismissStart"    # Z
    .param p4, "logMetrics"    # Z

    .prologue
    .line 519
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->calculateSnapTarget(IF)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    .line 520
    .local v1, "snapTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 521
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    .line 523
    :cond_0
    if-eqz p4, :cond_1

    .line 524
    invoke-direct {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->logResizeEvent(Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)V

    .line 526
    :cond_1
    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 527
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    int-to-float v3, p1

    iget v4, v1, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    int-to-float v4, v4

    invoke-virtual {v2, v0, v3, v4, p2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 528
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 518
    return-void
.end method

.method private flingTo(ILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "target"    # Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .param p3, "duration"    # J
    .param p5, "startDelay"    # J
    .param p7, "endDelay"    # J
    .param p9, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 533
    invoke-direct {p0, p1, p2, p7, p8}, Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 534
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 535
    invoke-virtual {v0, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 536
    invoke-virtual {v0, p9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 537
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 532
    return-void
.end method

.method private getDimFraction(ILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)F
    .locals 3
    .param p1, "position"    # I
    .param p2, "dismissTarget"    # Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    .prologue
    const/4 v2, 0x0

    .line 928
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    if-eqz v1, :cond_0

    .line 929
    return v2

    .line 931
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->calculateDismissingFraction(I)F

    move-result v0

    .line 932
    .local v0, "fraction":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 933
    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    .line 934
    invoke-direct {p0, p2}, Lcom/android/systemui/stackdivider/DividerView;->hasInsetsAtDismissTarget(Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 937
    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    .line 939
    :cond_1
    return v0
.end method

.method private getFlingAnimator(ILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;
    .locals 9
    .param p1, "position"    # I
    .param p2, "snapTarget"    # Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .param p3, "endDelay"    # J

    .prologue
    const/4 v1, 0x0

    .line 542
    iget v0, p2, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-nez v0, :cond_0

    const/4 v3, 0x1

    .line 543
    .local v3, "taskPositionSameAtEnd":Z
    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p1, v0, v1

    iget v1, p2, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 544
    .local v7, "anim":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$4;

    invoke-direct {v0, p0, v3, p2}, Lcom/android/systemui/stackdivider/DividerView$4;-><init>(Lcom/android/systemui/stackdivider/DividerView;ZLcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 553
    new-instance v6, Lcom/android/systemui/stackdivider/DividerView$5;

    invoke-direct {v6, p0, p2}, Lcom/android/systemui/stackdivider/DividerView$5;-><init>(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)V

    .line 565
    .local v6, "endAction":Ljava/lang/Runnable;
    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$6;

    move-object v1, p0

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/stackdivider/DividerView$6;-><init>(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;ZJLjava/lang/Runnable;)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 588
    iput-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    .line 589
    return-object v7

    .line 542
    .end local v3    # "taskPositionSameAtEnd":Z
    .end local v6    # "endAction":Ljava/lang/Runnable;
    .end local v7    # "anim":Landroid/animation/ValueAnimator;
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "taskPositionSameAtEnd":Z
    goto :goto_0
.end method

.method private getStackIdForDismissTarget(Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)I
    .locals 2
    .param p1, "dismissTarget"    # Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    .prologue
    .line 1049
    iget v0, p1, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1050
    :cond_0
    iget v0, p1, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1051
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v0

    .line 1049
    if-eqz v0, :cond_2

    .line 1052
    :cond_1
    const/4 v0, 0x3

    return v0

    .line 1054
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    .line 1055
    const/4 v0, 0x5

    return v0

    .line 1057
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private getWindowingModeForDismissTarget(Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)I
    .locals 2
    .param p1, "dismissTarget"    # Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    .prologue
    .line 1063
    iget v0, p1, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1064
    :cond_0
    iget v0, p1, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1065
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v0

    .line 1063
    if-eqz v0, :cond_2

    .line 1066
    :cond_1
    const/4 v0, 0x3

    return v0

    .line 1068
    :cond_2
    const/4 v0, 0x4

    return v0
.end method

.method private hasInsetsAtDismissTarget(Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)Z
    .locals 3
    .param p1, "dismissTarget"    # Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 946
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 947
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 948
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 950
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 953
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    if-ne p1, v2, :cond_5

    .line 954
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v2, :cond_4

    :goto_2
    return v0

    :cond_4
    move v0, v1

    goto :goto_2

    .line 956
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eqz v2, :cond_6

    :goto_3
    return v0

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method private initializeSnapAlgorithm()V
    .locals 7

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    .line 412
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    .line 411
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    .line 409
    :cond_0
    return-void
.end method

.method private static isDismissing(Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;II)Z
    .locals 3
    .param p0, "snapTarget"    # Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .param p1, "position"    # I
    .param p2, "dockSide"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1041
    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    if-ne p2, v0, :cond_2

    .line 1042
    :cond_0
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1044
    :cond_2
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private liftBackground()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x96

    const v1, 0x3fb33333    # 1.4f

    .line 634
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    if-eqz v0, :cond_0

    .line 635
    return-void

    .line 637
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 642
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 643
    sget-object v1, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    .line 642
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 645
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchElevation:I

    int-to-float v1, v1

    .line 642
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 650
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 651
    sget-object v1, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    .line 650
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 653
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchElevation:I

    int-to-float v1, v1

    .line 650
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    .line 633
    return-void

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private logResizeEvent(Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)V
    .locals 6
    .param p1, "snapTarget"    # Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    .prologue
    const/16 v5, 0x186

    const/4 v2, 0x2

    const/16 v4, 0x185

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 487
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne p1, v3, :cond_2

    .line 489
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 488
    :goto_0
    invoke-static {v2, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 486
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 491
    goto :goto_0

    .line 492
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne p1, v3, :cond_4

    .line 494
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 493
    :goto_2
    invoke-static {v2, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 496
    goto :goto_2

    .line 497
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne p1, v3, :cond_5

    .line 498
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    .line 500
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    if-ne p1, v1, :cond_7

    .line 501
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    .line 502
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 501
    :goto_3
    invoke-static {v1, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    :cond_6
    move v0, v2

    .line 504
    goto :goto_3

    .line 505
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    .line 507
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 506
    :goto_4
    invoke-static {v1, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    :cond_8
    move v2, v0

    .line 509
    goto :goto_4
.end method

.method private releaseBackground()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 659
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    if-nez v0, :cond_0

    .line 660
    return-void

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 663
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 662
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 669
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 670
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 669
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 674
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    .line 658
    return-void
.end method

.method private resetBackground()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 768
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 769
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 770
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 771
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 772
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setAlpha(F)V

    .line 767
    return-void
.end method

.method private restrictDismissingTaskPosition(IILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)I
    .locals 2
    .param p1, "taskPosition"    # I
    .param p2, "dockSide"    # I
    .param p3, "snapTarget"    # Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    .prologue
    .line 967
    iget v0, p3, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 969
    :cond_0
    iget v0, p3, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 970
    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v0

    .line 969
    if-eqz v0, :cond_1

    .line 971
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 973
    :cond_1
    return p1
.end method

.method private stopDragging()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 399
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    .line 400
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 401
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    .line 398
    return-void
.end method

.method private updateDisplayInfo()V
    .locals 5

    .prologue
    .line 790
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 791
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 792
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 793
    .local v2, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 794
    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    .line 795
    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    .line 796
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    .line 797
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 788
    return-void
.end method

.method private updateDockSide()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 406
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setDockSide(I)V

    .line 404
    return-void
.end method


# virtual methods
.method public calculateBoundsForPosition(IILandroid/graphics/Rect;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "dockSide"    # I
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 831
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    .line 832
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    move v0, p1

    move v1, p2

    move-object v2, p3

    .line 831
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/stackdivider/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 830
    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->getLocationOnScreen([I)V

    .line 423
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    add-int/2addr v0, v1

    return v0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getSnapAlgorithm()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;
    .locals 1

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 418
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    return-object v0
.end method

.method public getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-object v0
.end method

.method public growsRecents()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1103
    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowRecents:Z

    if-eqz v2, :cond_1

    .line 1104
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1105
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    .line 1106
    .local v0, "result":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1107
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    return v1

    .end local v0    # "result":Z
    :cond_1
    move v0, v1

    .line 1103
    goto :goto_0

    .line 1109
    .restart local v0    # "result":Z
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public injectDependencies(Lcom/android/systemui/stackdivider/DividerWindowManager;Lcom/android/systemui/stackdivider/DividerState;)V
    .locals 0
    .param p1, "windowManager"    # Lcom/android/systemui/stackdivider/DividerWindowManager;
    .param p2, "dividerState"    # Lcom/android/systemui/stackdivider/DividerState;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    .line 349
    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    .line 347
    return-void
.end method

.method public isHorizontalDivision()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 805
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDockSideChanged(I)V
    .locals 2
    .param p1, "newDockSide"    # I

    .prologue
    .line 783
    iput p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 784
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setDockSide(I)V

    .line 785
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->requestLayout()V

    .line 782
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    const/4 v5, 0x0

    .line 311
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 315
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    .line 316
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v4

    .line 315
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 317
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    if-eqz v0, :cond_1

    .line 318
    iput-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    .line 319
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 323
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 299
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 300
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/RecentsEventBus;->register(Ljava/lang/Object;)V

    .line 298
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1122
    iget v1, p1, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;->dragMode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1123
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iput-boolean v3, v1, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    .line 1124
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iput-boolean v4, v1, Lcom/android/systemui/stackdivider/DividerState;->animateAfterRecentsDrawn:Z

    .line 1125
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 1127
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 1128
    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;->initialRect:Landroid/graphics/Rect;

    .line 1129
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    .line 1128
    invoke-static {v1, v2, v3}, Lcom/android/systemui/stackdivider/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v0

    .line 1130
    .local v0, "position":I
    iput-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    .line 1133
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1134
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    .line 1135
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    .line 1136
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 1139
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 1140
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    .line 1139
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)V

    .line 1121
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    .prologue
    .line 1187
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->inMultiWindow:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->isAndroidNorNewer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1188
    :cond_0
    return-void

    .line 1191
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 1192
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 1193
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    .line 1192
    const v2, 0x7fffffff

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)V

    .line 1186
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;)V
    .locals 3
    .param p1, "recentsActivityStartingEvent"    # Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    .prologue
    const/4 v2, 0x0

    .line 1114
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowRecents:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1115
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ne v0, v1, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    .line 1117
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 1113
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;)V
    .locals 12
    .param p1, "undockingTaskEvent"    # Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 1169
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    .line 1170
    .local v0, "dockSide":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v1, :cond_1

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1171
    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 1172
    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1173
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    .line 1177
    .local v3, "target":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    :goto_1
    iput-boolean v11, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    .line 1178
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    .line 1179
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    const-wide/16 v4, 0x150

    const-wide/16 v6, 0x64

    .line 1180
    const-wide/16 v8, 0x0

    sget-object v10, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    .line 1179
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    .line 1182
    iput-boolean v11, p0, Lcom/android/systemui/stackdivider/DividerView;->mUnDockByUndockingTaskEvent:Z

    goto :goto_0

    .line 1174
    .end local v3    # "target":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    .restart local v3    # "target":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    goto :goto_1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;)V
    .locals 7
    .param p1, "drawnEvent"    # Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;

    .prologue
    const/4 v2, 0x0

    .line 1144
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iget-boolean v0, v0, Lcom/android/systemui/stackdivider/DividerState;->animateAfterRecentsDrawn:Z

    if-eqz v0, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iput-boolean v2, v0, Lcom/android/systemui/stackdivider/DividerState;->animateAfterRecentsDrawn:Z

    .line 1146
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 1148
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/stackdivider/DividerView$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/DividerView$7;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iget-boolean v0, v0, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    if-eqz v0, :cond_1

    .line 1160
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iput-boolean v2, v0, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    .line 1161
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 1162
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1163
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    const-wide/16 v4, 0x150

    .line 1164
    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    .line 1163
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V

    .line 1143
    :cond_1
    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 6
    .param p1, "inoutInfo"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .prologue
    .line 1088
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 1089
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/DividerHandleView;->getRight()I

    move-result v3

    .line 1090
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/DividerHandleView;->getBottom()I

    move-result v4

    .line 1089
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Region;->set(IIII)Z

    .line 1091
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1092
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 1091
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 1087
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 777
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 778
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDisplayInfo()V

    .line 776
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 305
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 306
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/RecentsEventBus;->unregister(Ljava/lang/Object;)V

    .line 304
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 255
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 256
    const v1, 0x91200d4

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/DividerHandleView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    .line 257
    const v1, 0x91200d2

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    .line 258
    const v1, 0x91200d3

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    .line 259
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 261
    const v2, 0x90f0237

    .line 260
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerWindowWidth:I

    .line 262
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 263
    const v2, 0x90f0238

    .line 262
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    .line 264
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerWindowWidth:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    .line 265
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 266
    const v2, 0x90f01c3

    .line 265
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchElevation:I

    .line 267
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 268
    const v2, 0x90e0029

    .line 267
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLongPressEntraceAnimDuration:I

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90d0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowRecents:Z

    .line 270
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    .line 271
    new-instance v1, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 272
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDisplayInfo()V

    .line 273
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_0

    const/4 v0, 0x1

    .line 277
    .local v0, "landscape":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 278
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 279
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/stackdivider/DividerView$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/stackdivider/DividerView$3;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 254
    return-void

    .line 273
    .end local v0    # "landscape":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "landscape":Z
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 328
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "minimizeLeft":I
    const/4 v1, 0x0

    .line 331
    .local v1, "minimizeTop":I
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 332
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 338
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    .line 339
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    .line 340
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 338
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->layout(IIII)V

    .line 341
    if-eqz p1, :cond_1

    .line 342
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/DividerHandleView;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v5}, Lcom/android/systemui/stackdivider/DividerHandleView;->getTop()I

    move-result v5

    .line 343
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v6}, Lcom/android/systemui/stackdivider/DividerHandleView;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/DividerHandleView;->getBottom()I

    move-result v7

    .line 342
    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setTouchRegion(Landroid/graphics/Rect;)V

    .line 327
    :cond_1
    return-void

    .line 333
    :cond_2
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 334
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 335
    :cond_3
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 336
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getWidth()I

    move-result v3

    sub-int v0, v2, v3

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 432
    invoke-direct {p0, p2}, Lcom/android/systemui/stackdivider/DividerView;->convertToScreenCoordinates(Landroid/view/MotionEvent;)V

    .line 433
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v6, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 434
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    iput v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentTouchAction:I

    .line 435
    iget v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentTouchAction:I

    packed-switch v6, :pswitch_data_0

    .line 483
    :cond_0
    :goto_0
    return v9

    .line 437
    :pswitch_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 438
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 439
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    .line 440
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    .line 441
    invoke-virtual {p0, v9, v9}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    move-result v2

    .line 442
    .local v2, "result":Z
    if-nez v2, :cond_1

    .line 445
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging()V

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v6

    iput v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    .line 448
    iput-boolean v10, p0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    .line 449
    return v2

    .line 451
    .end local v2    # "result":Z
    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 452
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 453
    .local v4, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 455
    .local v5, "y":I
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    sub-int v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    if-le v6, v7, :cond_3

    const/4 v0, 0x1

    .line 457
    .local v0, "exceededTouchSlop":Z
    :goto_1
    iget-boolean v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    if-nez v6, :cond_2

    if-eqz v0, :cond_2

    .line 458
    iput v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    .line 459
    iput v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    .line 460
    iput-boolean v9, p0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    .line 462
    :cond_2
    iget-boolean v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 463
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    .line 464
    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    const/4 v8, 0x0

    .line 463
    invoke-virtual {v6, v7, v8, v10}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    .line 465
    .local v3, "snapTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v6

    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->isAndroidNorNewer()Z

    move-result v8

    invoke-virtual {p0, v6, v7, v3, v8}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;Z)V

    goto :goto_0

    .line 456
    .end local v0    # "exceededTouchSlop":Z
    .end local v3    # "snapTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v6

    if-nez v6, :cond_4

    iget v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    sub-int v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    if-le v6, v7, :cond_4

    const/4 v0, 0x1

    .restart local v0    # "exceededTouchSlop":Z
    goto :goto_1

    .end local v0    # "exceededTouchSlop":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "exceededTouchSlop":Z
    goto :goto_1

    .line 470
    .end local v0    # "exceededTouchSlop":Z
    .end local v4    # "x":I
    .end local v5    # "y":I
    :pswitch_2
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 472
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v4, v6

    .line 473
    .restart local v4    # "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v5, v6

    .line 475
    .restart local v5    # "y":I
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 476
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v1

    .line 477
    .local v1, "position":I
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    :goto_2
    invoke-virtual {p0, v1, v6, v10, v9}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    .line 480
    iput-boolean v10, p0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    goto/16 :goto_0

    .line 478
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    goto :goto_2

    .line 435
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resizeStack(IILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "taskPosition"    # I
    .param p3, "taskSnapTarget"    # Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    .prologue
    .line 836
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;Z)V

    .line 835
    return-void
.end method

.method public resizeStack(IILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;Z)V
    .locals 24
    .param p1, "position"    # I
    .param p2, "taskPosition"    # I
    .param p3, "taskSnapTarget"    # Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .param p4, "resize"    # Z

    .prologue
    .line 840
    if-nez p4, :cond_4

    const/16 p4, 0x0

    .line 841
    .local p4, "resize":Z
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->isAndroidNorNewer()Z

    move-result v3

    if-nez v3, :cond_0

    .line 842
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/systemui/stackdivider/DividerWindowManager;->update(I)V

    .line 845
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 847
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    if-eqz v3, :cond_5

    .line 852
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getZ()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 853
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 855
    :cond_2
    if-eqz p4, :cond_3

    .line 856
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 858
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    if-eqz v3, :cond_8

    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_8

    .line 859
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_6

    .line 860
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 865
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DockedDividerUtils;->invertDockSide(I)I

    move-result v3

    .line 866
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 865
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 867
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 868
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 867
    const/4 v6, 0x0

    .line 868
    const/4 v8, 0x0

    move/from16 v9, p4

    .line 867
    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 909
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->getClosestDismissTarget(I)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    move-result-object v22

    .line 910
    .local v22, "closestDismissTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->getDimFraction(ILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)F

    move-result v23

    .line 911
    .local v23, "dimFraction":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    const/4 v3, 0x0

    cmpl-float v3, v23, v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    .line 912
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->getStackIdForDismissTarget(Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)I

    move-result v5

    .line 913
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->getWindowingModeForDismissTarget(Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)I

    move-result v6

    .line 911
    move/from16 v0, v23

    invoke-virtual {v4, v3, v5, v6, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizeDimLayer(ZIIF)V

    .line 839
    return-void

    .line 840
    .end local v22    # "closestDismissTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .end local v23    # "dimFraction":F
    .local p4, "resize":Z
    :cond_4
    const/16 p4, 0x1

    .local p4, "resize":Z
    goto/16 :goto_0

    .line 848
    :cond_5
    return-void

    .line 862
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    .line 863
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 862
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    goto :goto_4

    .line 869
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    if-eqz v3, :cond_9

    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_9

    .line 871
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 870
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 872
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    .line 873
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/systemui/stackdivider/DockedDividerUtils;->invertDockSide(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 872
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 874
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 875
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/stackdivider/DividerView;->applyExitAnimationParallax(Landroid/graphics/Rect;I)V

    .line 876
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 877
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    .line 876
    const/4 v6, 0x0

    move/from16 v9, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    goto/16 :goto_2

    .line 878
    :cond_9
    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_b

    .line 879
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DockedDividerUtils;->invertDockSide(I)I

    move-result v3

    .line 880
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    .line 879
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 881
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DockedDividerUtils;->invertDockSide(I)I

    move-result v11

    .line 883
    .local v11, "dockSideInverted":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/stackdivider/DividerView;->restrictDismissingTaskPosition(IILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)I

    move-result v8

    .line 885
    .local v8, "taskPositionDocked":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v11, v2}, Lcom/android/systemui/stackdivider/DividerView;->restrictDismissingTaskPosition(IILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)I

    move-result v14

    .line 886
    .local v14, "taskPositionOther":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 887
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 888
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 889
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 890
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 891
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 892
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 893
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 894
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 895
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 900
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v3, p0

    move-object/from16 v6, p3

    move/from16 v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/stackdivider/DividerView;->applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;II)V

    .line 902
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v9, p0

    move-object/from16 v12, p3

    move/from16 v13, p1

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/stackdivider/DividerView;->applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;II)V

    .line 904
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move/from16 v21, p4

    .line 904
    invoke-virtual/range {v15 .. v21}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    goto/16 :goto_2

    .line 897
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 898
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_5

    .line 907
    .end local v8    # "taskPositionDocked":I
    .end local v11    # "dockSideInverted":I
    .end local v14    # "taskPositionOther":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v21, p4

    invoke-virtual/range {v15 .. v21}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    goto/16 :goto_2

    .line 911
    .restart local v22    # "closestDismissTarget":Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .restart local v23    # "dimFraction":F
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_3
.end method

.method public setAdjustedForIme(Z)V
    .locals 3
    .param p1, "adjustedForIme"    # Z

    .prologue
    const/4 v1, 0x0

    .line 734
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 735
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->setAlpha(F)V

    .line 736
    if-nez p1, :cond_2

    .line 737
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    .line 742
    :cond_0
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    .line 733
    return-void

    .line 735
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 738
    :cond_2
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 739
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 740
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1
.end method

.method public setAdjustedForIme(ZJ)V
    .locals 4
    .param p1, "adjustedForIme"    # Z
    .param p2, "animDuration"    # J

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 746
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 747
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 748
    sget-object v3, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 747
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 750
    if-eqz p1, :cond_3

    move v0, v1

    .line 747
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 752
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 753
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 754
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 755
    if-eqz p1, :cond_0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 754
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 757
    :cond_1
    if-nez p1, :cond_2

    .line 758
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 760
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 761
    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 760
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 764
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    .line 745
    return-void

    :cond_3
    move v0, v2

    .line 750
    goto :goto_0
.end method

.method public setMinimizedDockStack(Z)V
    .locals 5
    .param p1, "minimized"    # Z

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 679
    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->isAndroidNorNewer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 680
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 681
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->setAlpha(F)V

    .line 682
    if-nez p1, :cond_3

    .line 683
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    .line 694
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    if-eqz p1, :cond_7

    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setAlpha(F)V

    .line 695
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    .line 678
    return-void

    :cond_2
    move v0, v2

    .line 681
    goto :goto_0

    .line 684
    :cond_3
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 685
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 686
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    .line 687
    :cond_4
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v0, v4, :cond_5

    .line 688
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 689
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-ne v0, v4, :cond_6

    .line 690
    const/4 v0, 0x0

    .line 689
    :goto_3
    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setPivotX(F)V

    .line 692
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    goto :goto_1

    .line 691
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_3

    :cond_7
    move v2, v1

    .line 694
    goto :goto_2
.end method

.method public setMinimizedDockStack(ZJ)V
    .locals 6
    .param p1, "minimized"    # Z
    .param p2, "animDuration"    # J

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 699
    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->isAndroidNorNewer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 700
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    .line 701
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 702
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 701
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 704
    if-eqz p1, :cond_3

    move v0, v1

    .line 701
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 706
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 707
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 708
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 709
    if-eqz p1, :cond_4

    move v0, v1

    .line 708
    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 718
    :cond_1
    :goto_2
    if-nez p1, :cond_2

    .line 719
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 721
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 722
    if-eqz p1, :cond_9

    .line 721
    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 723
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 721
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 726
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 727
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 726
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 730
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    .line 698
    return-void

    :cond_3
    move v0, v2

    .line 704
    goto :goto_0

    :cond_4
    move v0, v2

    .line 709
    goto :goto_1

    .line 710
    :cond_5
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v0, v4, :cond_6

    .line 711
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 712
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-ne v0, v4, :cond_7

    .line 713
    const/4 v0, 0x0

    .line 712
    :goto_4
    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setPivotX(F)V

    .line 715
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 716
    if-eqz p1, :cond_8

    move v0, v1

    .line 715
    :goto_5
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    .line 714
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_4

    :cond_8
    move v0, v2

    .line 716
    goto :goto_5

    :cond_9
    move v2, v1

    .line 722
    goto :goto_3
.end method

.method public startDragging(ZZ)Z
    .locals 4
    .param p1, "animate"    # Z
    .param p2, "touching"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 357
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    .line 358
    if-eqz p2, :cond_0

    .line 359
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v2, v0, p1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    .line 361
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    .line 362
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    .line 363
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    .line 364
    if-eqz p2, :cond_1

    .line 365
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 366
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->liftBackground()V

    .line 368
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/stackdivider/events/StartedDragingEvent;

    invoke-direct {v3}, Lcom/android/systemui/stackdivider/events/StartedDragingEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 369
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public stopDragging(IFZZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "velocity"    # F
    .param p3, "avoidDismissStart"    # Z
    .param p4, "logMetrics"    # Z

    .prologue
    const/4 v2, 0x1

    .line 374
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    .line 375
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/stackdivider/DividerView;->fling(IFZZ)V

    .line 376
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 377
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    .line 373
    return-void
.end method

.method public stopDragging(ILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "target"    # Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .param p3, "duration"    # J
    .param p5, "startDelay"    # J
    .param p7, "endDelay"    # J
    .param p9, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v2, 0x1

    .line 392
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    .line 393
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/stackdivider/DividerView;->flingTo(ILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    .line 394
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    .line 395
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    .line 391
    return-void
.end method

.method public stopDragging(ILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "target"    # Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 382
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v10, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    .line 381
    return-void
.end method

.method public stopDragging(ILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;J)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "target"    # Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "endDelay"    # J

    .prologue
    .line 387
    const-wide/16 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v8, p6

    move-object/from16 v10, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    .line 386
    return-void
.end method
