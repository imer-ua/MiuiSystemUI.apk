.class public Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
.super Landroid/view/ViewGroup;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;
.implements Lcom/android/systemui/ExpandHelper$Callback;
.implements Lcom/android/systemui/statusbar/policy/ScrollAdapter;
.implements Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;
.implements Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;
.implements Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;
.implements Lcom/android/systemui/statusbar/stack/ScrollContainer;
.implements Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;
.implements Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$OnAnimationRequestedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$2;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$4;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$5;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$6;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$7;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$8;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$9;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnTopPaddingUpdateListener;
    }
.end annotation


# static fields
.field private static final BACKGROUND_FADE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field private static final PRESENT:Ljava/lang/Object;


# instance fields
.field private mActivateNeedsAnimation:Z

.field private mActivePointerId:I

.field private mAddedHeadsUpChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

.field private mAnimateNextBackgroundBottom:Z

.field private mAnimateNextBackgroundTop:Z

.field private mAnimateScroll:Ljava/lang/Runnable;

.field private mAnimationEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationFinishedRunnables:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationRunning:Z

.field private mAnimationsEnabled:Z

.field private mBackgroundBounds:Landroid/graphics/Rect;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundFadeAmount:F

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackgroundRadius:I

.field private mBackwardScrollable:Z

.field private mBgColor:I

.field private mBottomAnimator:Landroid/animation/ObjectAnimator;

.field private mBottomInset:I

.field private mCachedBackgroundColor:I

.field private mChangePositionInProgress:Z

.field mCheckForLeavebehind:Z

.field private mChildRemoveAnimationRunning:Z

.field private mChildTransferInProgress:Z

.field private mChildrenChangingPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenToAddAnimated:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenToRemoveAnimated:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenUpdateRequested:Z

.field private mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mClearOverlayViewsWhenFinished:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mClipRect:Landroid/graphics/Rect;

.field private mClipToOutline:Z

.field private mCollapsedSize:I

.field private mContentHeight:I

.field private mContinuousShadowUpdate:Z

.field private final mCoverPaint:Landroid/graphics/Paint;

.field private mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

.field private mCurrentBounds:Landroid/graphics/Rect;

.field private mCurrentStackHeight:I

.field private mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

.field private mDarkAnimationOriginIndex:I

.field private mDarkNeedsAnimation:Z

.field private mDebugPaint:Landroid/graphics/Paint;

.field private mDimAmount:F

.field private mDimAnimator:Landroid/animation/ValueAnimator;

.field private mDimEndListener:Landroid/animation/Animator$AnimatorListener;

.field private mDimUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mDimmedNeedsAnimation:Z

.field private mDisallowDismissInThisMotion:Z

.field private mDisallowScrollingInThisMotion:Z

.field private mDismissAllInProgress:Z

.field private mDontClampNextScroll:Z

.field private mDontReportNextOverScroll:Z

.field private mDownX:I

.field private mDragAnimPendingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawBackgroundAsSrc:Z

.field protected mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

.field private mEndAnimationRect:Landroid/graphics/Rect;

.field private mEverythingNeedsAnimation:Z

.field private mExpandHelper:Lcom/android/systemui/ExpandHelper;

.field private mExpandedGroupView:Landroid/view/View;

.field private mExpandedHeight:F

.field private mExpandedInThisMotion:Z

.field private mExpandingNotification:Z

.field private mExtraBottomRange:I

.field private mExtraBottomRangeQsCovered:I

.field private mFadingOut:Z

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mFinishScrollingCallback:Ljava/lang/Runnable;

.field private mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ExpandableView;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFoldFooterView:Landroid/view/View;

.field private mFoldHeaderView:Landroid/view/View;

.field private mForceNoOverlappingRendering:Z

.field private mForcedScroll:Landroid/view/View;

.field private mForwardScrollable:Z

.field private mFromMoreCardAdditions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mGenerateChildOrderChangedEvent:Z

.field private mGoToFullShadeDelay:J

.field private mGoToFullShadeNeedsAnimation:Z

.field private mGroupExpandedForMeasure:Z

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHeadsUpAnimatingAway:Z

.field private mHeadsUpChangeAnimations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mHeadsUpPinned:Z

.field private mHideSensitiveNeedsAnimation:Z

.field private mInHeadsUpPinnedMode:Z

.field private mIncreasedPaddingBetweenElements:I

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mIntrinsicPadding:I

.field private mIsBeingDragged:Z

.field private mIsClipped:Z

.field private mIsExpanded:Z

.field private mIsExpansionChanging:Z

.field private mIsQsBeingCovered:Z

.field private mIsQsCovered:Z

.field private mLastDrawBoundsBottom:I

.field private mLastDrawBoundsTop:I

.field private mLastMotionY:I

.field private mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ExpandableView;

.field private mListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

.field private mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

.field private mMaxDisplayedNotifications:I

.field private mMaxLayoutHeight:I

.field private mMaxOverScroll:F

.field private mMaxScrollAfterExpand:I

.field private mMaximumVelocity:I

.field private mMenuExposedView:Landroid/view/View;

.field private mMenuPressListener:Lcom/android/systemui/SwipeHelper$MenuPressListener;

.field private mMinTopOverScrollToEscape:F

.field private mMinimumVelocity:I

.field private mNeedViewResizeAnimation:Z

.field private mNeedsAnimation:Z

.field private mNoAmbient:Z

.field private mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

.field private mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

.field private mOnTopPaddingUpdateListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnTopPaddingUpdateListener;

.field private mOnlyScrollingInThisMotion:Z

.field private mOverScrolledBottomPixels:F

.field private mOverScrolledTopPixels:F

.field private mOverflingDistance:I

.field private mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

.field private mOwnScrollY:I

.field private mPaddingBetweenElements:I

.field private mPanelTracking:Z

.field private mParentNotFullyVisible:Z

.field private mPendingDismissChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingPopupChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPulsing:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private mQsBeingCoveredAnimator:Landroid/animation/ValueAnimator;

.field private mQsExpanded:Z

.field private mReclamp:Ljava/lang/Runnable;

.field private mRequestedClipBounds:Landroid/graphics/Rect;

.field private mRowExtraPadding:I

.field private mRunningAnimationUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mScrollable:Z

.field private mScrolledToTopOnFirstDown:Z

.field private mScroller:Landroid/widget/OverScroller;

.field protected mScrollingEnabled:Z

.field private mShadowUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field private final mShouldDrawNotificationBackground:Z

.field private mSnappedBackChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcMode:Landroid/graphics/PorterDuffXfermode;

.field protected final mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

.field private mStackTranslation:F

.field private mStartAnimationRect:Landroid/graphics/Rect;

.field private final mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarHeight:I

.field private mStatusBarState:I

.field private mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

.field private mSwipedOutViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipingInProgress:Z

.field private mTempInt2:[I

.field private final mTmpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTmpSortedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableView;",
            ">;"
        }
    .end annotation
.end field

.field private mTopAnimator:Landroid/animation/ObjectAnimator;

.field private mTopPadding:I

.field private mTopPaddingNeedsAnimation:Z

.field private mTopPaddingOverflow:F

.field private mTouchIsClick:Z

.field private mTouchSlop:I

.field private mTrackingHeadsUp:Z

.field private mTranslatingParentView:Landroid/view/View;

.field private final mTransparentPaint:Landroid/graphics/Paint;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewPositionComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableView;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundRadius:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMenuExposedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/plugins/qs/QS;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/widget/OverScroller;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontClampNextScroll:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsQsBeingCovered:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMenuExposedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsBeingCoveredAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackgroundDimming()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChildren()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateForcedScroll()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateViewShadows()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->handleChildDismissed(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;I)V
    .locals 0
    .param p1, "topPadding"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyTopPaddingUpdateListener(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onPreDrawDuringAnimation()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;F)V
    .locals 0
    .param p1, "fadeAmount"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setBackgroundFadeAmount(F)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;F)V
    .locals 0
    .param p1, "dimAmount"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimAmount(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 122
    sget-boolean v0, Lcom/android/systemui/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->DEBUG:Z

    .line 292
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->PRESENT:Ljava/lang/Object;

    .line 377
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$7;

    const-string/jumbo v1, "backgroundFade"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$7;-><init>(Ljava/lang/String;)V

    .line 376
    sput-object v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->BACKGROUND_FADE:Landroid/util/Property;

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 415
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 414
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 419
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 418
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 423
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 422
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 428
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 136
    const v3, 0x7fffffff

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    .line 137
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 138
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTransparentPaint:Landroid/graphics/Paint;

    .line 139
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCoverPaint:Landroid/graphics/Paint;

    .line 160
    iput v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 171
    iput v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomInset:I

    .line 172
    iput v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExtraBottomRange:I

    .line 173
    iput v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExtraBottomRangeQsCovered:I

    .line 183
    new-instance v3, Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/StackScrollState;-><init>(Landroid/view/ViewGroup;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    .line 186
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    .line 187
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    .line 188
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    .line 189
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    .line 190
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    .line 191
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    .line 192
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    .line 193
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 194
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    .line 195
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPendingPopupChildren:Ljava/util/ArrayList;

    .line 196
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPendingDismissChildren:Ljava/util/ArrayList;

    .line 197
    new-instance v3, Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    .line 224
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 280
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 279
    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 291
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    .line 294
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/concurrent/ConcurrentHashMap;

    .line 295
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClearOverlayViewsWhenFinished:Ljava/util/HashSet;

    .line 297
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 296
    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    .line 302
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    .line 306
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$2;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 305
    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRunningAnimationUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 313
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    .line 314
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    .line 315
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    .line 316
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    .line 319
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    .line 320
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    .line 321
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ExpandableView;

    .line 322
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ExpandableView;

    .line 326
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    .line 327
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimEndListener:Landroid/animation/Animator$AnimatorListener;

    .line 334
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$4;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 333
    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 344
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$5;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 343
    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShadowUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 352
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$6;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mViewPositionComparator:Ljava/util/Comparator;

    .line 367
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSrcMode:Landroid/graphics/PorterDuffXfermode;

    .line 375
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundFadeAmount:F

    .line 392
    iput v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    .line 395
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    .line 403
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$8;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateScroll:Ljava/lang/Runnable;

    .line 512
    iput v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastDrawBoundsTop:I

    .line 513
    iput v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastDrawBoundsBottom:I

    .line 514
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVisibleRows:Ljava/util/List;

    .line 1566
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$9;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$9;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mReclamp:Ljava/lang/Runnable;

    .line 429
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 431
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x90f01ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRowExtraPadding:I

    .line 433
    new-instance v3, Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-direct {v3, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 434
    const v3, 0x90c0079

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBgColor:I

    .line 435
    const v3, 0x90f00a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 436
    .local v1, "minHeight":I
    const v3, 0x90f00a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 437
    .local v0, "maxHeight":I
    new-instance v3, Lcom/android/systemui/ExpandHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0, v1, v0}, Lcom/android/systemui/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    .line 439
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v3, p0}, Lcom/android/systemui/ExpandHelper;->setEventSource(Landroid/view/View;)V

    .line 440
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v3, p0}, Lcom/android/systemui/ExpandHelper;->setScrollAdapter(Lcom/android/systemui/statusbar/policy/ScrollAdapter;)V

    .line 441
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v6, p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    .line 442
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V

    .line 443
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->createStackScrollAlgorithm(Landroid/content/Context;)Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    .line 444
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setOnAnimationRequestedListener(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$OnAnimationRequestedListener;)V

    .line 445
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initView(Landroid/content/Context;)V

    .line 446
    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 448
    const v3, 0x90d0027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 447
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    .line 449
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90f01fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundRadius:I

    .line 451
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateWillNotDraw()V

    .line 452
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$10;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$10;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 462
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClipToOutline()V

    .line 464
    sget-boolean v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 465
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDebugPaint:Landroid/graphics/Paint;

    .line 466
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x10000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 467
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 468
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDebugPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 427
    :cond_0
    return-void
.end method

.method private abortBackgroundAnimators()V
    .locals 1

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2432
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2434
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 2435
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2430
    :cond_1
    return-void
.end method

.method private animateDimmed(Z)V
    .locals 4
    .param p1, "dimmed"    # Z

    .prologue
    .line 3986
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 3987
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3989
    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3990
    .local v0, "target":F
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAmount:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 3991
    return-void

    .line 3989
    .end local v0    # "target":F
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "target":F
    goto :goto_0

    .line 3993
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAmount:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/TimeAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    .line 3994
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xdc

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3995
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3996
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimEndListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3997
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3998
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 3985
    return-void
.end method

.method private animateScroll()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1998
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1999
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 2000
    .local v1, "oldY":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    .line 2002
    .local v3, "y":I
    if-eq v1, v3, :cond_2

    .line 2003
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v2

    .line 2004
    .local v2, "range":I
    if-gez v3, :cond_4

    if-ltz v1, :cond_4

    .line 2005
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    .line 2006
    .local v0, "currVelocity":F
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_0

    .line 2007
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    .line 2011
    .end local v0    # "currVelocity":F
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontClampNextScroll:Z

    if-eqz v4, :cond_1

    .line 2012
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2014
    :cond_1
    sub-int v4, v3, v1

    .line 2015
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    float-to-int v5, v5

    .line 2014
    invoke-direct {p0, v4, v1, v2, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->customOverScrollBy(IIII)Z

    .line 2018
    .end local v2    # "range":I
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1997
    .end local v1    # "oldY":I
    .end local v3    # "y":I
    :cond_3
    :goto_1
    return-void

    .line 2004
    .restart local v1    # "oldY":I
    .restart local v2    # "range":I
    .restart local v3    # "y":I
    :cond_4
    if-le v3, v2, :cond_0

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 2020
    .end local v1    # "oldY":I
    .end local v2    # "range":I
    .end local v3    # "y":I
    :cond_5
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontClampNextScroll:Z

    .line 2021
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFinishScrollingCallback:Ljava/lang/Runnable;

    if-eqz v4, :cond_3

    .line 2022
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFinishScrollingCallback:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private applyCurrentBackgroundBounds()V
    .locals 2

    .prologue
    .line 2560
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-nez v0, :cond_0

    .line 2561
    return-void

    .line 2564
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 2565
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFadingOut:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mParentNotFullyVisible:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsClipped:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 2564
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setExcludedBackgroundArea(Landroid/graphics/Rect;)V

    .line 2567
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidate()V

    .line 2557
    return-void

    .line 2566
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private applyCurrentState()V
    .locals 1

    .prologue
    .line 4034
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->apply()V

    .line 4035
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    if-eqz v0, :cond_0

    .line 4036
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;->onChildLocationsChanged(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 4038
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->runAnimationFinishedRunnables()V

    .line 4039
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationRunning(Z)V

    .line 4040
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackground()V

    .line 4041
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateViewShadows()V

    .line 4033
    return-void
.end method

.method private areBoundsAnimating()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2440
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clampPadding(I)I
    .locals 1
    .param p1, "desiredPadding"    # I

    .prologue
    .line 2762
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private clampScrollPosition()V
    .locals 2

    .prologue
    .line 973
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    .line 974
    .local v0, "scrollRange":I
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v0, v1, :cond_0

    .line 975
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 972
    :cond_0
    return-void
.end method

.method private clearHeadsUpDisappearRunning()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3937
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 3938
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3939
    .local v4, "view":Landroid/view/View;
    instance-of v5, v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_0

    move-object v3, v4

    .line 3940
    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3941
    .local v3, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 3942
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3943
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3944
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    goto :goto_1

    .line 3937
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "child$iterator":Ljava/util/Iterator;
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3936
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private clearTemporaryViews(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    .line 3765
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTransientViewCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3766
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getTransientView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    goto :goto_0

    .line 3768
    :cond_0
    if-eqz p1, :cond_1

    .line 3769
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroupOverlay;->clear()V

    .line 3764
    :cond_1
    return-void
.end method

.method private clearViewOverlays()V
    .locals 3

    .prologue
    .line 3952
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClearOverlayViewsWhenFinished:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "view$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3953
    .local v0, "view":Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->removeFromOverlay(Landroid/view/View;)V

    goto :goto_0

    .line 3955
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClearOverlayViewsWhenFinished:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 3951
    return-void
.end method

.method private customOverScrollBy(IIII)Z
    .locals 4
    .param p1, "deltaY"    # I
    .param p2, "scrollY"    # I
    .param p3, "scrollRangeY"    # I
    .param p4, "maxOverScrollY"    # I

    .prologue
    .line 2030
    add-int v2, p2, p1

    .line 2031
    .local v2, "newScrollY":I
    neg-int v3, p4

    .line 2032
    .local v3, "top":I
    add-int v0, p4, p3

    .line 2034
    .local v0, "bottom":I
    const/4 v1, 0x0

    .line 2035
    .local v1, "clampedY":Z
    if-le v2, v0, :cond_1

    .line 2036
    move v2, v0

    .line 2037
    const/4 v1, 0x1

    .line 2043
    :cond_0
    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onCustomOverScrolled(IZ)V

    .line 2045
    return v1

    .line 2038
    :cond_1
    if-ge v2, v3, :cond_0

    .line 2039
    move v2, v3

    .line 2040
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private dispatchDownEventToScroller(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1673
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1674
    .local v0, "downEvent":Landroid/view/MotionEvent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1675
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    .line 1676
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1672
    return-void
.end method

.method private drawTransparentArea(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 544
    invoke-static {}, Lcom/android/systemui/Util;->isDefaultTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    if-nez v1, :cond_0

    .line 545
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isFoldAnimating()Z

    move-result v1

    .line 544
    if-eqz v1, :cond_1

    .line 548
    :cond_0
    return-void

    .line 550
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVisibleRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 551
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    if-ge v10, v1, :cond_4

    .line 552
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 553
    .local v9, "child":Landroid/view/View;
    instance-of v1, v9, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v1, :cond_2

    instance-of v1, v9, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;

    if-nez v1, :cond_2

    .line 554
    instance-of v1, v9, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;

    .line 553
    if-eqz v1, :cond_3

    .line 555
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    .line 556
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVisibleRows:Ljava/util/List;

    check-cast v9, Lcom/android/systemui/statusbar/ExpandableView;

    .end local v9    # "child":Landroid/view/View;
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 561
    :cond_4
    const/4 v10, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVisibleRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_10

    .line 562
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVisibleRows:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/ExpandableView;

    .line 563
    .local v16, "view":Lcom/android/systemui/statusbar/ExpandableView;
    add-int/lit8 v1, v10, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVisibleRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVisibleRows:Ljava/util/List;

    add-int/lit8 v2, v10, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/ExpandableView;

    .line 566
    :goto_2
    const/4 v12, 0x0

    .line 567
    .local v12, "isGroupExpansionChanging":Z
    const/4 v13, 0x0

    .line 568
    .local v13, "isGutsAnimating":Z
    const/4 v11, 0x0

    .line 570
    .local v11, "isExpansionChange":Z
    move-object/from16 v0, v16

    instance-of v1, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_5

    move-object/from16 v15, v16

    .line 571
    check-cast v15, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 572
    .local v15, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v12

    .line 573
    .local v12, "isGroupExpansionChanging":Z
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->isAnimating()Z

    move-result v13

    .line 574
    .end local v13    # "isGutsAnimating":Z
    :goto_3
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpansionChanging()Z

    move-result v11

    .line 575
    .local v11, "isExpansionChange":Z
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    .line 576
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v3

    .line 577
    .local v3, "top":F
    if-eqz v13, :cond_b

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v1

    :goto_4
    int-to-float v1, v1

    add-float v5, v3, v1

    .line 578
    .local v5, "bottom":F
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_d

    .line 579
    invoke-static {v15}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v8

    .line 580
    .local v8, "canDismiss":Z
    if-eqz v8, :cond_c

    .line 581
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTransparentPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 582
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCoverPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90c00e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    .line 584
    .local v7, "alpha":I
    int-to-float v1, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->getAlphaForOffset(F)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v7, v1

    .line 585
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 587
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 606
    .end local v3    # "top":F
    .end local v5    # "bottom":F
    .end local v7    # "alpha":I
    .end local v8    # "canDismiss":Z
    .end local v11    # "isExpansionChange":Z
    .end local v12    # "isGroupExpansionChanging":Z
    .end local v15    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_5
    :goto_5
    if-eqz v14, :cond_6

    .line 608
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v1

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    add-float v3, v1, v2

    .line 609
    .restart local v3    # "top":F
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v5

    .line 610
    .restart local v5    # "bottom":F
    if-nez v12, :cond_6

    if-eqz v13, :cond_e

    .line 617
    .end local v3    # "top":F
    .end local v5    # "bottom":F
    :cond_6
    :goto_6
    if-nez v10, :cond_7

    .line 619
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    .line 620
    .restart local v3    # "top":F
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v5

    .line 621
    .restart local v5    # "bottom":F
    cmpg-float v1, v3, v5

    if-gez v1, :cond_7

    .line 622
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTransparentPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 623
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCoverPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 627
    .end local v3    # "top":F
    .end local v5    # "bottom":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVisibleRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v10, v1, :cond_8

    .line 629
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v1

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    add-float v3, v1, v2

    .line 630
    .restart local v3    # "top":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    .line 631
    .restart local v5    # "bottom":F
    move-object/from16 v0, v16

    instance-of v1, v0, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;

    if-nez v1, :cond_8

    if-eqz v12, :cond_f

    .line 561
    .end local v3    # "top":F
    .end local v5    # "bottom":F
    :cond_8
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 563
    :cond_9
    const/4 v14, 0x0

    .local v14, "nextView":Lcom/android/systemui/statusbar/ExpandableView;
    goto/16 :goto_2

    .line 573
    .end local v14    # "nextView":Lcom/android/systemui/statusbar/ExpandableView;
    .local v11, "isExpansionChange":Z
    .restart local v12    # "isGroupExpansionChanging":Z
    .restart local v13    # "isGutsAnimating":Z
    .restart local v15    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 577
    .end local v13    # "isGutsAnimating":Z
    .restart local v3    # "top":F
    .local v11, "isExpansionChange":Z
    :cond_b
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    goto/16 :goto_4

    .line 589
    .restart local v5    # "bottom":F
    .restart local v8    # "canDismiss":Z
    :cond_c
    const/4 v2, 0x0

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTransparentPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 590
    const/4 v2, 0x0

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCoverPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 594
    .end local v8    # "canDismiss":Z
    :cond_d
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTransparentPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 595
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCoverPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90c00e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    .line 597
    .restart local v7    # "alpha":I
    int-to-float v1, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->getAlphaForOffset(F)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v7, v1

    .line 598
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 600
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v4

    add-float/2addr v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 611
    .end local v7    # "alpha":I
    .end local v11    # "isExpansionChange":Z
    .end local v12    # "isGroupExpansionChanging":Z
    .end local v15    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_e
    if-nez v11, :cond_6

    cmpg-float v1, v3, v5

    if-gez v1, :cond_6

    .line 612
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTransparentPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 613
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCoverPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 632
    :cond_f
    if-nez v13, :cond_8

    if-nez v11, :cond_8

    cmpg-float v1, v3, v5

    if-gez v1, :cond_8

    .line 633
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTransparentPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 634
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCoverPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 543
    .end local v3    # "top":F
    .end local v5    # "bottom":F
    .end local v16    # "view":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_10
    return-void
.end method

.method private endDrag()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2790
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 2792
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    .line 2794
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2795
    invoke-virtual {p0, v1, v2, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2797
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 2798
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2789
    :cond_1
    return-void
.end method

.method private endQsBeingCoveredMotion(I)V
    .locals 7
    .param p1, "vel"    # I

    .prologue
    const/4 v3, 0x0

    .line 739
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    .line 740
    .local v0, "currValue":I
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v1

    .line 742
    .local v1, "endValue":I
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsBeingCoveredAnimator:Landroid/animation/ValueAnimator;

    .line 743
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsBeingCoveredAnimator:Landroid/animation/ValueAnimator;

    int-to-float v4, v0

    int-to-float v5, v1

    int-to-float v6, p1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 744
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsBeingCoveredAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$11;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$11;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 750
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsBeingCoveredAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$12;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$12;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 770
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsBeingCoveredAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 738
    return-void

    .line 740
    .end local v1    # "endValue":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->getQsHeaderHeight()I

    move-result v1

    .restart local v1    # "endValue":I
    goto :goto_0
.end method

.method private findDarkAnimationOriginIndex(Landroid/graphics/PointF;)I
    .locals 4
    .param p1, "screenLocation"    # Landroid/graphics/PointF;

    .prologue
    const/4 v3, -0x1

    .line 4166
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 4167
    :cond_0
    return v3

    .line 4169
    :cond_1
    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottomMostNotificationBottom()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 4170
    const/4 v1, -0x2

    return v1

    .line 4172
    :cond_2
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getClosestChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    .line 4173
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 4174
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneIndex(Landroid/view/View;)I

    move-result v1

    return v1

    .line 4176
    :cond_3
    return v3
.end method

.method private focusNextViewIfFocused(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2935
    instance-of v3, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 2936
    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2937
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->shouldRefocusOnDismiss()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2938
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildAfterViewWhenDismissed()Landroid/view/View;

    move-result-object v1

    .line 2939
    .local v1, "nextView":Landroid/view/View;
    if-nez v1, :cond_0

    .line 2940
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGroupParentWhenDismissed()Landroid/view/View;

    move-result-object v0

    .line 2941
    .local v0, "groupParentWhenDismissed":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2942
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 2943
    :goto_0
    const/4 v4, 0x1

    .line 2941
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildBelowTranlsationY(FZ)Landroid/view/View;

    move-result-object v1

    .line 2945
    .end local v0    # "groupParentWhenDismissed":Landroid/view/View;
    :cond_0
    if-eqz v1, :cond_1

    .line 2946
    invoke-virtual {v1}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 2934
    .end local v1    # "nextView":Landroid/view/View;
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return-void

    .line 2943
    .restart local v0    # "groupParentWhenDismissed":Landroid/view/View;
    .restart local v1    # "nextView":Landroid/view/View;
    .restart local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    goto :goto_0
.end method

.method private generateActivateEvent()V
    .locals 4

    .prologue
    .line 3455
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3456
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 3457
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 3456
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3459
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    .line 3454
    return-void
.end method

.method private generateAnimateEverythingEvent()V
    .locals 4

    .prologue
    .line 3463
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3464
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 3465
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 3464
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3467
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    .line 3462
    return-void
.end method

.method private generateChildAdditionEvents()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3428
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3429
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3430
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 3432
    const-wide/16 v4, 0x168

    .line 3430
    invoke-direct {v3, v0, v6, v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;IJ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3433
    :cond_0
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isFoldAnimating()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3434
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 3436
    const-wide/16 v4, 0x96

    .line 3434
    invoke-direct {v3, v0, v6, v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;IJ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3438
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v3, v0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3442
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 3443
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 3427
    return-void
.end method

.method private generateChildHierarchyEvents()V
    .locals 0

    .prologue
    .line 3275
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateHeadsUpAnimationEvents()V

    .line 3276
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildRemovalEvents()V

    .line 3277
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildAdditionEvents()V

    .line 3278
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generatePositionChangeEvents()V

    .line 3279
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateSnapBackEvents()V

    .line 3280
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateDragEvents()V

    .line 3281
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateTopPaddingEvent()V

    .line 3282
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateActivateEvent()V

    .line 3283
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateDimmedEvent()V

    .line 3284
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateHideSensitiveEvent()V

    .line 3285
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateDarkEvent()V

    .line 3286
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateGoToFullShadeEvent()V

    .line 3287
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateViewResizeEvent()V

    .line 3288
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateGroupExpansionEvent()V

    .line 3289
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildPopDismissEvent()V

    .line 3290
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAnimateEverythingEvent()V

    .line 3274
    return-void
.end method

.method private generateChildPopDismissEvent()V
    .locals 5

    .prologue
    .line 3294
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPendingPopupChildren:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "v$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3295
    .local v0, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/16 v4, 0x12

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3297
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPendingDismissChildren:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3298
    .restart local v0    # "v":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/16 v4, 0x13

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3300
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPendingPopupChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3301
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPendingDismissChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3293
    return-void
.end method

.method private generateChildRemovalEvents()V
    .locals 10

    .prologue
    .line 3386
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3387
    .local v1, "child":Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 3388
    .local v3, "childWasSwipedOut":Z
    if-eqz v3, :cond_1

    .line 3389
    const/4 v0, 0x2

    .line 3391
    .local v0, "animationType":I
    :goto_1
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isFoldAnimating()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3392
    new-instance v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const-wide/16 v8, 0x96

    invoke-direct {v4, v1, v0, v8, v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;IJ)V

    .line 3396
    .local v4, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v6

    .line 3397
    .local v6, "removedTranslation":F
    const/4 v5, 0x1

    .line 3398
    .local v5, "ignoreChildren":Z
    instance-of v8, v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v8, :cond_0

    move-object v7, v1

    .line 3399
    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3400
    .local v7, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->wasChildInGroupWhenRemoved()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3401
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationWhenRemoved()F

    move-result v6

    .line 3402
    const/4 v5, 0x0

    .line 3405
    .end local v7    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    invoke-direct {p0, v6, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildBelowTranlsationY(FZ)Landroid/view/View;

    move-result-object v8

    iput-object v8, v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    .line 3407
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3408
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3409
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildRemoveAnimationRunning:Z

    goto :goto_0

    .line 3390
    .end local v0    # "animationType":I
    .end local v4    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    .end local v5    # "ignoreChildren":Z
    .end local v6    # "removedTranslation":F
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "animationType":I
    goto :goto_1

    .line 3393
    :cond_2
    new-instance v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v4, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .restart local v4    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    goto :goto_2

    .line 3411
    .end local v0    # "animationType":I
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "childWasSwipedOut":Z
    .end local v4    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 3385
    return-void
.end method

.method private generateDarkEvent()V
    .locals 4

    .prologue
    .line 3487
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkNeedsAnimation:Z

    if-eqz v1, :cond_0

    .line 3488
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 3490
    new-instance v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    .line 3492
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 3490
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    .line 3488
    const/4 v2, 0x0

    .line 3489
    const/16 v3, 0x9

    .line 3488
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;ILcom/android/systemui/statusbar/stack/AnimationFilter;)V

    .line 3493
    .local v0, "ev":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAnimationOriginIndex:I

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->darkAnimationOriginIndex:I

    .line 3494
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3495
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startBackgroundFadeIn()V

    .line 3497
    .end local v0    # "ev":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkNeedsAnimation:Z

    .line 3486
    return-void
.end method

.method private generateDimmedEvent()V
    .locals 4

    .prologue
    .line 3471
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3472
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 3473
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 3472
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3475
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    .line 3470
    return-void
.end method

.method private generateDragEvents()V
    .locals 5

    .prologue
    .line 3378
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3379
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 3380
    const/4 v4, 0x4

    .line 3379
    invoke-direct {v3, v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3382
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3377
    return-void
.end method

.method private generateGoToFullShadeEvent()V
    .locals 4

    .prologue
    .line 3501
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3502
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 3503
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 3502
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3505
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    .line 3500
    return-void
.end method

.method private generateGroupExpansionEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3354
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedGroupView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3355
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedGroupView:Landroid/view/View;

    .line 3356
    const/16 v3, 0xd

    .line 3355
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3357
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedGroupView:Landroid/view/View;

    .line 3352
    :cond_0
    return-void
.end method

.method private generateHeadsUpAnimation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "isHeadsUp"    # Z

    .prologue
    const/4 v4, 0x1

    .line 4517
    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v1, :cond_3

    .line 4524
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v1, :cond_2

    .line 4525
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4526
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4527
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v1, :cond_1

    if-eqz p2, :cond_4

    .line 4530
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4516
    :cond_2
    return-void

    .line 4519
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90f0453

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 4520
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x90f00dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 4519
    sub-int v0, v1, v2

    .line 4521
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setPadding(IIII)V

    .line 4522
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->showHeadsUpBackground()V

    goto :goto_0

    .line 4528
    .end local v0    # "padding":I
    :cond_4
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    goto :goto_1
.end method

.method private generateHeadsUpAnimationEvents()V
    .locals 10

    .prologue
    .line 3305
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "eventPair$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3306
    .local v1, "eventPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/Boolean;>;"
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3307
    .local v6, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3308
    .local v3, "isHeadsUp":Z
    const/16 v7, 0x11

    .line 3309
    .local v7, "type":I
    const/4 v4, 0x0

    .line 3310
    .local v4, "onBottom":Z
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v9, :cond_6

    :cond_1
    const/4 v5, 0x0

    .line 3311
    .local v5, "pinnedAndClosed":Z
    :goto_1
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v9, :cond_2

    if-eqz v3, :cond_7

    .line 3320
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v9, v6}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v8

    .line 3321
    .local v8, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-eqz v8, :cond_0

    .line 3326
    if-eqz v3, :cond_5

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v5, :cond_5

    .line 3327
    :cond_3
    if-nez v5, :cond_4

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->shouldHunAppearFromBottom(Lcom/android/systemui/statusbar/stack/ExpandableViewState;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 3329
    :cond_4
    const/16 v7, 0xe

    .line 3334
    :goto_2
    if-eqz v5, :cond_a

    const/4 v4, 0x0

    .line 3337
    .end local v8    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_5
    :goto_3
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v0, v6, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 3338
    .local v0, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->headsUpFromBottom:Z

    .line 3339
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3310
    .end local v0    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    .end local v5    # "pinnedAndClosed":Z
    :cond_6
    const/4 v5, 0x1

    .restart local v5    # "pinnedAndClosed":Z
    goto :goto_1

    .line 3312
    :cond_7
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->wasJustClicked()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 3313
    const/16 v7, 0x10

    .line 3315
    :goto_4
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3317
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    goto :goto_3

    .line 3314
    :cond_8
    const/16 v7, 0xf

    goto :goto_4

    .line 3332
    .restart local v8    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_9
    const/4 v7, 0x0

    goto :goto_2

    .line 3334
    :cond_a
    const/4 v4, 0x1

    goto :goto_3

    .line 3341
    .end local v1    # "eventPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/Boolean;>;"
    .end local v3    # "isHeadsUp":Z
    .end local v4    # "onBottom":Z
    .end local v5    # "pinnedAndClosed":Z
    .end local v6    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v7    # "type":I
    .end local v8    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_b
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 3342
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3304
    return-void
.end method

.method private generateHideSensitiveEvent()V
    .locals 4

    .prologue
    .line 3479
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3480
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 3481
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 3480
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3483
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    .line 3478
    return-void
.end method

.method private generatePositionChangeEvents()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 3415
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3416
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v3, v0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3419
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3420
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGenerateChildOrderChangedEvent:Z

    if-eqz v2, :cond_1

    .line 3421
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3423
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGenerateChildOrderChangedEvent:Z

    .line 3414
    :cond_1
    return-void
.end method

.method private generateRemoveAnimation(Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2966
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeRemovedChildFromHeadsUpChangeAnimations(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2967
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2968
    return v1

    .line 2970
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isClickedHeadsUp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2972
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClearOverlayViewsWhenFinished:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2973
    return v2

    .line 2975
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isChildInInvisibleGroup(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2987
    :cond_2
    return v1

    .line 2976
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2978
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2979
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2980
    return v2

    .line 2982
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2983
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2984
    return v1
.end method

.method private generateSnapBackEvents()V
    .locals 5

    .prologue
    .line 3370
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3371
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 3372
    const/4 v4, 0x5

    .line 3371
    invoke-direct {v3, v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3374
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3369
    return-void
.end method

.method private generateTopPaddingEvent()V
    .locals 4

    .prologue
    .line 3447
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3448
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 3449
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 3448
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3451
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    .line 3446
    return-void
.end method

.method private generateViewResizeEvent()V
    .locals 4

    .prologue
    .line 3362
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    if-eqz v0, :cond_0

    .line 3363
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 3364
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 3363
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3366
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    .line 3361
    return-void
.end method

.method private getAppearEndPosition()F
    .locals 5

    .prologue
    .line 1151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v2

    .line 1152
    .local v2, "notGoneChildCount":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/EmptyShadeView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    if-eqz v2, :cond_3

    .line 1153
    const/4 v1, 0x1

    .line 1154
    .local v1, "minNotificationsForShelf":I
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTrackingHeadsUp:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1155
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopHeadsUpPinnedHeight()I

    move-result v0

    .line 1156
    .local v0, "appearPosition":I
    const/4 v1, 0x2

    .line 1160
    :goto_0
    if-lt v2, v1, :cond_1

    .line 1161
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v0, v3

    .line 1166
    .end local v1    # "minNotificationsForShelf":I
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    :goto_2
    add-int/2addr v3, v0

    int-to-float v3, v3

    return v3

    .line 1158
    .end local v0    # "appearPosition":I
    .restart local v1    # "minNotificationsForShelf":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "appearPosition":I
    goto :goto_0

    .line 1164
    .end local v0    # "appearPosition":I
    .end local v1    # "minNotificationsForShelf":I
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/EmptyShadeView;->getHeight()I

    move-result v0

    .restart local v0    # "appearPosition":I
    goto :goto_1

    .line 1166
    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    goto :goto_2
.end method

.method private getAppearStartPosition()F
    .locals 1

    .prologue
    .line 1135
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTrackingHeadsUp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->isAboveShelf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getPinnedHeadsUpHeight()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 1142
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinExpansionHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getExpandTranslationStart()F
    .locals 1

    .prologue
    .line 1127
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpPinned:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpAnimatingAway:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    neg-int v0, v0

    :goto_0
    int-to-float v0, v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstChildBelowTranlsationY(FZ)Landroid/view/View;
    .locals 10
    .param p1, "translationY"    # F
    .param p2, "ignoreChildren"    # Z

    .prologue
    .line 2243
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 2244
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 2245
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2246
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    .line 2244
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2249
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v7

    .line 2250
    .local v7, "rowTranslation":F
    cmpl-float v8, v7, p1

    if-ltz v8, :cond_2

    .line 2251
    return-object v0

    .line 2252
    :cond_2
    if-nez p2, :cond_0

    instance-of v8, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v8, :cond_0

    move-object v5, v0

    .line 2253
    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2254
    .local v5, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2256
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v4

    .line 2257
    .local v4, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v2, 0x0

    .local v2, "childIndex":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 2259
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2260
    .local v6, "rowChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v8

    add-float/2addr v8, v7

    cmpl-float v8, v8, p1

    if-ltz v8, :cond_3

    .line 2261
    return-object v6

    .line 2258
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2267
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childIndex":I
    .end local v4    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v5    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v6    # "rowChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v7    # "rowTranslation":F
    :cond_4
    const/4 v8, 0x0

    return-object v8
.end method

.method private getFirstChildWithBackground()Lcom/android/systemui/statusbar/ExpandableView;
    .locals 5

    .prologue
    .line 2653
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 2654
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2655
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v3, :cond_0

    .line 2656
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 2657
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 2658
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getViewType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 2659
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getViewType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 2660
    return-object v0

    .line 2654
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2664
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private getImeInset()I
    .locals 3

    .prologue
    .line 2203
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomInset:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getIntrinsicHeight(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3069
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 3070
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 3071
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    return v1

    .line 3073
    .end local v0    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    return v1
.end method

.method private getLastChildWithBackground()Lcom/android/systemui/statusbar/ExpandableView;
    .locals 5

    .prologue
    .line 2638
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 2639
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2640
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v3, :cond_0

    .line 2641
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 2642
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 2643
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getViewType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 2644
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getViewType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 2645
    return-object v0

    .line 2639
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2649
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private getLayoutHeight()I
    .locals 2

    .prologue
    .line 1199
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    if-ge v0, v1, :cond_0

    .line 1200
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    .line 1199
    :goto_0
    return v0

    .line 1201
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundRadius:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getNotGoneIndex(Landroid/view/View;)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4181
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 4182
    .local v0, "count":I
    const/4 v2, 0x0

    .line 4183
    .local v2, "notGoneIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4184
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4185
    .local v3, "v":Landroid/view/View;
    if-ne p1, v3, :cond_0

    .line 4186
    return v2

    .line 4188
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 4189
    add-int/lit8 v2, v2, 0x1

    .line 4183
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4192
    .end local v3    # "v":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    return v4
.end method

.method private getPositionInLinearLayout(Landroid/view/View;)I
    .locals 14
    .param p1, "requestedView"    # Landroid/view/View;

    .prologue
    .line 3077
    const/4 v1, 0x0

    .line 3078
    .local v1, "childInGroup":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v10, 0x0

    .line 3079
    .local v10, "requestedRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isChildInGroup(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v1, p1

    .line 3082
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3083
    .local v1, "childInGroup":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v10

    .local v10, "requestedRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object p1, v10

    .line 3085
    .end local v1    # "childInGroup":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v10    # "requestedRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    const/4 v7, 0x0

    .line 3086
    .local v7, "position":I
    iget v11, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v9, v11

    .line 3087
    .local v9, "previousPaddingRequest":F
    const/4 v8, 0x0

    .line 3088
    .local v8, "previousPaddingAmount":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v11

    if-ge v2, v11, :cond_a

    .line 3089
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 3090
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_3

    const/4 v4, 0x1

    .line 3091
    .local v4, "notGone":Z
    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->hasNoContentHeight()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 3123
    :cond_1
    :goto_2
    if-ne v0, p1, :cond_8

    .line 3124
    if-eqz v10, :cond_2

    .line 3125
    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPositionOfChild(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)I

    move-result v11

    add-int/2addr v7, v11

    .line 3127
    :cond_2
    return v7

    .line 3090
    .end local v4    # "notGone":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 3092
    .restart local v4    # "notGone":Z
    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v3

    .line 3094
    .local v3, "increasedPaddingAmount":F
    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-ltz v11, :cond_6

    .line 3097
    iget v11, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v11, v11

    .line 3095
    invoke-static {v9, v11, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    float-to-int v11, v11

    int-to-float v6, v11

    .line 3100
    .local v6, "padding":F
    iget v11, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v11, v11

    .line 3101
    iget v12, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v12, v12

    .line 3099
    invoke-static {v11, v12, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    float-to-int v11, v11

    int-to-float v9, v11

    .line 3118
    :goto_3
    if-eqz v7, :cond_5

    .line 3119
    int-to-float v11, v7

    add-float/2addr v11, v6

    float-to-int v7, v11

    .line 3121
    :cond_5
    move v8, v3

    goto :goto_2

    .line 3105
    .end local v6    # "padding":F
    :cond_6
    const/4 v11, 0x0

    .line 3106
    iget v12, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v12, v12

    .line 3107
    const/high16 v13, 0x3f800000    # 1.0f

    add-float/2addr v13, v3

    .line 3104
    invoke-static {v11, v12, v13}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    float-to-int v5, v11

    .line 3108
    .local v5, "ownPadding":I
    const/4 v11, 0x0

    cmpl-float v11, v8, v11

    if-lez v11, :cond_7

    .line 3110
    int-to-float v11, v5

    .line 3111
    iget v12, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v12, v12

    .line 3109
    invoke-static {v11, v12, v8}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    float-to-int v11, v11

    int-to-float v6, v11

    .line 3116
    .restart local v6    # "padding":F
    :goto_4
    int-to-float v9, v5

    goto :goto_3

    .line 3114
    .end local v6    # "padding":F
    :cond_7
    int-to-float v6, v5

    .restart local v6    # "padding":F
    goto :goto_4

    .line 3129
    .end local v3    # "increasedPaddingAmount":F
    .end local v5    # "ownPadding":I
    .end local v6    # "padding":F
    :cond_8
    if-eqz v4, :cond_9

    .line 3130
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result v11

    add-int/2addr v7, v11

    .line 3088
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3133
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v4    # "notGone":Z
    :cond_a
    const/4 v11, 0x0

    return v11
.end method

.method private getRubberBandFactor(Z)F
    .locals 2
    .param p1, "onTop"    # Z

    .prologue
    const v1, 0x3eb33333    # 0.35f

    .line 2766
    if-nez p1, :cond_0

    .line 2767
    return v1

    .line 2769
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v0, :cond_1

    .line 2770
    const v0, 0x3e19999a    # 0.15f

    return v0

    .line 2771
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    if-eqz v0, :cond_3

    .line 2772
    :cond_2
    const v0, 0x3e570a3d    # 0.21f

    return v0

    .line 2773
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz v0, :cond_4

    .line 2774
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 2776
    :cond_4
    return v1
.end method

.method private getScrollRange()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2195
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    sub-int v3, v2, v3

    .line 2196
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsCovered()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExtraBottomRangeQsCovered:I

    .line 2195
    :goto_0
    add-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2197
    .local v1, "scrollRange":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getImeInset()I

    move-result v0

    .line 2198
    .local v0, "imeInset":I
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2199
    return v1

    .line 2196
    .end local v0    # "imeInset":I
    .end local v1    # "scrollRange":I
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExtraBottomRange:I

    goto :goto_0
.end method

.method private getStackAppearMinHeight()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1071
    const/4 v0, 0x0

    .line 1072
    .local v0, "height":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 1073
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1074
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    instance-of v5, v4, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v5, :cond_4

    .line 1075
    instance-of v5, v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_3

    move-object v5, v4

    .line 1076
    check-cast v5, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getViewType()I

    move-result v5

    if-nez v5, :cond_3

    move-object v2, v4

    .line 1077
    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1078
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1079
    :cond_0
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1080
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1081
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1084
    .restart local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isMediaNotification()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x0

    .line 1085
    .local v3, "topBottomPadding":I
    :goto_1
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getExtraPadding()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v3

    return v5

    .line 1084
    .end local v3    # "topBottomPadding":I
    :cond_2
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRowExtraPadding:I

    mul-int/lit8 v3, v5, 0x2

    .restart local v3    # "topBottomPadding":I
    goto :goto_1

    .line 1087
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v3    # "topBottomPadding":I
    :cond_3
    check-cast v4, Lcom/android/systemui/statusbar/ExpandableView;

    .end local v4    # "v":Landroid/view/View;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v5

    add-int/2addr v0, v5

    .line 1072
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1091
    :cond_5
    return v0
.end method

.method private handleChildDismissed(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1237
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    if-eqz v0, :cond_0

    .line 1238
    return-void

    .line 1240
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    .line 1241
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1244
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1246
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1247
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->onDragFinished(Landroid/view/View;)V

    .line 1248
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContinuousShadowDrawing()V

    .line 1249
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_2

    move-object v6, p1

    .line 1250
    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1251
    .local v6, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1252
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addSwipedOutNotification(Ljava/lang/String;)V

    .line 1255
    .end local v6    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-static {p1, v0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->performDismiss(Landroid/view/View;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Z)V

    .line 1257
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onNotificationDismissed()V

    .line 1258
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->shouldEnforceBouncer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1259
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1260
    const/4 v4, 0x1

    move-object v2, v1

    move v5, v3

    .line 1259
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    .line 1236
    :cond_3
    return-void
.end method

.method private handleDismissAllClipping()V
    .locals 6

    .prologue
    .line 4295
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 4296
    .local v1, "count":I
    const/4 v3, 0x0

    .line 4297
    .local v3, "previousChildWillBeDismissed":Z
    const/4 v2, 0x0

    .end local v3    # "previousChildWillBeDismissed":Z
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4298
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 4299
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 4297
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4302
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 4303
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setMinClipTopAmount(I)V

    .line 4307
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v3

    .local v3, "previousChildWillBeDismissed":Z
    goto :goto_1

    .line 4305
    .end local v3    # "previousChildWillBeDismissed":Z
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setMinClipTopAmount(I)V

    goto :goto_2

    .line 4294
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_2
    return-void
.end method

.method private handleEmptySpaceClick(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2845
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2844
    :cond_0
    :goto_0
    return-void

    .line 2847
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 2848
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2849
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    goto :goto_0

    .line 2853
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    if-eqz v0, :cond_0

    .line 2854
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    move-result v0

    .line 2853
    if-eqz v0, :cond_0

    .line 2855
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;->onEmptySpaceClicked(FF)V

    goto :goto_0

    .line 2845
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hideHeadsUpBackground()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3813
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v4, v2, v4, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setPadding(IIII)V

    .line 3814
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 3815
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3816
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hideHeadsUpBackgroundForChild(Landroid/view/View;)V

    .line 3815
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3812
    :cond_0
    return-void
.end method

.method private hideHeadsUpBackgroundForChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3821
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 3822
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3823
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hideHeadsUpBackground()V

    .line 3820
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    return-void
.end method

.method private initDownStates(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2862
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2863
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    .line 2864
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    .line 2865
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    .line 2866
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    .line 2867
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    .line 2868
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    .line 2869
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    .line 2861
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 2864
    goto :goto_0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1987
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1985
    :goto_0
    return-void

    .line 1989
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1974
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1972
    :cond_0
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 666
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    .line 667
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDescendantFocusability(I)V

    .line 668
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setClipChildren(Z)V

    .line 669
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 670
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    .line 671
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    .line 672
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaximumVelocity:I

    .line 673
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    .line 674
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 675
    const v2, 0x90f00a0

    .line 674
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    .line 676
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    .line 677
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->reload(Landroid/content/Context;)V

    .line 678
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 679
    const v2, 0x90f014d

    .line 678
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    .line 680
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 681
    const v2, 0x90f014f

    .line 680
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    .line 682
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 683
    const v2, 0x90f0150

    .line 682
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinTopOverScrollToEscape:F

    .line 684
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90f02ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarHeight:I

    .line 685
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90202b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 686
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTransparentPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 688
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTransparentPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 689
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTransparentPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 690
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x90c00db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 691
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x90c00e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 665
    return-void
.end method

.method private isChildInGroup(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2954
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 2955
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 2956
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "child":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v1

    .line 2955
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    .line 2954
    :goto_0
    return v0

    .restart local p1    # "child":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isChildInInvisibleGroup(Landroid/view/View;)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 3024
    instance-of v3, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 3025
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3027
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    .line 3028
    .local v0, "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    .line 3029
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 3032
    .end local v0    # "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return v2
.end method

.method private isClickedHeadsUp(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2991
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isClickedHeadsUpNotification(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private isCurrentlyAnimating()Z
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method private isFoldViewVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4223
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isUserFold()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4224
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFoldHeaderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 4225
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFoldFooterView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 4224
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 4225
    goto :goto_0

    .line 4227
    :cond_2
    return v1
.end method

.method private isHeadsUp(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1335
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1336
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1337
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v1

    return v1

    .line 1339
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isInContentBounds(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3633
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInContentBounds(F)Z

    move-result v0

    return v0
.end method

.method public static isPinnedHeadsUp(Landroid/view/View;)Z
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1327
    instance-of v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_1

    move-object v0, p0

    .line 1328
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1329
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v1

    :cond_0
    return v1

    .line 1331
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return v1
.end method

.method private isPulsing(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 2370
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPulsing:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 2371
    .local v0, "e":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-ne v2, p1, :cond_0

    .line 2372
    const/4 v2, 0x1

    return v2

    .line 2375
    .end local v0    # "e":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isRubberbanded(Z)Z
    .locals 2
    .param p1, "onTop"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2785
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    if-nez v1, :cond_0

    .line 2786
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 2785
    :cond_0
    return v0
.end method

.method private isScrollingEnabled()Z
    .locals 1

    .prologue
    .line 1582
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    return v0
.end method

.method private isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 5006
    if-nez p2, :cond_0

    .line 5007
    return v8

    .line 5009
    :cond_0
    instance-of v7, p2, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v7, :cond_1

    move-object v7, p2

    .line 5010
    check-cast v7, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v0

    .line 5012
    .local v0, "height":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v3, v7

    .line 5013
    .local v3, "rx":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v4, v7

    .line 5014
    .local v4, "ry":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p2, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5015
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    aget v5, v7, v8

    .line 5016
    .local v5, "x":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v8, 0x1

    aget v6, v7, v8

    .line 5017
    .local v6, "y":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v5

    add-int v8, v6, v0

    invoke-direct {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5018
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    .line 5019
    .local v2, "ret":Z
    return v2

    .line 5011
    .end local v0    # "height":I
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "ret":Z
    .end local v3    # "rx":I
    .end local v4    # "ry":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_0
.end method

.method private notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 707
    :cond_0
    return-void
.end method

.method private notifyOverscrollTopListener(FZ)V
    .locals 3
    .param p1, "amount"    # F
    .param p2, "isRubberbanded"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2121
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/ExpandHelper;->onlyObserveMovements(Z)V

    .line 2122
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    if-eqz v0, :cond_1

    .line 2123
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 2124
    return-void

    :cond_0
    move v0, v1

    .line 2121
    goto :goto_0

    .line 2126
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    if-eqz v0, :cond_2

    .line 2127
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;->onOverscrollTopChanged(FZ)V

    .line 2120
    :cond_2
    return-void
.end method

.method private notifyTopPaddingUpdateListener(I)V
    .locals 2
    .param p1, "topPadding"    # I

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getQsHeaderHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 715
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    .line 716
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnTopPaddingUpdateListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnTopPaddingUpdateListener;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnTopPaddingUpdateListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnTopPaddingUpdateListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnTopPaddingUpdateListener;->onScrollerTopPaddingUpdate(I)V

    .line 713
    :cond_0
    return-void
.end method

.method private onCustomOverScrolled(IZ)V
    .locals 3
    .param p1, "scrollY"    # I
    .param p2, "clampedY"    # Z

    .prologue
    const/4 v2, 0x1

    .line 2154
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2155
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2156
    if-eqz p2, :cond_0

    .line 2157
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->springBack()V

    .line 2152
    :goto_0
    return-void

    .line 2159
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    .line 2160
    .local v0, "overScrollTop":F
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gez v1, :cond_1

    .line 2161
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    goto :goto_0

    .line 2163
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    goto :goto_0

    .line 2167
    .end local v0    # "overScrollTop":F
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    goto :goto_0
.end method

.method private onInterceptTouchEventScroll(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3509
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3510
    const/4 v1, 0x0

    return v1

    .line 3524
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 3525
    .local v8, "action":I
    const/4 v1, 0x2

    if-ne v8, v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    .line 3526
    const/4 v1, 0x1

    return v1

    .line 3529
    :cond_1
    and-int/lit16 v1, v8, 0xff

    packed-switch v1, :pswitch_data_0

    .line 3622
    :cond_2
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsQsBeingCovered:Z

    :goto_1
    return v1

    .line 3540
    :pswitch_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 3541
    .local v9, "activePointerId":I
    const/4 v1, -0x1

    if-eq v9, v1, :cond_2

    .line 3546
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 3547
    .local v12, "pointerIndex":I
    const/4 v1, -0x1

    if-ne v12, v1, :cond_3

    .line 3548
    const-string/jumbo v1, "StackScroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid pointerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3549
    const-string/jumbo v3, " in onInterceptTouchEvent"

    .line 3548
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3553
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v15, v1

    .line 3554
    .local v15, "y":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v13, v1

    .line 3555
    .local v13, "x":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    sub-int v10, v1, v15

    .line 3556
    .local v10, "deltaY":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    sub-int v1, v13, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 3557
    .local v14, "xDiff":I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 3558
    .local v16, "yDiff":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    move/from16 v0, v16

    if-le v0, v1, :cond_2

    move/from16 v0, v16

    if-le v0, v14, :cond_2

    .line 3559
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 3560
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInContentBounds(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsQsCovered:Z

    if-eqz v1, :cond_7

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToTop()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3561
    if-lez v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canScrollUp()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsCovered()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    if-gez v10, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsCovered()Z

    move-result v1

    .line 3560
    if-eqz v1, :cond_7

    .line 3562
    :cond_6
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsQsBeingCovered:Z

    .line 3563
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsQsCovered:Z

    .line 3565
    :cond_7
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 3566
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 3567
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initVelocityTrackerIfNotExists()V

    .line 3568
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 3574
    .end local v9    # "activePointerId":I
    .end local v10    # "deltaY":I
    .end local v12    # "pointerIndex":I
    .end local v13    # "x":I
    .end local v14    # "xDiff":I
    .end local v15    # "y":I
    .end local v16    # "yDiff":I
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v15, v1

    .line 3575
    .restart local v15    # "y":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToTop()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    .line 3577
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float v2, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v1

    if-nez v1, :cond_8

    .line 3578
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 3579
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    goto/16 :goto_0

    .line 3587
    :cond_8
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 3588
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 3589
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 3591
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initOrResetVelocityTracker()V

    .line 3592
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3598
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v11, 0x0

    .line 3599
    .local v11, "isBeingDragged":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    goto/16 :goto_0

    .line 3598
    .end local v11    # "isBeingDragged":Z
    :cond_9
    const/4 v11, 0x1

    goto :goto_2

    .line 3606
    .end local v15    # "y":I
    :pswitch_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 3607
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 3608
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    .line 3609
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3610
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    goto/16 :goto_0

    .line 3614
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 3622
    :cond_a
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 3529
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private onKeyguard()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1596
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onOverScrollFling(ZI)V
    .locals 3
    .param p1, "open"    # Z
    .param p2, "initialVelocity"    # I

    .prologue
    const/4 v2, 0x1

    .line 1884
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    if-eqz v0, :cond_0

    .line 1885
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    int-to-float v1, p2

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;->flingTopOverscroll(FZ)V

    .line 1887
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 1888
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1883
    return-void
.end method

.method private onPreDrawDuringAnimation()V
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateAppearance()V

    .line 908
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    if-eqz v0, :cond_2

    .line 912
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildRemoveAnimationRunning:Z

    if-eqz v0, :cond_1

    .line 913
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postInvalidateOnAnimation()V

    .line 906
    :cond_1
    return-void

    .line 909
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackground()V

    goto :goto_0
.end method

.method private onScrollTouch(Landroid/view/MotionEvent;)Z
    .locals 23
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1713
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1714
    const/4 v2, 0x0

    return v2

    .line 1716
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInsideQsContainer(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_2

    .line 1720
    :cond_1
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isFoldAnimating()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1721
    const/4 v2, 0x1

    return v2

    .line 1717
    :cond_2
    const/4 v2, 0x0

    return v2

    .line 1723
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 1724
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initVelocityTrackerIfNotExists()V

    .line 1725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1727
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 1729
    .local v9, "action":I
    and-int/lit16 v2, v9, 0xff

    packed-switch v2, :pswitch_data_0

    .line 1876
    :cond_4
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 1731
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInContentBounds(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsQsCovered:Z

    if-eqz v2, :cond_7

    .line 1734
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v15, 0x0

    .line 1735
    .local v15, "isBeingDragged":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 1740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1745
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 1746
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 1747
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    goto :goto_0

    .line 1732
    .end local v15    # "isBeingDragged":Z
    :cond_7
    const/4 v2, 0x0

    return v2

    .line 1734
    :cond_8
    const/4 v15, 0x1

    goto :goto_1

    .line 1751
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 1752
    .local v10, "activePointerIndex":I
    const/4 v2, -0x1

    if-ne v10, v2, :cond_9

    .line 1753
    const-string/jumbo v2, "StackScroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid pointerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in onTouchEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1757
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v21, v0

    .line 1758
    .local v21, "y":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v19, v0

    .line 1759
    .local v19, "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    sub-int v12, v2, v21

    .line 1760
    .local v12, "deltaY":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    sub-int v2, v19, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v20

    .line 1761
    .local v20, "xDiff":I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v22

    .line 1762
    .local v22, "yDiff":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    move/from16 v0, v22

    if-le v0, v2, :cond_e

    move/from16 v0, v22

    move/from16 v1, v20

    if-le v0, v1, :cond_e

    .line 1763
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 1764
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInContentBounds(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsQsCovered:Z

    if-eqz v2, :cond_d

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToTop()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1765
    if-lez v12, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canScrollUp()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsCovered()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    if-gez v12, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsCovered()Z

    move-result v2

    .line 1764
    if-eqz v2, :cond_d

    .line 1766
    :cond_c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsQsBeingCovered:Z

    .line 1767
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsQsCovered:Z

    .line 1769
    :cond_d
    if-lez v12, :cond_10

    .line 1770
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    sub-int/2addr v12, v2

    .line 1775
    :cond_e
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsQsBeingCovered:Z

    if-eqz v2, :cond_11

    .line 1776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsBeingCoveredAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_f

    .line 1777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsBeingCoveredAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1778
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsBeingCoveredAnimator:Landroid/animation/ValueAnimator;

    .line 1780
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsQsBeingCovered:Z

    .line 1782
    :cond_f
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 1783
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int/2addr v2, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyTopPaddingUpdateListener(I)V

    goto/16 :goto_0

    .line 1772
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    add-int/2addr v12, v2

    goto :goto_2

    .line 1784
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_4

    .line 1786
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 1787
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v16

    .line 1788
    .local v16, "range":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v2, :cond_12

    .line 1789
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 1793
    :cond_12
    if-gez v12, :cond_13

    .line 1794
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->overScrollDown(I)F

    move-result v17

    .line 1801
    .local v17, "scrollAmount":F
    :goto_3
    const/4 v2, 0x0

    cmpl-float v2, v17, v2

    if-eqz v2, :cond_4

    .line 1804
    move/from16 v0, v17

    float-to-int v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1805
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 1804
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->customOverScrollBy(IIII)Z

    .line 1807
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    goto/16 :goto_0

    .line 1796
    .end local v17    # "scrollAmount":F
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->overScrollUp(II)F

    move-result v17

    .restart local v17    # "scrollAmount":F
    goto :goto_3

    .line 1812
    .end local v10    # "activePointerIndex":I
    .end local v12    # "deltaY":I
    .end local v16    # "range":I
    .end local v17    # "scrollAmount":F
    .end local v19    # "x":I
    .end local v20    # "xDiff":I
    .end local v21    # "y":I
    .end local v22    # "yDiff":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 1813
    .local v18, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaximumVelocity:I

    int-to-float v2, v2

    const/16 v3, 0x3e8

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1814
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v14, v2

    .line 1816
    .local v14, "initialVelocity":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsQsBeingCovered:Z

    if-eqz v2, :cond_14

    .line 1817
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->endQsBeingCoveredMotion(I)V

    .line 1818
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1819
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->endDrag()V

    goto/16 :goto_0

    .line 1820
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_4

    .line 1821
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->shouldOverScrollFling(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1822
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onOverScrollFling(ZI)V

    .line 1840
    :cond_15
    :goto_4
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1841
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->endDrag()V

    goto/16 :goto_0

    .line 1824
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_15

    .line 1825
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    if-le v2, v3, :cond_19

    .line 1826
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v11

    .line 1827
    .local v11, "currentOverScrollTop":F
    const/4 v2, 0x0

    cmpl-float v2, v11, v2

    if-eqz v2, :cond_17

    if-lez v14, :cond_18

    .line 1828
    :cond_17
    neg-int v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->fling(I)V

    goto :goto_4

    .line 1830
    :cond_18
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onOverScrollFling(ZI)V

    goto :goto_4

    .line 1833
    .end local v11    # "currentOverScrollTop":F
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1834
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v8

    .line 1833
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1835
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    goto :goto_4

    .line 1846
    .end local v14    # "initialVelocity":I
    .end local v18    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsQsBeingCovered:Z

    if-eqz v2, :cond_1a

    .line 1847
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->endQsBeingCoveredMotion(I)V

    .line 1848
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1849
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->endDrag()V

    goto/16 :goto_0

    .line 1850
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 1851
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1852
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    .line 1854
    :cond_1b
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1855
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->endDrag()V

    goto/16 :goto_0

    .line 1859
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v13

    .line 1860
    .local v13, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 1861
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 1862
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    goto/16 :goto_0

    .line 1866
    .end local v13    # "index":I
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1867
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 1868
    .restart local v13    # "index":I
    const/4 v2, -0x1

    if-eq v13, v2, :cond_1c

    .line 1869
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 1870
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    goto/16 :goto_0

    .line 1872
    :cond_1c
    const-string/jumbo v2, "StackScroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid pointerId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in onTouchScroll:ACTION_POINTER_UP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1729
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 1956
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1958
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1959
    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    if-ne v1, v3, :cond_1

    .line 1963
    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1964
    .local v0, "newPointerIndex":I
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 1965
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1966
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    .line 1967
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1955
    .end local v0    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private onViewAddedInternal(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3158
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateHideSensitiveForChild(Landroid/view/View;)V

    move-object v0, p1

    .line 3159
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/ExpandableView;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 3160
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAddAnimation(Landroid/view/View;Z)V

    .line 3161
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(Landroid/view/View;)V

    .line 3162
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChronometerForChild(Landroid/view/View;)V

    .line 3157
    return-void
.end method

.method private onViewRemovedInternal(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 2907
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-eqz v2, :cond_0

    .line 2909
    return-void

    :cond_0
    move-object v1, p1

    .line 2911
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 2912
    .local v1, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 2913
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->removeViewStateForView(Landroid/view/View;)V

    .line 2914
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateScrollStateForRemovedChild(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 2915
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateRemoveAnimation(Landroid/view/View;)Z

    move-result v0

    .line 2916
    .local v0, "animationGenerated":Z
    if-eqz v0, :cond_3

    .line 2917
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2918
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 2926
    :cond_1
    :goto_0
    invoke-direct {p0, v4, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    .line 2929
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    .line 2931
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->focusNextViewIfFocused(Landroid/view/View;)V

    .line 2906
    return-void

    .line 2919
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslation()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 2920
    invoke-virtual {p2, p1, v4}, Landroid/view/ViewGroup;->addTransientView(Landroid/view/View;I)V

    .line 2921
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/ExpandableView;->setTransientContainer(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 2924
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private overScrollDown(I)F
    .locals 9
    .param p1, "deltaY"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1932
    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1933
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    .line 1934
    .local v0, "currentBottomAmount":F
    int-to-float v5, p1

    add-float v2, v0, v5

    .line 1935
    .local v2, "newBottomAmount":F
    cmpl-float v5, v0, v7

    if-lez v5, :cond_0

    .line 1936
    invoke-virtual {p0, v2, v6, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1941
    :cond_0
    cmpg-float v5, v2, v7

    if-gez v5, :cond_2

    move v4, v2

    .line 1942
    .local v4, "scrollAmount":F
    :goto_0
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v5, v5

    add-float v3, v5, v4

    .line 1943
    .local v3, "newScrollY":F
    cmpg-float v5, v3, v7

    if-gez v5, :cond_1

    .line 1944
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v1

    .line 1946
    .local v1, "currentTopPixels":F
    sub-float v5, v1, v3

    invoke-virtual {p0, v5, v8, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 1949
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 1950
    const/4 v4, 0x0

    .line 1952
    .end local v1    # "currentTopPixels":F
    :cond_1
    return v4

    .line 1941
    .end local v3    # "newScrollY":F
    .end local v4    # "scrollAmount":F
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "scrollAmount":F
    goto :goto_0
.end method

.method private overScrollUp(II)F
    .locals 9
    .param p1, "deltaY"    # I
    .param p2, "range"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1899
    invoke-static {p1, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1900
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    .line 1901
    .local v1, "currentTopAmount":F
    int-to-float v5, p1

    sub-float v3, v1, v5

    .line 1902
    .local v3, "newTopAmount":F
    cmpl-float v5, v1, v6

    if-lez v5, :cond_0

    .line 1903
    invoke-virtual {p0, v3, v8, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1908
    :cond_0
    cmpg-float v5, v3, v6

    if-gez v5, :cond_3

    neg-float v4, v3

    .line 1909
    .local v4, "scrollAmount":F
    :goto_0
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v5, v5

    add-float v2, v5, v4

    .line 1910
    .local v2, "newScrollY":F
    int-to-float v5, p2

    cmpl-float v5, v2, v5

    if-lez v5, :cond_2

    .line 1911
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v5, :cond_1

    .line 1912
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v0

    .line 1914
    .local v0, "currentBottomPixels":F
    add-float v5, v0, v2

    int-to-float v6, p2

    sub-float/2addr v5, v6

    invoke-virtual {p0, v5, v7, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 1918
    .end local v0    # "currentBottomPixels":F
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 1919
    const/4 v4, 0x0

    .line 1921
    :cond_2
    return v4

    .line 1908
    .end local v2    # "newScrollY":F
    .end local v4    # "scrollAmount":F
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "scrollAmount":F
    goto :goto_0
.end method

.method public static performDismiss(Landroid/view/View;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Z)V
    .locals 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "groupManager"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .param p2, "fromAccessibility"    # Z

    .prologue
    .line 1266
    instance-of v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v2, :cond_0

    .line 1267
    return-void

    :cond_0
    move-object v1, p0

    .line 1269
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1270
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isOnlyChildInGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1272
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    .line 1273
    .local v0, "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1274
    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->performDismiss(Landroid/view/View;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Z)V

    .line 1277
    .end local v0    # "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDismissed(ZZ)V

    .line 1278
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1279
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->performDismiss()V

    .line 1281
    :cond_2
    sget-boolean v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "StackScroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onChildDismissed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_3
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1979
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1980
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1981
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1978
    :cond_0
    return-void
.end method

.method private removeRemovedChildFromHeadsUpChangeAnimations(Landroid/view/View;)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3000
    const/4 v2, 0x0

    .line 3001
    .local v2, "hasAddEvent":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "hasAddEvent":Z
    .local v1, "eventPair$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 3002
    .local v0, "eventPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/Boolean;>;"
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3003
    .local v4, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3004
    .local v3, "isHeadsUp":Z
    if-ne p1, v4, :cond_0

    .line 3005
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3006
    or-int/2addr v2, v3

    .local v2, "hasAddEvent":Z
    goto :goto_0

    .line 3009
    .end local v0    # "eventPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/Boolean;>;"
    .end local v2    # "hasAddEvent":Z
    .end local v3    # "isHeadsUp":Z
    .end local v4    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    if-eqz v2, :cond_2

    .line 3011
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpChangeAnimations:Ljava/util/HashSet;

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 3012
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "child":Landroid/view/View;
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 3014
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3015
    return v2
.end method

.method private removeTargetView(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4242
    const/4 v0, -0x1

    .line 4243
    .local v0, "index":I
    if-eqz p1, :cond_0

    .line 4244
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 4245
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 4247
    :cond_0
    return v0
.end method

.method private requestAnimateEverything()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4349
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 4350
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    .line 4351
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4352
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4348
    :cond_0
    return-void
.end method

.method private requestAnimationOnViewResize(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const/4 v1, 0x1

    .line 808
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 809
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    .line 810
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 807
    :cond_1
    return-void
.end method

.method private requestChildrenUpdate()V
    .locals 2

    .prologue
    .line 961
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    if-nez v0, :cond_0

    .line 962
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 963
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    .line 964
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidate()V

    .line 960
    :cond_0
    return-void
.end method

.method private runAnimationFinishedRunnables()V
    .locals 3

    .prologue
    .line 3959
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "runnable$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 3960
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3962
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 3958
    return-void
.end method

.method private setBackgroundFadeAmount(F)V
    .locals 0
    .param p1, "fadeAmount"    # F

    .prologue
    .line 4150
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundFadeAmount:F

    .line 4151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackgroundDimming()V

    .line 4149
    return-void
.end method

.method private setBackgroundTop(I)V
    .locals 1
    .param p1, "top"    # I

    .prologue
    .line 2548
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 2549
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentBackgroundBounds()V

    .line 2547
    return-void
.end method

.method private setDimAmount(F)V
    .locals 0
    .param p1, "dimAmount"    # F

    .prologue
    .line 3981
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAmount:F

    .line 3982
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackgroundDimming()V

    .line 3980
    return-void
.end method

.method private setIsBeingDragged(Z)V
    .locals 1
    .param p1, "isDragged"    # Z

    .prologue
    .line 3644
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    .line 3645
    if-eqz p1, :cond_0

    .line 3646
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 3647
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 3643
    :cond_0
    return-void
.end method

.method private setIsExpanded(Z)V
    .locals 2
    .param p1, "isExpanded"    # Z

    .prologue
    .line 3788
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eq p1, v1, :cond_2

    const/4 v0, 0x1

    .line 3789
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 3790
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v1, :cond_0

    .line 3791
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetIsQsCovered(Z)V

    .line 3793
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setIsExpanded(Z)V

    .line 3794
    if-eqz v0, :cond_1

    .line 3795
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v1, :cond_3

    .line 3797
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->resetAnimatingValue()V

    .line 3798
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->collapseAllGroups()V

    .line 3806
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    .line 3807
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChronometers()V

    .line 3808
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3787
    :cond_1
    return-void

    .line 3788
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 3800
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->showReturnToInCallScreenButtonIfNeed()V

    .line 3801
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeHeadsUpNotification()V

    .line 3802
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hideHeadsUpBackground()V

    .line 3803
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    .line 3804
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClipToOutline()V

    goto :goto_1
.end method

.method private setMaxLayoutHeight(I)V
    .locals 1
    .param p1, "maxLayoutHeight"    # I

    .prologue
    .line 859
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    .line 860
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setMaxLayoutHeight(I)V

    .line 861
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 858
    return-void
.end method

.method private setOverScrollAmountInternal(FZZZ)V
    .locals 1
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z
    .param p4, "isRubberbanded"    # Z

    .prologue
    .line 2107
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 2108
    if-eqz p3, :cond_0

    .line 2109
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->animateOverScrollToAmount(FZZ)V

    .line 2106
    :goto_0
    return-void

    .line 2111
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v0

    div-float v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZ)V

    .line 2112
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->setOverScrollAmount(FZ)V

    .line 2113
    if-eqz p2, :cond_1

    .line 2114
    invoke-direct {p0, p1, p4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    .line 2116
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    goto :goto_0
.end method

.method private setOverScrolledPixels(FZ)V
    .locals 0
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z

    .prologue
    .line 2145
    if-eqz p2, :cond_0

    .line 2146
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledTopPixels:F

    .line 2144
    :goto_0
    return-void

    .line 2148
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledBottomPixels:F

    goto :goto_0
.end method

.method private setRequestedClipBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRequestedClipBounds:Landroid/graphics/Rect;

    .line 1096
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClipping()V

    .line 1094
    return-void
.end method

.method private setStackTranslation(F)V
    .locals 1
    .param p1, "stackTranslation"    # F

    .prologue
    .line 1185
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackTranslation:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1186
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackTranslation:F

    .line 1187
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setStackTranslation(F)V

    .line 1188
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 1184
    :cond_0
    return-void
.end method

.method private setSwipingInProgress(Z)V
    .locals 1
    .param p1, "isSwiped"    # Z

    .prologue
    .line 1600
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    .line 1601
    if-eqz p1, :cond_0

    .line 1602
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 1599
    :cond_0
    return-void
.end method

.method private setTopPadding(IZ)V
    .locals 4
    .param p1, "topPadding"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v3, 0x1

    .line 984
    sget-boolean v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "StackScroller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTopPadding topPadding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    if-eq v0, p1, :cond_2

    .line 986
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    .line 987
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 988
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 989
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_1

    .line 990
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    .line 991
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 993
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 994
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 983
    :cond_2
    return-void
.end method

.method private shouldHunAppearFromBottom(Lcom/android/systemui/statusbar/stack/ExpandableViewState;)Z
    .locals 2
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    .prologue
    .line 3346
    iget v0, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getMaxHeadsUpTranslation()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 3347
    const/4 v0, 0x0

    return v0

    .line 3349
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private shouldOverScrollFling(I)Z
    .locals 4
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2712
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    .line 2713
    .local v0, "topOverScroll":F
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz v3, :cond_0

    .line 2714
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    .line 2713
    :cond_1
    :goto_0
    return v1

    .line 2715
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinTopOverScrollToEscape:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 2716
    if-gtz p1, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method private springBack()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2172
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v4

    .line 2173
    .local v4, "scrollRange":I
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gtz v5, :cond_2

    const/4 v3, 0x1

    .line 2174
    .local v3, "overScrolledTop":Z
    :goto_0
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lt v5, v4, :cond_3

    const/4 v2, 0x1

    .line 2175
    .local v2, "overScrolledBottom":Z
    :goto_1
    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    .line 2178
    :cond_0
    if-eqz v3, :cond_4

    .line 2179
    const/4 v1, 0x1

    .line 2180
    .local v1, "onTop":Z
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    neg-int v5, v5

    int-to-float v0, v5

    .line 2181
    .local v0, "newAmount":F
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2182
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 2188
    :goto_2
    invoke-virtual {p0, v0, v1, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2189
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v1, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2190
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5, v7}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 2171
    .end local v0    # "newAmount":F
    .end local v1    # "onTop":Z
    :cond_1
    return-void

    .line 2173
    .end local v2    # "overScrolledBottom":Z
    .end local v3    # "overScrolledTop":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "overScrolledTop":Z
    goto :goto_0

    .line 2174
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "overScrolledBottom":Z
    goto :goto_1

    .line 2184
    :cond_4
    const/4 v1, 0x0

    .line 2185
    .restart local v1    # "onTop":Z
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int/2addr v5, v4

    int-to-float v0, v5

    .line 2186
    .restart local v0    # "newAmount":F
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    goto :goto_2
.end method

.method private startAnimationToState()V
    .locals 6

    .prologue
    .line 3257
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 3258
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildHierarchyEvents()V

    .line 3259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3261
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3262
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationRunning(Z)V

    .line 3263
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    .line 3264
    iget-wide v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    .line 3263
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimationForEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;J)V

    .line 3265
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3266
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackground()V

    .line 3267
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateViewShadows()V

    .line 3271
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    .line 3256
    return-void

    .line 3269
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentState()V

    goto :goto_0
.end method

.method private startBackgroundAnimation()V
    .locals 2

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2446
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2447
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startBottomAnimation()V

    .line 2448
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startTopAnimation()V

    .line 2443
    return-void
.end method

.method private startBackgroundFadeIn()V
    .locals 4

    .prologue
    .line 4159
    sget-object v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->BACKGROUND_FADE:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4160
    .local v0, "fadeAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4161
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4162
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 4158
    return-void

    .line 4159
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startBottomAnimation()V
    .locals 12

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2500
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->bottom:I

    .line 2501
    .local v5, "previousStartValue":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    .line 2502
    .local v4, "previousEndValue":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 2503
    .local v2, "newEndValue":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    .line 2504
    .local v3, "previousAnimator":Landroid/animation/ObjectAnimator;
    if-eqz v3, :cond_0

    if-ne v4, v2, :cond_0

    .line 2505
    return-void

    .line 2507
    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    if-nez v7, :cond_2

    .line 2509
    if-eqz v3, :cond_1

    .line 2512
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 2513
    .local v6, "values":[Landroid/animation/PropertyValuesHolder;
    aget-object v7, v6, v10

    new-array v8, v8, [I

    aput v5, v8, v10

    aput v2, v8, v11

    invoke-virtual {v7, v8}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 2514
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    iput v5, v7, Landroid/graphics/Rect;->bottom:I

    .line 2515
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 2516
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 2517
    return-void

    .line 2520
    .end local v6    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setBackgroundBottom(I)V

    .line 2521
    return-void

    .line 2524
    :cond_2
    if-eqz v3, :cond_3

    .line 2525
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2527
    :cond_3
    const-string/jumbo v7, "backgroundBottom"

    new-array v8, v8, [I

    .line 2528
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    aput v9, v8, v10

    aput v2, v8, v11

    .line 2527
    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2529
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 2530
    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2531
    const-wide/16 v8, 0x168

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2533
    new-instance v7, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$14;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$14;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2541
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2542
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 2543
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 2544
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    .line 2499
    return-void
.end method

.method private startTopAnimation()V
    .locals 12

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2452
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iget v4, v7, Landroid/graphics/Rect;->top:I

    .line 2453
    .local v4, "previousEndValue":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 2454
    .local v2, "newEndValue":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    .line 2455
    .local v3, "previousAnimator":Landroid/animation/ObjectAnimator;
    if-eqz v3, :cond_0

    if-ne v4, v2, :cond_0

    .line 2456
    return-void

    .line 2458
    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    if-nez v7, :cond_2

    .line 2460
    if-eqz v3, :cond_1

    .line 2463
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->top:I

    .line 2464
    .local v5, "previousStartValue":I
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 2465
    .local v6, "values":[Landroid/animation/PropertyValuesHolder;
    aget-object v7, v6, v10

    new-array v8, v8, [I

    aput v5, v8, v10

    aput v2, v8, v11

    invoke-virtual {v7, v8}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 2466
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    iput v5, v7, Landroid/graphics/Rect;->top:I

    .line 2467
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iput v2, v7, Landroid/graphics/Rect;->top:I

    .line 2468
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 2469
    return-void

    .line 2472
    .end local v5    # "previousStartValue":I
    .end local v6    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setBackgroundTop(I)V

    .line 2473
    return-void

    .line 2476
    :cond_2
    if-eqz v3, :cond_3

    .line 2477
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2479
    :cond_3
    const-string/jumbo v7, "backgroundTop"

    new-array v8, v8, [I

    .line 2480
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    aput v9, v8, v10

    aput v2, v8, v11

    .line 2479
    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2481
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 2482
    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2483
    const-wide/16 v8, 0x168

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2485
    new-instance v7, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$13;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$13;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2493
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2494
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStartAnimationRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 2495
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iput v2, v7, Landroid/graphics/Rect;->top:I

    .line 2496
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    .line 2451
    return-void
.end method

.method private targetScrollForView(Lcom/android/systemui/statusbar/ExpandableView;I)I
    .locals 2
    .param p1, "v"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "positionInLinearLayout"    # I

    .prologue
    .line 1544
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v0, p2

    .line 1545
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getImeInset()I

    move-result v1

    .line 1544
    add-int/2addr v0, v1

    .line 1545
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v1

    .line 1544
    sub-int/2addr v0, v1

    .line 1545
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPadding()I

    move-result v1

    .line 1544
    add-int/2addr v0, v1

    return v0
.end method

.method private updateAlgorithmHeightAndPadding()V
    .locals 2

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setLayoutHeight(I)V

    .line 866
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 867
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setTopPadding(I)V

    .line 864
    return-void
.end method

.method private updateAlgorithmLayoutMinHeight()V
    .locals 2

    .prologue
    .line 871
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsExpanded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->setLayoutMinHeight(I)V

    .line 870
    return-void

    .line 871
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result v0

    goto :goto_0
.end method

.method private updateAnimationState(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3197
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3198
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v0

    .line 3197
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    .line 3196
    return-void

    .line 3198
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3197
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAnimationState(ZLandroid/view/View;)V
    .locals 2
    .param p1, "running"    # Z
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 3203
    instance-of v1, p2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 3204
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3205
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    .line 3202
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    return-void
.end method

.method private updateBackground()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2405
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2406
    :cond_0
    return-void

    .line 2409
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackgroundBounds()V

    .line 2410
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2411
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    if-nez v1, :cond_3

    .line 2412
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->areBoundsAnimating()Z

    move-result v0

    .line 2413
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2414
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->abortBackgroundAnimators()V

    .line 2415
    const/4 v0, 0x0

    .line 2417
    :cond_2
    if-eqz v0, :cond_4

    .line 2418
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startBackgroundAnimation()V

    .line 2426
    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    .line 2427
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    .line 2403
    return-void

    .line 2411
    :cond_3
    const/4 v0, 0x1

    .local v0, "animate":Z
    goto :goto_0

    .line 2420
    .end local v0    # "animate":Z
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2421
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentBackgroundBounds()V

    goto :goto_1

    .line 2424
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->abortBackgroundAnimators()V

    goto :goto_1
.end method

.method private updateBackgroundBounds()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2574
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/stack/AmbientState;->isPanelFullWidth()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2575
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iput v10, v7, Landroid/graphics/Rect;->left:I

    .line 2576
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 2582
    :goto_0
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v7, :cond_1

    .line 2583
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 2584
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 2585
    return-void

    .line 2578
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLocationInWindow([I)V

    .line 2579
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    aget v8, v8, v10

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 2580
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    aget v8, v8, v10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 2587
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ExpandableView;

    .line 2588
    .local v4, "firstView":Lcom/android/systemui/statusbar/ExpandableView;
    const/4 v6, 0x0

    .line 2589
    .local v6, "top":I
    if-eqz v4, :cond_3

    .line 2591
    invoke-static {v4}, Lcom/android/systemui/statusbar/stack/ViewState;->getFinalTranslationY(Landroid/view/View;)F

    move-result v7

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v3, v8

    .line 2592
    .local v3, "finalTranslationY":I
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    if-nez v7, :cond_2

    .line 2593
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ne v7, v3, :cond_5

    .line 2596
    :cond_2
    move v6, v3

    .line 2601
    .end local v3    # "finalTranslationY":I
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationShelf;->hasItemsInStableShelf()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2602
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 2604
    .local v5, "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    :goto_2
    const/4 v0, 0x0

    .line 2605
    .local v0, "bottom":I
    if-eqz v5, :cond_b

    .line 2607
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-ne v5, v7, :cond_8

    .line 2608
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v7

    float-to-int v3, v7

    .line 2612
    .restart local v3    # "finalTranslationY":I
    :goto_3
    invoke-static {v5}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getFinalActualHeight(Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v2

    .line 2613
    .local v2, "finalHeight":I
    add-int v7, v3, v2

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getClipBottomAmount()I

    move-result v8

    sub-int v1, v7, v8

    .line 2614
    .local v1, "finalBottom":I
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    if-nez v7, :cond_4

    .line 2615
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-ne v7, v1, :cond_9

    .line 2618
    :cond_4
    move v0, v1

    .line 2627
    .end local v1    # "finalBottom":I
    .end local v2    # "finalHeight":I
    .end local v3    # "finalTranslationY":I
    :goto_4
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarState:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_c

    .line 2628
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackTranslation:F

    add-float/2addr v7, v8

    int-to-float v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v6, v7

    .line 2633
    :goto_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 2634
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 2573
    return-void

    .line 2594
    .end local v0    # "bottom":I
    .end local v5    # "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    .restart local v3    # "finalTranslationY":I
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-eq v7, v3, :cond_2

    .line 2598
    :cond_6
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v7

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v6, v8

    goto :goto_1

    .line 2603
    .end local v3    # "finalTranslationY":I
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ExpandableView;

    goto :goto_2

    .line 2610
    .restart local v0    # "bottom":I
    .restart local v5    # "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_8
    invoke-static {v5}, Lcom/android/systemui/statusbar/stack/ViewState;->getFinalTranslationY(Landroid/view/View;)F

    move-result v7

    float-to-int v3, v7

    .restart local v3    # "finalTranslationY":I
    goto :goto_3

    .line 2616
    .restart local v1    # "finalBottom":I
    .restart local v2    # "finalHeight":I
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEndAnimationRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-eq v7, v1, :cond_4

    .line 2620
    :cond_a
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v7

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    .line 2621
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getClipBottomAmount()I

    move-result v8

    int-to-float v8, v8

    .line 2620
    sub-float/2addr v7, v8

    float-to-int v0, v7

    goto :goto_4

    .line 2624
    .end local v1    # "finalBottom":I
    .end local v2    # "finalHeight":I
    .end local v3    # "finalTranslationY":I
    :cond_b
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    .line 2625
    move v0, v6

    goto :goto_4

    .line 2631
    :cond_c
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_5
.end method

.method private updateBackgroundDimming()V
    .locals 9

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 642
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-nez v4, :cond_0

    .line 643
    return-void

    .line 646
    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimAmount:F

    sub-float v4, v6, v4

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v5

    const v5, 0x3f333333    # 0.7f

    add-float v0, v5, v4

    .line 647
    .local v0, "alpha":F
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundFadeAmount:F

    mul-float/2addr v0, v4

    .line 649
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->getScrimBehindColor()I

    move-result v3

    .line 651
    .local v3, "scrimColor":I
    sub-float v1, v6, v0

    .line 652
    .local v1, "alphaInv":F
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v0

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 653
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundFadeAmount:F

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBgColor:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    .line 654
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    .line 653
    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 655
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundFadeAmount:F

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBgColor:I

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    .line 656
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    .line 655
    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 657
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundFadeAmount:F

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBgColor:I

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    .line 658
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v1

    .line 657
    add-float/2addr v7, v8

    float-to-int v7, v7

    .line 652
    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 659
    .local v2, "color":I
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCachedBackgroundColor:I

    if-eq v4, v2, :cond_1

    .line 660
    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCachedBackgroundColor:I

    .line 661
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidate()V

    .line 640
    :cond_1
    return-void
.end method

.method private updateChildContentHeight()V
    .locals 5

    .prologue
    .line 3842
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 3843
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3844
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3845
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    move-object v3, v0

    .line 3846
    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3847
    .local v3, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateContentHeight()V

    .line 3843
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3841
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private updateChildren()V
    .locals 3

    .prologue
    .line 879
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateScrollStateForAddedChildren()V

    .line 880
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 881
    const/4 v0, 0x0

    .line 880
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->setCurrentScrollVelocity(F)V

    .line 883
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setScrollY(I)V

    .line 884
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getStackScrollState(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 885
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-eqz v0, :cond_2

    .line 888
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startAnimationToState()V

    .line 878
    :goto_1
    return-void

    .line 882
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    goto :goto_0

    .line 886
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentState()V

    goto :goto_1
.end method

.method private updateChronometerForChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3860
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 3861
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3862
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunning(Z)V

    .line 3859
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    return-void
.end method

.method private updateChronometers()V
    .locals 3

    .prologue
    .line 3853
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 3854
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3855
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChronometerForChild(Landroid/view/View;)V

    .line 3854
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3852
    :cond_0
    return-void
.end method

.method private updateClipToOutline()V
    .locals 4

    .prologue
    .line 1100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpAnimatingAway:Z

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1101
    .local v0, "clipToOutline":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipToOutline:Z

    if-eq v1, v0, :cond_1

    .line 1102
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setClipToOutline(Z)V

    .line 1103
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipToOutline:Z

    .line 1104
    sget-boolean v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "StackScroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateClipToOutline "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipToOutline:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_1
    return-void

    .line 1100
    .end local v0    # "clipToOutline":Z
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpPinned:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .restart local v0    # "clipToOutline":Z
    goto :goto_0
.end method

.method private updateContentHeight()V
    .locals 17

    .prologue
    .line 2304
    const/4 v3, 0x0

    .line 2305
    .local v3, "height":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v13, v14

    .line 2306
    .local v13, "previousPaddingRequest":F
    const/4 v12, 0x0

    .line 2307
    .local v12, "previousPaddingAmount":F
    const/4 v9, 0x0

    .line 2308
    .local v9, "numShownItems":I
    const/4 v2, 0x0

    .line 2309
    .local v2, "finish":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2310
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v7, 0x1

    .line 2313
    .local v7, "maxDisplayedNotifications":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v14

    if-ge v4, v14, :cond_7

    .line 2314
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 2315
    .local v1, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_0

    .line 2316
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->hasNoContentHeight()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 2313
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2310
    .end local v1    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v4    # "i":I
    .end local v7    # "maxDisplayedNotifications":I
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "maxDisplayedNotifications":I
    goto :goto_0

    .line 2311
    .end local v7    # "maxDisplayedNotifications":I
    :cond_2
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    .restart local v7    # "maxDisplayedNotifications":I
    goto :goto_0

    .line 2317
    .restart local v1    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    .restart local v4    # "i":I
    :cond_3
    const/4 v14, -0x1

    if-eq v7, v14, :cond_9

    .line 2318
    if-lt v9, v7, :cond_8

    const/4 v6, 0x1

    .line 2319
    .local v6, "limitReached":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 2320
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result v14

    .line 2319
    if-eqz v14, :cond_b

    .line 2321
    instance-of v14, v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2319
    if-eqz v14, :cond_b

    move-object v14, v1

    .line 2322
    check-cast v14, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPulsing(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v8, 0x0

    .line 2323
    .local v8, "notificationOnAmbientThatIsNotPulsing":Z
    :goto_3
    if-nez v6, :cond_4

    if-eqz v8, :cond_5

    .line 2324
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 2325
    const/4 v2, 0x1

    .line 2327
    :cond_5
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v5

    .line 2329
    .local v5, "increasedPaddingAmount":F
    const/4 v14, 0x0

    cmpl-float v14, v5, v14

    if-ltz v14, :cond_c

    .line 2332
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v14, v14

    .line 2330
    invoke-static {v13, v14, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v14

    float-to-int v14, v14

    int-to-float v11, v14

    .line 2335
    .local v11, "padding":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v14, v14

    .line 2336
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v15, v15

    .line 2334
    invoke-static {v14, v15, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v14

    float-to-int v14, v14

    int-to-float v13, v14

    .line 2353
    :goto_4
    if-eqz v3, :cond_6

    .line 2354
    int-to-float v14, v3

    add-float/2addr v14, v11

    float-to-int v3, v14

    .line 2356
    :cond_6
    move v12, v5

    .line 2357
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v14

    add-int/2addr v3, v14

    .line 2358
    add-int/lit8 v9, v9, 0x1

    .line 2359
    if-eqz v2, :cond_0

    .line 2364
    .end local v1    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v5    # "increasedPaddingAmount":F
    .end local v6    # "limitReached":Z
    .end local v8    # "notificationOnAmbientThatIsNotPulsing":Z
    .end local v11    # "padding":F
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    add-int/2addr v14, v3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    .line 2365
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateScrollability()V

    .line 2366
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    invoke-virtual {v14, v15}, Lcom/android/systemui/statusbar/stack/AmbientState;->setLayoutMaxHeight(I)V

    .line 2303
    return-void

    .line 2318
    .restart local v1    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_8
    const/4 v6, 0x0

    .restart local v6    # "limitReached":Z
    goto :goto_2

    .line 2317
    .end local v6    # "limitReached":Z
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "limitReached":Z
    goto :goto_2

    .line 2322
    :cond_a
    const/4 v8, 0x1

    .restart local v8    # "notificationOnAmbientThatIsNotPulsing":Z
    goto :goto_3

    .line 2319
    .end local v8    # "notificationOnAmbientThatIsNotPulsing":Z
    :cond_b
    const/4 v8, 0x0

    .restart local v8    # "notificationOnAmbientThatIsNotPulsing":Z
    goto :goto_3

    .line 2340
    .restart local v5    # "increasedPaddingAmount":F
    :cond_c
    const/4 v14, 0x0

    .line 2341
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v15, v15

    .line 2342
    const/high16 v16, 0x3f800000    # 1.0f

    add-float v16, v16, v5

    .line 2339
    invoke-static/range {v14 .. v16}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v14

    float-to-int v10, v14

    .line 2343
    .local v10, "ownPadding":I
    const/4 v14, 0x0

    cmpl-float v14, v12, v14

    if-lez v14, :cond_d

    .line 2345
    int-to-float v14, v10

    .line 2346
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v15, v15

    .line 2344
    invoke-static {v14, v15, v12}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v14

    float-to-int v14, v14

    int-to-float v11, v14

    .line 2351
    .restart local v11    # "padding":F
    :goto_5
    int-to-float v13, v10

    goto :goto_4

    .line 2349
    .end local v11    # "padding":F
    :cond_d
    int-to-float v11, v10

    .restart local v11    # "padding":F
    goto :goto_5
.end method

.method private updateContinuousShadowDrawing()V
    .locals 3

    .prologue
    .line 5023
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationRunning:Z

    if-nez v1, :cond_1

    .line 5024
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getDraggedViews()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 5025
    .local v0, "continuousShadowUpdate":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContinuousShadowUpdate:Z

    if-eq v0, v1, :cond_0

    .line 5026
    if-eqz v0, :cond_3

    .line 5027
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShadowUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5031
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContinuousShadowUpdate:Z

    .line 5022
    :cond_0
    return-void

    .line 5023
    .end local v0    # "continuousShadowUpdate":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "continuousShadowUpdate":Z
    goto :goto_0

    .line 5024
    .end local v0    # "continuousShadowUpdate":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "continuousShadowUpdate":Z
    goto :goto_0

    .line 5029
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShadowUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_1
.end method

.method private updateFadingState()V
    .locals 0

    .prologue
    .line 4629
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentBackgroundBounds()V

    .line 4630
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateSrcDrawing()V

    .line 4628
    return-void
.end method

.method private updateFirstAndLastBackgroundViews()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildWithBackground()Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    .line 3144
    .local v0, "firstChild":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildWithBackground()Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v1

    .line 3145
    .local v1, "lastChild":Lcom/android/systemui/statusbar/ExpandableView;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v2, :cond_2

    .line 3146
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-eq v0, v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    .line 3147
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-eq v1, v2, :cond_1

    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    .line 3152
    :goto_2
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ExpandableView;

    .line 3153
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ExpandableView;

    .line 3154
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setLastVisibleBackgroundChild(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 3142
    return-void

    :cond_0
    move v2, v4

    .line 3146
    goto :goto_0

    :cond_1
    move v3, v4

    .line 3147
    goto :goto_1

    .line 3149
    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundTop:Z

    .line 3150
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimateNextBackgroundBottom:Z

    goto :goto_2
.end method

.method private updateForcedScroll()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 940
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 941
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 944
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 945
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 946
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v2

    .line 947
    .local v2, "positionInLinearLayout":I
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->targetScrollForView(Lcom/android/systemui/statusbar/ExpandableView;I)I

    move-result v3

    .line 948
    .local v3, "targetScroll":I
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v4

    add-int v1, v2, v4

    .line 950
    .local v1, "outOfViewScroll":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 954
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lt v4, v3, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v1, v4, :cond_2

    .line 955
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 939
    .end local v0    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v1    # "outOfViewScroll":I
    .end local v2    # "positionInLinearLayout":I
    .end local v3    # "targetScroll":I
    :cond_2
    return-void

    .line 942
    :cond_3
    iput-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    goto :goto_0
.end method

.method private updateForwardAndBackwardScrollability()V
    .locals 5

    .prologue
    .line 2392
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollable:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v4

    if-ge v3, v4, :cond_1

    const/4 v2, 0x1

    .line 2393
    .local v2, "forwardScrollable":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollable:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lez v3, :cond_2

    const/4 v0, 0x1

    .line 2394
    .local v0, "backwardsScrollable":Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForwardScrollable:Z

    if-ne v2, v3, :cond_3

    .line 2395
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackwardScrollable:Z

    if-eq v0, v3, :cond_4

    const/4 v1, 0x1

    .line 2396
    .local v1, "changed":Z
    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForwardScrollable:Z

    .line 2397
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackwardScrollable:Z

    .line 2398
    if-eqz v1, :cond_0

    .line 2399
    const/16 v3, 0x800

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->sendAccessibilityEvent(I)V

    .line 2391
    :cond_0
    return-void

    .line 2392
    .end local v0    # "backwardsScrollable":Z
    .end local v1    # "changed":Z
    .end local v2    # "forwardScrollable":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "forwardScrollable":Z
    goto :goto_0

    .line 2393
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "backwardsScrollable":Z
    goto :goto_1

    .line 2394
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "changed":Z
    goto :goto_2

    .line 2395
    .end local v1    # "changed":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "changed":Z
    goto :goto_2
.end method

.method private updateHeadsUpState()V
    .locals 2

    .prologue
    .line 4512
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpPinned:Z

    .line 4513
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpPinned:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpAnimatingAway:Z

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setExpandedBecauseOfHeadsUp(Z)V

    .line 4511
    return-void

    .line 4513
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateHideSensitiveForChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3166
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 3167
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 3168
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isHideSensitive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitiveForIntrinsicHeight(Z)V

    .line 3165
    .end local v0    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    return-void
.end method

.method private updateNotificationAnimationStates()V
    .locals 5

    .prologue
    .line 3186
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result v3

    .line 3187
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationShelf;->setAnimationsEnabled(Z)V

    .line 3188
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 3189
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 3190
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3191
    .local v0, "child":Landroid/view/View;
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v4, :cond_1

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v4

    :goto_2
    and-int/2addr v3, v4

    .line 3192
    .local v3, "running":Z
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    .line 3189
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3186
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "running":Z
    :cond_0
    const/4 v3, 0x1

    .local v3, "running":Z
    goto :goto_0

    .line 3191
    .end local v3    # "running":Z
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_1
    const/4 v4, 0x1

    goto :goto_2

    .line 3185
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private updateScrollPositionOnExpandInBottom(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 5
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 3892
    instance-of v3, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_3

    move-object v2, p1

    .line 3893
    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3894
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 3895
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3896
    return-void

    .line 3899
    :cond_0
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v4

    int-to-float v4, v4

    add-float v0, v3, v4

    .line 3900
    .local v0, "endPosition":F
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3901
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v3

    add-float/2addr v0, v3

    .line 3903
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackTranslation:F

    float-to-int v4, v4

    add-int v1, v3, v4

    .line 3904
    .local v1, "layoutEnd":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-eq v2, v3, :cond_2

    .line 3905
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 3907
    :cond_2
    int-to-float v3, v1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_3

    .line 3908
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    int-to-float v4, v1

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 3909
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    .line 3891
    .end local v0    # "endPosition":F
    .end local v1    # "layoutEnd":I
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    return-void
.end method

.method private updateScrollStateForAddedChildren()V
    .locals 7

    .prologue
    .line 918
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 919
    return-void

    .line 921
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 922
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 923
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 924
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v5

    .line 925
    .local v5, "startingPosition":I
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v3

    .line 926
    .local v3, "increasedPaddingAmount":F
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v3, v6

    if-nez v6, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    .line 928
    .local v4, "padding":I
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result v6

    add-int v1, v6, v4

    .line 929
    .local v1, "childHeight":I
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v5, v6, :cond_1

    .line 932
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    add-int/2addr v6, v1

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 921
    .end local v1    # "childHeight":I
    .end local v3    # "increasedPaddingAmount":F
    .end local v4    # "padding":I
    .end local v5    # "startingPosition":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 927
    .restart local v3    # "increasedPaddingAmount":F
    .restart local v5    # "startingPosition":I
    :cond_2
    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v3, v6

    if-nez v6, :cond_3

    const/4 v4, 0x0

    .restart local v4    # "padding":I
    goto :goto_1

    .end local v4    # "padding":I
    :cond_3
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    .restart local v4    # "padding":I
    goto :goto_1

    .line 936
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "increasedPaddingAmount":F
    .end local v4    # "padding":I
    .end local v5    # "startingPosition":I
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 917
    return-void
.end method

.method private updateScrollStateForRemovedChild(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 8
    .param p1, "removedChild"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    const/4 v7, 0x0

    .line 3041
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v4

    .line 3042
    .local v4, "startingPosition":I
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v2

    .line 3044
    .local v2, "increasedPaddingAmount":F
    cmpl-float v5, v2, v7

    if-ltz v5, :cond_1

    .line 3046
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v5, v5

    .line 3047
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIncreasedPaddingBetweenElements:I

    int-to-float v6, v6

    .line 3045
    invoke-static {v5, v6, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v5

    float-to-int v3, v5

    .line 3055
    .local v3, "padding":I
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result v5

    add-int v0, v5, v3

    .line 3056
    .local v0, "childHeight":I
    add-int v1, v4, v0

    .line 3057
    .local v1, "endPosition":I
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gt v1, v5, :cond_2

    .line 3060
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int/2addr v5, v0

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 3040
    :cond_0
    :goto_1
    return-void

    .line 3052
    .end local v0    # "childHeight":I
    .end local v1    # "endPosition":I
    .end local v3    # "padding":I
    :cond_1
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    int-to-float v5, v5

    .line 3053
    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v6, v2

    .line 3050
    invoke-static {v7, v5, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v5

    float-to-int v3, v5

    .restart local v3    # "padding":I
    goto :goto_0

    .line 3061
    .restart local v0    # "childHeight":I
    .restart local v1    # "endPosition":I
    :cond_2
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v4, v5, :cond_0

    .line 3064
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    goto :goto_1
.end method

.method private updateScrollability()V
    .locals 2

    .prologue
    .line 2383
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 2384
    .local v0, "scrollable":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollable:Z

    if-eq v0, v1, :cond_0

    .line 2385
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollable:Z

    .line 2386
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFocusable(Z)V

    .line 2387
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateForwardAndBackwardScrollability()V

    .line 2382
    :cond_0
    return-void

    .line 2383
    .end local v0    # "scrollable":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "scrollable":Z
    goto :goto_0
.end method

.method private updateSrcDrawing()V
    .locals 1

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-nez v0, :cond_0

    .line 701
    return-void

    .line 704
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidate()V

    .line 699
    return-void
.end method

.method private updateStackAppearState(FII)V
    .locals 3
    .param p1, "appearFraction"    # F
    .param p2, "pivotX"    # I
    .param p3, "pivotY"    # I

    .prologue
    .line 1058
    const v1, 0x3da3d708    # 0.07999998f

    mul-float/2addr v1, p1

    const v2, 0x3f6b851f    # 0.92f

    add-float v0, v2, v1

    .line 1059
    .local v0, "scale":F
    int-to-float v1, p2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setPivotX(F)V

    .line 1060
    int-to-float v1, p3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setPivotY(F)V

    .line 1061
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScaleX(F)V

    .line 1062
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScaleY(F)V

    .line 1063
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTransitionAlpha(F)V

    .line 1057
    return-void
.end method

.method private updateViewShadows()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const v13, 0x3dcccccd    # 0.1f

    const/4 v12, 0x0

    .line 4049
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 4050
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 4051
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 4052
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4049
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4055
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mViewPositionComparator:Ljava/util/Comparator;

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4058
    const/4 v5, 0x0

    .line 4059
    .local v5, "previous":Lcom/android/systemui/statusbar/ExpandableView;
    const/4 v3, 0x0

    .end local v5    # "previous":Lcom/android/systemui/statusbar/ExpandableView;
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_5

    .line 4060
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 4061
    .local v2, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationZ()F

    move-result v6

    .line 4062
    .local v6, "translationZ":F
    if-nez v5, :cond_3

    move v4, v6

    .line 4063
    .local v4, "otherZ":F
    :goto_2
    sub-float v1, v4, v6

    .line 4064
    .local v1, "diff":F
    if-eqz v5, :cond_2

    cmpg-float v8, v1, v12

    if-gtz v8, :cond_4

    .line 4066
    :cond_2
    invoke-virtual {v2, v12, v12, v14, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setFakeShadowIntensity(FFII)V

    .line 4076
    :goto_3
    move-object v5, v2

    .line 4059
    .local v5, "previous":Lcom/android/systemui/statusbar/ExpandableView;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4062
    .end local v1    # "diff":F
    .end local v4    # "otherZ":F
    .end local v5    # "previous":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_3
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationZ()F

    move-result v4

    goto :goto_2

    .line 4064
    .restart local v1    # "diff":F
    .restart local v4    # "otherZ":F
    :cond_4
    cmpl-float v8, v1, v13

    if-gez v8, :cond_2

    .line 4068
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v8

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 4069
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v9

    .line 4068
    sub-float/2addr v8, v9

    .line 4069
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getExtraBottomPadding()I

    move-result v9

    int-to-float v9, v9

    .line 4068
    sub-float v7, v8, v9

    .line 4072
    .local v7, "yLocation":F
    div-float v8, v1, v13

    .line 4073
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getOutlineAlpha()F

    move-result v9

    float-to-int v10, v7

    .line 4074
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->getOutlineTranslation()I

    move-result v11

    .line 4071
    invoke-virtual {v2, v8, v9, v10, v11}, Lcom/android/systemui/statusbar/ExpandableView;->setFakeShadowIntensity(FFII)V

    goto :goto_3

    .line 4079
    .end local v1    # "diff":F
    .end local v2    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v4    # "otherZ":F
    .end local v6    # "translationZ":F
    .end local v7    # "yLocation":F
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTmpSortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 4044
    return-void
.end method

.method private updateWillNotDraw()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 4145
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-nez v2, :cond_2

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->DEBUG:Z

    .line 4146
    .local v0, "willDraw":Z
    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setWillNotDraw(Z)V

    .line 4144
    return-void

    .end local v0    # "willDraw":Z
    :cond_2
    move v0, v1

    .line 4145
    goto :goto_0
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1587
    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public canChildBeExpanded(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1449
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1450
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v0

    .line 1449
    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1451
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 1449
    .end local p1    # "v":Landroid/view/View;
    :goto_0
    return v0

    .line 1452
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_2

    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public canScrollUp()Z
    .locals 2

    .prologue
    .line 3700
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelExpandHelper()V
    .locals 1

    .prologue
    .line 4091
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0}, Lcom/android/systemui/ExpandHelper;->cancel()V

    .line 4090
    return-void
.end method

.method public changeViewPosition(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "newIndex"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3241
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3242
    .local v0, "currentIndex":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    if-eq v0, p2, :cond_0

    .line 3243
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    move-object v1, p1

    .line 3244
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setChangingPosition(Z)V

    .line 3245
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 3246
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    move-object v1, p1

    .line 3247
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setChangingPosition(Z)V

    .line 3248
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    .line 3249
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 3250
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3251
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3240
    :cond_0
    return-void
.end method

.method public checkSnoozeLeavebehind()V
    .locals 7

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 3727
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    if-eqz v0, :cond_0

    .line 3728
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeAndSaveGuts(ZZZIIZ)V

    .line 3730
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 3726
    :cond_0
    return-void
.end method

.method public cleanUpViewState(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2892
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 2893
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    .line 2895
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->removeViewStateForView(Landroid/view/View;)V

    .line 2891
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3661
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 3662
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 3663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 3660
    :cond_0
    return-void
.end method

.method public closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 5040
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V

    .line 5039
    return-void
.end method

.method protected createStackScrollAlgorithm(Landroid/content/Context;)Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3626
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public dispatchDismissAllToChild(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 1
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
    .line 4312
    .local p1, "realHideAnimatedList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->dispatchDismissAllToChild(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 4311
    return-void
.end method

.method public doExpandCollapseAnimation(Z)V
    .locals 1
    .param p1, "expand"    # Z

    .prologue
    .line 722
    const/16 v0, 0x9c4

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->doExpandCollapseAnimation(ZI)V

    .line 721
    return-void
.end method

.method public doExpandCollapseAnimation(ZI)V
    .locals 3
    .param p1, "expand"    # Z
    .param p2, "vel"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 726
    if-eqz p1, :cond_1

    .line 727
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsQsBeingCovered:Z

    .line 731
    :goto_0
    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    mul-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->endQsBeingCoveredMotion(I)V

    .line 732
    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 733
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->endDrag()V

    .line 725
    return-void

    .line 729
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsQsCovered:Z

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4988
    const-string/jumbo v1, "      [NotificationStackScrollLayout: mExpandedHeight=%f mCurrentStackHeight=%d mContentHeight=%d mMaxLayoutHeight=%d mOwnScrollY=%d scrollRange=%d mTopPadding=%d mIsBeingDragged=%s mIsQsBeingCovered=%s mIsQsCovered=%s mQsExpanded=%s]"

    const/16 v0, 0xb

    new-array v2, v0, [Ljava/lang/Object;

    .line 4991
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 4992
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 4993
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 4994
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    .line 4995
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x4

    aput-object v0, v2, v3

    .line 4996
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x5

    aput-object v0, v2, v3

    .line 4997
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x6

    aput-object v0, v2, v3

    .line 4998
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "T"

    :goto_0
    const/4 v3, 0x7

    aput-object v0, v2, v3

    .line 4999
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsQsBeingCovered:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "T"

    :goto_1
    const/16 v3, 0x8

    aput-object v0, v2, v3

    .line 5000
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsQsCovered:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "T"

    :goto_2
    const/16 v3, 0x9

    aput-object v0, v2, v3

    .line 5001
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsExpanded:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "T"

    :goto_3
    const/16 v3, 0xa

    aput-object v0, v2, v3

    .line 4988
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4987
    return-void

    .line 4998
    :cond_0
    const-string/jumbo v0, "f"

    goto :goto_0

    .line 4999
    :cond_1
    const-string/jumbo v0, "f"

    goto :goto_1

    .line 5000
    :cond_2
    const-string/jumbo v0, "f"

    goto :goto_2

    .line 5001
    :cond_3
    const-string/jumbo v0, "f"

    goto :goto_3
.end method

.method public expansionStateChanged(Z)V
    .locals 1
    .param p1, "isExpanding"    # Z

    .prologue
    .line 1496
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    .line 1497
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v0, :cond_0

    .line 1498
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    .line 1499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    .line 1495
    :cond_0
    return-void
.end method

.method protected fling(I)V
    .locals 14
    .param p1, "velocityY"    # I

    .prologue
    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 2675
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2676
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v12

    .line 2678
    .local v12, "scrollRange":I
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v13

    .line 2679
    .local v13, "topAmount":F
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v11

    .line 2680
    .local v11, "bottomAmount":F
    if-gez p1, :cond_2

    cmpl-float v0, v13, v2

    if-lez v0, :cond_2

    .line 2681
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    float-to-int v1, v13

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2682
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 2683
    invoke-virtual {p0, v2, v3, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2684
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v1

    mul-float/2addr v0, v1

    .line 2685
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v1, v1

    .line 2684
    mul-float/2addr v0, v1

    add-float/2addr v0, v13

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    .line 2696
    :goto_0
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2697
    .local v8, "minScrollY":I
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v0, :cond_0

    .line 2698
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2700
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 2701
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ltz v4, :cond_4

    move v10, v5

    :goto_1
    move v4, p1

    move v6, v5

    move v7, v5

    move v9, v5

    .line 2700
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 2703
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    .line 2674
    .end local v8    # "minScrollY":I
    .end local v11    # "bottomAmount":F
    .end local v12    # "scrollRange":I
    .end local v13    # "topAmount":F
    :cond_1
    return-void

    .line 2686
    .restart local v11    # "bottomAmount":F
    .restart local v12    # "scrollRange":I
    .restart local v13    # "topAmount":F
    :cond_2
    if-lez p1, :cond_3

    cmpl-float v0, v11, v2

    if-lez v0, :cond_3

    .line 2687
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v0, v0

    add-float/2addr v0, v11

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 2688
    invoke-virtual {p0, v2, v5, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 2689
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 2690
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v1

    .line 2689
    mul-float/2addr v0, v1

    .line 2690
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v1, v1

    .line 2689
    mul-float/2addr v0, v1

    add-float/2addr v0, v11

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    goto :goto_0

    .line 2694
    :cond_3
    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    goto :goto_0

    .line 2701
    .restart local v8    # "minScrollY":I
    :cond_4
    const v10, 0x3fffffff    # 1.9999999f

    goto :goto_1
.end method

.method public forceNoOverlappingRendering(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 4567
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForceNoOverlappingRendering:Z

    .line 4566
    return-void
.end method

.method public generateAddAnimation(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "fromMoreCard"    # Z

    .prologue
    .line 3220
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-eqz v0, :cond_2

    .line 3228
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isHeadsUp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-eqz v0, :cond_4

    .line 3219
    :cond_1
    :goto_1
    return-void

    .line 3222
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3223
    if-eqz p2, :cond_3

    .line 3224
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3226
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    goto :goto_0

    .line 3229
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAddedHeadsUpChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3230
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public generateChildOrderChangedEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4474
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 4475
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGenerateChildOrderChangedEvent:Z

    .line 4476
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4477
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4473
    :cond_0
    return-void
.end method

.method public getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .locals 1

    .prologue
    .line 4030
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    return-object v0
.end method

.method public getAppearFraction(F)F
    .locals 4
    .param p1, "height"    # F

    .prologue
    .line 1174
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearEndPosition()F

    move-result v0

    .line 1175
    .local v0, "appearEndPosition":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearStartPosition()F

    move-result v1

    .line 1176
    .local v1, "appearStartPosition":F
    sub-float v2, p1, v1

    .line 1177
    sub-float v3, v0, v1

    .line 1176
    div-float/2addr v2, v3

    return v2
.end method

.method public getBackgroundFadeAmount()F
    .locals 1

    .prologue
    .line 4155
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundFadeAmount:F

    return v0
.end method

.method public getBottomMostNotificationBottom()F
    .locals 7

    .prologue
    .line 4320
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    .line 4321
    .local v3, "count":I
    const/4 v4, 0x0

    .line 4322
    .local v4, "max":F
    const/4 v2, 0x0

    .local v2, "childIdx":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 4323
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 4324
    .local v1, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 4322
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4327
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 4328
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipBottomAmount()I

    move-result v6

    int-to-float v6, v6

    .line 4327
    sub-float v0, v5, v6

    .line 4329
    .local v0, "bottom":F
    cmpl-float v5, v0, v4

    if-lez v5, :cond_0

    .line 4330
    move v4, v0

    goto :goto_1

    .line 4333
    .end local v0    # "bottom":F
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getStackTranslation()F

    move-result v5

    add-float/2addr v5, v4

    return v5
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1355
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    .line 1356
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 1357
    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1358
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v1

    .line 1359
    .local v1, "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1360
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1361
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMenuExposedView:Landroid/view/View;

    if-ne v3, v1, :cond_2

    .line 1368
    :cond_0
    :goto_0
    move-object v0, v1

    .line 1371
    .end local v1    # "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return-object v0

    .line 1362
    .restart local v1    # "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1363
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v3

    .line 1359
    if-eqz v3, :cond_1

    goto :goto_0
.end method

.method public getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 10
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 1412
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    .line 1413
    .local v3, "count":I
    const/4 v1, 0x0

    .local v1, "childIdx":I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 1414
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableView;

    .line 1415
    .local v6, "slidingChild":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 1416
    instance-of v8, v6, Lcom/android/systemui/statusbar/StackScrollerDecorView;

    .line 1415
    if-eqz v8, :cond_1

    .line 1413
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1419
    :cond_1
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v2

    .line 1420
    .local v2, "childTop":F
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v8

    int-to-float v8, v8

    add-float v7, v2, v8

    .line 1421
    .local v7, "top":F
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v2

    .line 1422
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableView;->getClipBottomAmount()I

    move-result v9

    int-to-float v9, v9

    .line 1421
    sub-float v0, v8, v9

    .line 1427
    .local v0, "bottom":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v4

    .line 1429
    .local v4, "right":I
    cmpl-float v8, p2, v7

    if-ltz v8, :cond_0

    cmpg-float v8, p2, v0

    if-gtz v8, :cond_0

    const/4 v8, 0x0

    cmpl-float v8, p1, v8

    if-ltz v8, :cond_0

    int-to-float v8, v4

    cmpg-float v8, p1, v8

    if-gtz v8, :cond_0

    .line 1430
    instance-of v8, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v8, :cond_3

    move-object v5, v6

    .line 1431
    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1432
    .local v5, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v8, :cond_2

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1433
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v8

    iget-object v8, v8, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v8, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eq v8, v5, :cond_2

    .line 1434
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 1435
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v9

    iget-object v9, v9, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v9, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v9

    .line 1434
    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v8

    if-ne v8, v5, :cond_0

    .line 1439
    :cond_2
    sub-float v8, p2, v2

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getViewAtPosition(F)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v8

    return-object v8

    .line 1441
    .end local v5    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    return-object v6

    .line 1444
    .end local v0    # "bottom":F
    .end local v2    # "childTop":F
    .end local v4    # "right":I
    .end local v6    # "slidingChild":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v7    # "top":F
    :cond_4
    const/4 v8, 0x0

    return-object v8
.end method

.method public getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 3
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLocationOnScreen([I)V

    .line 1406
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    return-object v0
.end method

.method public getClosestChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 12
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 1375
    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLocationOnScreen([I)V

    .line 1376
    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    int-to-float v10, v10

    sub-float v6, p2, v10

    .line 1378
    .local v6, "localTouchY":F
    const/4 v3, 0x0

    .line 1379
    .local v3, "closestChild":Lcom/android/systemui/statusbar/ExpandableView;
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 1382
    .local v7, "minDist":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v4

    .line 1383
    .local v4, "count":I
    const/4 v1, 0x0

    .end local v3    # "closestChild":Lcom/android/systemui/statusbar/ExpandableView;
    .local v1, "childIdx":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 1384
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/ExpandableView;

    .line 1385
    .local v8, "slidingChild":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    .line 1386
    instance-of v10, v8, Lcom/android/systemui/statusbar/StackScrollerDecorView;

    .line 1385
    if-eqz v10, :cond_1

    .line 1383
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1389
    :cond_1
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v2

    .line 1390
    .local v2, "childTop":F
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v10

    int-to-float v10, v10

    add-float v9, v2, v10

    .line 1391
    .local v9, "top":F
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v2

    .line 1392
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getClipBottomAmount()I

    move-result v11

    int-to-float v11, v11

    .line 1391
    sub-float v0, v10, v11

    .line 1394
    .local v0, "bottom":F
    sub-float v10, v9, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float v11, v0, v6

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1395
    .local v5, "dist":F
    cmpg-float v10, v5, v7

    if-gez v10, :cond_0

    .line 1396
    move-object v3, v8

    .line 1397
    .local v3, "closestChild":Lcom/android/systemui/statusbar/ExpandableView;
    move v7, v5

    goto :goto_1

    .line 1400
    .end local v0    # "bottom":F
    .end local v2    # "childTop":F
    .end local v3    # "closestChild":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v5    # "dist":F
    .end local v8    # "slidingChild":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v9    # "top":F
    :cond_2
    return-object v3
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 2300
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    return v0
.end method

.method public getCurrentOverScrollAmount(Z)F
    .locals 1
    .param p1, "top"    # Z

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result v0

    return v0
.end method

.method public getCurrentOverScrolledPixels(Z)F
    .locals 1
    .param p1, "top"    # Z

    .prologue
    .line 2141
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledTopPixels:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledBottomPixels:F

    goto :goto_0
.end method

.method public getEmptyBottomMargin()I
    .locals 2

    .prologue
    .line 3723
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getEmptyShadeViewHeight()I
    .locals 1

    .prologue
    .line 4316
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getFalsingThresholdFactor()F
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getFirstChildNotGone()Lcom/android/systemui/statusbar/ExpandableView;
    .locals 5

    .prologue
    .line 2210
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 2211
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2212
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2213
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v0, v3, :cond_0

    .line 2214
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .end local v0    # "child":Landroid/view/View;
    return-object v0

    .line 2211
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2217
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getFirstItemMinHeight()I
    .locals 2

    .prologue
    .line 1205
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    .line 1206
    .local v0, "firstChild":Lcom/android/systemui/statusbar/ExpandableView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getMinHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    goto :goto_0
.end method

.method public getHostView()Landroid/view/View;
    .locals 0

    .prologue
    .line 3719
    return-object p0
.end method

.method public getIntrinsicPadding()I
    .locals 1

    .prologue
    .line 4099
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    return v0
.end method

.method public getLayoutMinHeight()I
    .locals 1

    .prologue
    .line 2743
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getMaxExpandHeight(Lcom/android/systemui/statusbar/ExpandableView;)I
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 1505
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxContentHeight()I

    move-result v0

    return v0
.end method

.method public getMinExpansionHeight()I
    .locals 3

    .prologue
    .line 4680
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getNotGoneChildCount()I
    .locals 6

    .prologue
    .line 2288
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 2289
    .local v1, "childCount":I
    const/4 v2, 0x0

    .line 2290
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 2291
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 2292
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->willBeGone()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2290
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2292
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v0, v4, :cond_0

    .line 2293
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2296
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_2
    return v2
.end method

.method public getNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;
    .locals 1

    .prologue
    .line 4668
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    return-object v0
.end method

.method public getNotificationsTopY()F
    .locals 2

    .prologue
    .line 4106
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getStackTranslation()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getOpeningHeight()F
    .locals 1

    .prologue
    .line 4707
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinExpansionHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getPeekHeight()I
    .locals 4

    .prologue
    .line 2751
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    .line 2752
    .local v0, "firstChild":Lcom/android/systemui/statusbar/ExpandableView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v1

    .line 2754
    .local v1, "firstChildMinHeight":I
    :goto_0
    const/4 v2, 0x0

    .line 2755
    .local v2, "shelfHeight":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v3, :cond_0

    .line 2756
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    .line 2758
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    return v3

    .line 2753
    .end local v1    # "firstChildMinHeight":I
    .end local v2    # "shelfHeight":I
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    .restart local v1    # "firstChildMinHeight":I
    goto :goto_0
.end method

.method public getStackTranslation()F
    .locals 1

    .prologue
    .line 1181
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackTranslation:F

    return v0
.end method

.method public getSwipeActionHelper()Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    return-object v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 980
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    return v0
.end method

.method public getTopPaddingOverflow()F
    .locals 1

    .prologue
    .line 2747
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    return v0
.end method

.method public getVisibleNotificationIndex(Landroid/view/View;)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4196
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 4197
    .local v0, "count":I
    const/4 v2, 0x0

    .line 4198
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4199
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4200
    .local v3, "v":Landroid/view/View;
    if-ne p1, v3, :cond_0

    .line 4201
    return v2

    .line 4203
    :cond_0
    instance-of v4, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 4204
    add-int/lit8 v2, v2, 0x1

    .line 4198
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4207
    .end local v3    # "v":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    return v4
.end method

.method public goToFullShade(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const/4 v1, 0x1

    .line 4083
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->setInvisible()V

    .line 4084
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    .line 4085
    iput-wide p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    .line 4086
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4087
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4082
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 4572
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForceNoOverlappingRendering:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->hasOverlappingRendering()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPulsingNotifications()Z
    .locals 1

    .prologue
    .line 2379
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPulsing:Ljava/util/Collection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAddOrRemoveAnimationPending()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3210
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-eqz v2, :cond_1

    .line 3211
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 3210
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isAntiFalsingNeeded()Z
    .locals 1

    .prologue
    .line 1592
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    return v0
.end method

.method public isBelowLastNotification(FF)Z
    .locals 9
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4357
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    .line 4358
    .local v2, "childCount":I
    add-int/lit8 v4, v2, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_4

    .line 4359
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 4360
    .local v1, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_3

    .line 4361
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getY()F

    move-result v3

    .line 4362
    .local v3, "childTop":F
    cmpl-float v7, v3, p2

    if-lez v7, :cond_0

    .line 4364
    return v6

    .line 4366
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v3

    .line 4367
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipBottomAmount()I

    move-result v8

    int-to-float v8, v8

    .line 4366
    sub-float/2addr v7, v8

    cmpl-float v7, p2, v7

    if-lez v7, :cond_1

    const/4 v0, 0x1

    .line 4368
    .local v0, "belowChild":Z
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    if-ne v1, v7, :cond_2

    .line 4370
    return v5

    .line 4366
    .end local v0    # "belowChild":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "belowChild":Z
    goto :goto_1

    .line 4371
    :cond_2
    if-nez v0, :cond_3

    .line 4373
    return v6

    .line 4358
    .end local v0    # "belowChild":Z
    .end local v3    # "childTop":F
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 4377
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_4
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackTranslation:F

    add-float/2addr v7, v8

    cmpl-float v7, p2, v7

    if-lez v7, :cond_5

    :goto_2
    return v5

    :cond_5
    move v5, v6

    goto :goto_2
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 4595
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    return v0
.end method

.method public isFoldFooterViewInVisibleLocation()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 846
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFoldFooterView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFoldFooterView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 847
    :cond_0
    return v3

    .line 849
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFoldFooterView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 850
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFoldFooterView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 851
    .local v0, "midLine":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 852
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-le v0, v1, :cond_3

    .line 853
    :cond_2
    return v3

    .line 855
    :cond_3
    return v4
.end method

.method public isInContentBounds(F)Z
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 3640
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInUserVisibleArea(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 8
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const/4 v5, 0x0

    .line 4719
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInVisibleLocation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4720
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v3

    .line 4722
    .local v3, "state":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    const/4 v2, 0x0

    .line 4723
    .local v2, "parentY":F
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 4725
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v1

    .line 4726
    .local v1, "parentState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iget v2, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 4729
    .end local v1    # "parentState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_0
    iget v6, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    add-float v4, v2, v6

    .line 4730
    .local v4, "top":F
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v6

    int-to-float v6, v6

    add-float v0, v4, v6

    .line 4731
    .local v0, "bottom":F
    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-lez v6, :cond_1

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    cmpg-float v6, v4, v6

    if-gez v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    return v5

    .line 4733
    .end local v0    # "bottom":F
    .end local v2    # "parentY":F
    .end local v3    # "state":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v4    # "top":F
    :cond_2
    return v5
.end method

.method public isInVisibleLocation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 7
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 825
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v1

    .line 826
    .local v1, "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-nez v1, :cond_0

    .line 827
    return v4

    .line 829
    :cond_0
    iget v5, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    and-int/lit8 v5, v5, 0x5

    iput v5, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    if-nez v5, :cond_1

    .line 830
    return v4

    .line 832
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_2

    .line 833
    return v4

    .line 835
    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpPinned:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpAnimatingAway:Z

    if-eqz v5, :cond_4

    .line 836
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 838
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getLocationOnScreen([I)V

    .line 839
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    aget v2, v5, v3

    .line 840
    .local v2, "top":I
    iget v5, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    add-int v0, v2, v5

    .line 841
    .local v0, "bottom":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-lt v0, v5, :cond_6

    .line 842
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottom()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-gt v2, v5, :cond_5

    .line 841
    :goto_0
    return v3

    :cond_5
    move v3, v4

    .line 842
    goto :goto_0

    :cond_6
    move v3, v4

    .line 841
    goto :goto_0
.end method

.method protected isInsideQsContainer(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1880
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQsBeingCovered()Z
    .locals 1

    .prologue
    .line 3682
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsQsBeingCovered:Z

    return v0
.end method

.method public isQsCovered()Z
    .locals 1

    .prologue
    .line 3687
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsQsCovered:Z

    return v0
.end method

.method public isScrolledToBottom()Z
    .locals 2

    .prologue
    .line 3714
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrolledToTop()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3709
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public lockScrollTo(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 1515
    return-void

    .line 1517
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    .line 1518
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->scrollTo(Landroid/view/View;)Z

    .line 1513
    return-void
.end method

.method public notifyGroupChildAdded(Landroid/view/View;)V
    .locals 0
    .param p1, "row"    # Landroid/view/View;

    .prologue
    .line 3177
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onViewAddedInternal(Landroid/view/View;)V

    .line 3176
    return-void
.end method

.method public notifyGroupChildRemoved(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "row"    # Landroid/view/View;
    .param p2, "childrenContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 3173
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onViewRemovedInternal(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 3172
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 1550
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomInset:I

    .line 1552
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    .line 1553
    .local v0, "range":I
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-le v1, v0, :cond_1

    .line 1556
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mReclamp:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1557
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mReclamp:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1563
    :cond_0
    :goto_0
    return-object p1

    .line 1558
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1561
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForcedScroll:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->scrollTo(Landroid/view/View;)Z

    goto :goto_0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 1315
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onNotificatonStartDismissing()V

    .line 1316
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    .line 1317
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->onBeginDrag(Landroid/view/View;)V

    .line 1318
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContinuousShadowDrawing()V

    .line 1319
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1323
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 1314
    return-void

    .line 1320
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    goto :goto_0
.end method

.method public onChildAnimationFinished()V
    .locals 1

    .prologue
    .line 3929
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationRunning(Z)V

    .line 3930
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3931
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->runAnimationFinishedRunnables()V

    .line 3932
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clearViewOverlays()V

    .line 3933
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clearHeadsUpDisappearRunning()V

    .line 3928
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1224
    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 1225
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1226
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1227
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->handleChildDismissed(Landroid/view/View;)V

    .line 1229
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v1

    .line 1230
    .local v1, "transientContainer":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 1231
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    .line 1223
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "transientContainer":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public onChildSnappedBack(Landroid/view/View;F)V
    .locals 2
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "targetLeft"    # F

    .prologue
    const/4 v1, 0x0

    .line 1286
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->onDragFinished(Landroid/view/View;)V

    .line 1287
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContinuousShadowDrawing()V

    .line 1288
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1289
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 1293
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 1298
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 1299
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->resetMenu()V

    .line 1300
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 1285
    :cond_1
    return-void

    .line 1296
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onCloseFold()V
    .locals 2

    .prologue
    .line 3836
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isLastQsCovered()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsQsCovered:Z

    if-eq v0, v1, :cond_0

    .line 3837
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isLastQsCovered()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->doExpandCollapseAnimation(Z)V

    .line 3835
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1608
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1609
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1610
    .local v0, "densityScale":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->setDensityScale(F)V

    .line 1611
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 1612
    .local v1, "pagingTouchSlop":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->setPagingTouchSlop(F)V

    .line 1613
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initView(Landroid/content/Context;)V

    .line 1607
    return-void
.end method

.method public onDismissAnimationRequested(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPendingDismissChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 903
    const-string/jumbo v0, "StackScroller"

    const-string/jumbo v1, "on dismiss animation requested"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onNotificatonStopDismissing()V

    .line 1345
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    .line 1343
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 517
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShouldDrawNotificationBackground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 527
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastDrawBoundsBottom:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastDrawBoundsTop:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eq v0, v2, :cond_2

    .line 528
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidateOutline()V

    .line 529
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastDrawBoundsTop:I

    .line 530
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastDrawBoundsBottom:I

    .line 533
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 534
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    .line 535
    .local v6, "y":I
    int-to-float v2, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDebugPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 536
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutHeight()I

    move-result v6

    .line 537
    int-to-float v2, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDebugPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 538
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v2

    sub-int v6, v0, v2

    .line 539
    int-to-float v2, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDebugPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 516
    .end local v6    # "y":I
    :cond_3
    return-void

    .line 518
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v2, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveNotifications()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isFoldViewVisible()Z

    move-result v0

    .line 517
    if-eqz v0, :cond_0

    .line 520
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 521
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 524
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->drawTransparentArea(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public onExpansionStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3739
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    .line 3740
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setExpansionChanging(Z)V

    .line 3741
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    .line 3738
    return-void
.end method

.method public onExpansionStopped()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3745
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    .line 3746
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetCheckSnoozeLeavebehind()V

    .line 3747
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/AmbientState;->setExpansionChanging(Z)V

    .line 3748
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v3, :cond_1

    .line 3749
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 3750
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->resetUserExpandedStates()V

    .line 3753
    invoke-direct {p0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clearTemporaryViews(Landroid/view/ViewGroup;)V

    .line 3754
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3755
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 3756
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    instance-of v3, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 3757
    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3758
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clearTemporaryViews(Landroid/view/ViewGroup;)V

    .line 3754
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3744
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 1681
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v5, :cond_0

    .line 1682
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    .line 1681
    if-eqz v5, :cond_1

    .line 1683
    :cond_0
    return v6

    .line 1685
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 1686
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1709
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 1688
    :pswitch_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v5, :cond_2

    .line 1689
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    .line 1690
    .local v4, "vscroll":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_2

    .line 1691
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getVerticalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v0, v5

    .line 1692
    .local v0, "delta":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v3

    .line 1693
    .local v3, "range":I
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1694
    .local v2, "oldScrollY":I
    sub-int v1, v2, v0

    .line 1695
    .local v1, "newScrollY":I
    if-gez v1, :cond_4

    .line 1696
    const/4 v1, 0x0

    .line 1700
    :cond_3
    :goto_0
    if-eq v1, v2, :cond_2

    .line 1701
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 1702
    const/4 v5, 0x1

    return v5

    .line 1697
    :cond_4
    if-le v1, v3, :cond_3

    .line 1698
    move v1, v3

    goto :goto_0

    .line 1686
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGoToKeyguard()V
    .locals 0

    .prologue
    .line 4345
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestAnimateEverything()V

    .line 4344
    return-void
.end method

.method public onGroupCreatedFromChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V
    .locals 1
    .param p1, "group"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .prologue
    .line 4402
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->requestNotificationUpdate()V

    .line 4401
    return-void
.end method

.method public onGroupExpansionChanged(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V
    .locals 4
    .param p1, "changedRow"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "expanded"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4382
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupExpandedForMeasure:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v3, :cond_3

    .line 4383
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    .line 4384
    .local v0, "animated":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 4385
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedGroupView:Landroid/view/View;

    .line 4386
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4388
    :cond_0
    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChildrenExpanded(ZZ)V

    .line 4389
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupExpandedForMeasure:Z

    if-nez v1, :cond_1

    .line 4390
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 4392
    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$16;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$16;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    .line 4381
    return-void

    .end local v0    # "animated":Z
    :cond_2
    move v0, v1

    .line 4383
    goto :goto_0

    :cond_3
    move v0, v2

    .line 4382
    goto :goto_0
.end method

.method public onGroupsChanged()V
    .locals 1

    .prologue
    .line 4470
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->requestNotificationUpdate()V

    .line 4469
    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 4492
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateHeadsUpState()V

    .line 4493
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClipToOutline()V

    .line 4494
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateHeadsUpAnimation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    .line 4491
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "isHeadsUp"    # Z

    .prologue
    .line 4507
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateHeadsUpState()V

    .line 4508
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateHeadsUpAnimation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    .line 4506
    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 4498
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v0

    .line 4499
    .local v0, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-eqz v0, :cond_0

    .line 4500
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->cancelAnimations(Landroid/view/View;)V

    .line 4502
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateHeadsUpState()V

    .line 4503
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClipToOutline()V

    .line 4497
    return-void
.end method

.method public onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "needsAnimation"    # Z

    .prologue
    const/4 v0, 0x0

    .line 3868
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 3869
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateScrollPositionOnExpandInBottom(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 3870
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 3871
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 3872
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    .line 3873
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object v0, p1

    .line 3875
    .end local p1    # "view":Lcom/android/systemui/statusbar/ExpandableView;
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-eq v0, v1, :cond_1

    .line 3876
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFirstVisibleBackgroundChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-ne v1, v2, :cond_2

    .line 3877
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 3879
    :cond_2
    if-eqz p2, :cond_3

    .line 3880
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestAnimationOnViewResize(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 3882
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3867
    return-void
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 4408
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4409
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollable:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 4410
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 4411
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 4412
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 4413
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 4407
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 4418
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4419
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollable:Z

    if-eqz v0, :cond_1

    .line 4420
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 4421
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackwardScrollable:Z

    if-eqz v0, :cond_0

    .line 4423
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 4422
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4424
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4426
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mForwardScrollable:Z

    if-eqz v0, :cond_1

    .line 4427
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4428
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4432
    :cond_1
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 4417
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2809
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initDownStates(Landroid/view/MotionEvent;)V

    .line 2810
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    .line 2811
    const/4 v7, 0x0

    .line 2812
    .local v7, "expandWantsIt":Z
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-eqz v0, :cond_7

    .line 2815
    .end local v7    # "expandWantsIt":Z
    :cond_0
    :goto_0
    const/4 v10, 0x0

    .line 2816
    .local v10, "scrollWantsIt":Z
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-eqz v0, :cond_8

    .line 2819
    .end local v10    # "scrollWantsIt":Z
    :cond_1
    :goto_1
    const/4 v11, 0x0

    .line 2820
    .local v11, "swipeWantsIt":Z
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_2

    .line 2821
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-eqz v0, :cond_9

    .line 2828
    .end local v11    # "swipeWantsIt":Z
    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_a

    const/4 v9, 0x1

    .line 2829
    .local v9, "isUp":Z
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v8

    .line 2830
    .local v8, "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    invoke-direct {p0, p1, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v9, :cond_3

    if-eqz v11, :cond_b

    .line 2836
    :cond_3
    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 2837
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 2839
    :cond_4
    sget-boolean v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "StackScroller"

    const-string/jumbo v3, "onInterceptTouchEvent swipeWantsIt=%b scrollWantsIt=%b expandWantsIt=%b"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 2840
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v4, v5

    .line 2839
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    :cond_5
    if-nez v11, :cond_6

    if-nez v10, :cond_6

    if-nez v7, :cond_6

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_6
    return v1

    .line 2813
    .end local v8    # "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    .end local v9    # "isUp":Z
    .restart local v7    # "expandWantsIt":Z
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .local v7, "expandWantsIt":Z
    goto :goto_0

    .line 2817
    .end local v7    # "expandWantsIt":Z
    .restart local v10    # "scrollWantsIt":Z
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onInterceptTouchEventScroll(Landroid/view/MotionEvent;)Z

    move-result v10

    .local v10, "scrollWantsIt":Z
    goto :goto_1

    .line 2822
    .end local v10    # "scrollWantsIt":Z
    .restart local v11    # "swipeWantsIt":Z
    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v0, :cond_2

    .line 2823
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v0, :cond_2

    .line 2824
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    if-nez v0, :cond_2

    .line 2825
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    .local v11, "swipeWantsIt":Z
    goto :goto_2

    .line 2828
    .end local v11    # "swipeWantsIt":Z
    :cond_a
    const/4 v9, 0x0

    .restart local v9    # "isUp":Z
    goto :goto_3

    .line 2830
    .restart local v8    # "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    :cond_b
    if-nez v7, :cond_3

    .line 2831
    if-nez v10, :cond_3

    .line 2832
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 2833
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeAndSaveGuts(ZZZIIZ)V

    goto :goto_4
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 787
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v5, v9

    .line 788
    .local v0, "centerX":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 789
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 792
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v4, v5

    .line 793
    .local v4, "width":F
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v2, v5

    .line 794
    .local v2, "height":F
    div-float v5, v4, v9

    sub-float v5, v0, v5

    float-to-int v5, v5

    .line 796
    div-float v6, v4, v9

    add-float/2addr v6, v0

    float-to-int v6, v6

    .line 797
    float-to-int v7, v2

    .line 795
    const/4 v8, 0x0

    .line 794
    invoke-virtual {v1, v5, v8, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 788
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 799
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "height":F
    .end local v4    # "width":F
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setMaxLayoutHeight(I)V

    .line 800
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 801
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 802
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 803
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateFirstAndLastBackgroundViews()V

    .line 804
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 785
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 775
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 778
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 779
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 780
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->measureChild(Landroid/view/View;II)V

    .line 779
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 774
    :cond_0
    return-void
.end method

.method public onMenuClicked(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "item"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .prologue
    .line 482
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMenuPressListener:Lcom/android/systemui/SwipeHelper$MenuPressListener;

    if-nez v1, :cond_0

    .line 483
    return-void

    .line 485
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 486
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 487
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContext:Landroid/content/Context;

    .line 488
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 487
    const/16 v3, 0x14d

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 490
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMenuPressListener:Lcom/android/systemui/SwipeHelper$MenuPressListener;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/systemui/SwipeHelper$MenuPressListener;->onMenuPress(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    .line 481
    return-void
.end method

.method public onMenuReset(Landroid/view/View;)V
    .locals 2
    .param p1, "row"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 495
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 496
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMenuExposedView:Landroid/view/View;

    .line 497
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    .line 494
    :cond_0
    return-void
.end method

.method public onMenuShown(Landroid/view/View;)V
    .locals 3
    .param p1, "row"    # Landroid/view/View;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTranslatingParentView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMenuExposedView:Landroid/view/View;

    .line 504
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 505
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContext:Landroid/content/Context;

    move-object v0, p1

    .line 506
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 505
    const/16 v2, 0x14c

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->onMenuShown(Landroid/view/View;)V

    .line 502
    return-void
.end method

.method public onOpenFold(Z)V
    .locals 1
    .param p1, "expandFold"    # Z

    .prologue
    .line 3828
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsCovered()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 3829
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->doExpandCollapseAnimation(Z)V

    .line 3831
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChildContentHeight()V

    .line 3832
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hideHeadsUpBackground()V

    .line 3827
    return-void
.end method

.method public onPanelTrackingStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3774
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    .line 3775
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setPanelTracking(Z)V

    .line 3773
    return-void
.end method

.method public onPanelTrackingStopped()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3778
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPanelTracking:Z

    .line 3779
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setPanelTracking(Z)V

    .line 3777
    return-void
.end method

.method public onPopupAnimationRequested(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPendingPopupChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 896
    const-string/jumbo v0, "StackScroller"

    const-string/jumbo v1, "on pop animation requested"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    return-void
.end method

.method public onReset(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 3887
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(Landroid/view/View;)V

    .line 3888
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChronometerForChild(Landroid/view/View;)V

    .line 3886
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    .line 1625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_6

    .line 1626
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-ne v8, v7, :cond_7

    const/4 v3, 0x1

    .line 1627
    .local v3, "isCancelOrUp":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    .line 1628
    const/4 v0, 0x0

    .line 1629
    .local v0, "expandWantsIt":Z
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-eqz v8, :cond_8

    .line 1640
    .end local v0    # "expandWantsIt":Z
    :cond_0
    :goto_1
    const/4 v5, 0x0

    .line 1641
    .local v5, "scrollerWantsIt":Z
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-eqz v8, :cond_a

    .line 1645
    .end local v5    # "scrollerWantsIt":Z
    :cond_1
    :goto_2
    const/4 v2, 0x0

    .line 1646
    .local v2, "horizontalSwipeWantsIt":Z
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v8, :cond_2

    .line 1647
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-eqz v8, :cond_b

    .line 1655
    .end local v2    # "horizontalSwipeWantsIt":Z
    :cond_2
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v1

    .line 1656
    .local v1, "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1666
    :cond_3
    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-ne v8, v7, :cond_4

    .line 1667
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 1669
    :cond_4
    if-nez v2, :cond_5

    if-nez v5, :cond_5

    if-nez v0, :cond_5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    :cond_5
    return v7

    .line 1625
    .end local v1    # "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    .end local v3    # "isCancelOrUp":Z
    :cond_6
    const/4 v3, 0x1

    .restart local v3    # "isCancelOrUp":Z
    goto :goto_0

    .line 1626
    .end local v3    # "isCancelOrUp":Z
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "isCancelOrUp":Z
    goto :goto_0

    .line 1629
    .restart local v0    # "expandWantsIt":Z
    :cond_8
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsQsBeingCovered:Z

    if-nez v8, :cond_0

    .line 1630
    if-eqz v3, :cond_9

    .line 1631
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/systemui/ExpandHelper;->onlyObserveMovements(Z)V

    .line 1633
    :cond_9
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    .line 1634
    .local v6, "wasExpandingBefore":Z
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v8, p1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1635
    .local v0, "expandWantsIt":Z
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v8, :cond_0

    if-eqz v6, :cond_0

    .line 1636
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    if-nez v8, :cond_0

    .line 1637
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->dispatchDownEventToScroller(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1641
    .end local v0    # "expandWantsIt":Z
    .end local v6    # "wasExpandingBefore":Z
    .restart local v5    # "scrollerWantsIt":Z
    :cond_a
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v8, :cond_1

    .line 1642
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    if-nez v8, :cond_1

    .line 1643
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    move-result v5

    .local v5, "scrollerWantsIt":Z
    goto :goto_2

    .line 1648
    .end local v5    # "scrollerWantsIt":Z
    .restart local v2    # "horizontalSwipeWantsIt":Z
    :cond_b
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v8, :cond_2

    .line 1649
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v8, :cond_2

    .line 1650
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    if-nez v8, :cond_2

    .line 1651
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v8, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .local v2, "horizontalSwipeWantsIt":Z
    goto :goto_3

    .line 1657
    .end local v2    # "horizontalSwipeWantsIt":Z
    .restart local v1    # "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    :cond_c
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getGutsContent()Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    move-result-object v8

    instance-of v8, v8, Lcom/android/systemui/statusbar/NotificationSnooze;

    .line 1656
    if-eqz v8, :cond_3

    .line 1658
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getGutsContent()Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationSnooze;

    .line 1659
    .local v4, "ns":Lcom/android/systemui/statusbar/NotificationSnooze;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationSnooze;->isExpanded()Z

    move-result v8

    if-eqz v8, :cond_d

    if-nez v3, :cond_e

    .line 1660
    :cond_d
    if-nez v2, :cond_3

    .line 1659
    if-eqz v5, :cond_3

    .line 1663
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    goto :goto_4
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3138
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 3139
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onViewAddedInternal(Landroid/view/View;)V

    .line 3137
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2879
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2882
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildTransferInProgress:Z

    if-nez v0, :cond_0

    .line 2883
    invoke-direct {p0, p1, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onViewRemovedInternal(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 2878
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 3653
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 3654
    if-nez p1, :cond_0

    .line 3655
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 3652
    :cond_0
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4438
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4439
    return v8

    .line 4441
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4442
    return v7

    .line 4444
    :cond_1
    const/4 v0, -0x1

    .line 4445
    .local v0, "direction":I
    sparse-switch p1, :sswitch_data_0

    .line 4465
    :cond_2
    return v7

    .line 4449
    :sswitch_0
    const/4 v0, 0x1

    .line 4454
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingTop:I

    sub-int/2addr v3, v4

    .line 4455
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v4

    .line 4454
    sub-int v2, v3, v4

    .line 4457
    .local v2, "viewportHeight":I
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    mul-int v4, v0, v2

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4456
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4458
    .local v1, "targetScrollY":I
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-eq v1, v3, :cond_2

    .line 4459
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int v6, v1, v6

    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 4460
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    .line 4461
    return v8

    .line 4445
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x1020038 -> :sswitch_1
        0x102003a -> :sswitch_0
    .end sparse-switch
.end method

.method public removeFoldView()V
    .locals 1

    .prologue
    .line 4231
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFoldHeaderView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeTargetView(Landroid/view/View;)I

    .line 4232
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFoldFooterView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeTargetView(Landroid/view/View;)I

    .line 4230
    return-void
.end method

.method public removeLongPressCallback()V
    .locals 1

    .prologue
    .line 3678
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->removeLongPressCallback()V

    .line 3677
    return-void
.end method

.method public requestDisallowDismiss()V
    .locals 1

    .prologue
    .line 3674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    .line 3673
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 2900
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2901
    if-eqz p1, :cond_0

    .line 2902
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->removeLongPressCallback()V

    .line 2899
    :cond_0
    return-void
.end method

.method public requestDisallowLongPress()V
    .locals 0

    .prologue
    .line 3669
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 3668
    return-void
.end method

.method public resetCheckSnoozeLeavebehind()V
    .locals 1

    .prologue
    .line 3735
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 3734
    return-void
.end method

.method public resetExposedMenuView(ZZ)V
    .locals 1
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 5036
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    .line 5035
    return-void
.end method

.method public resetIsQsCovered(Z)V
    .locals 2
    .param p1, "isQsCovered"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3691
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsQsCovered:Z

    .line 3692
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsQsCovered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getQsContent()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3693
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getQsContent()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 3694
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getQsContent()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 3695
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getQsContent()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3690
    :cond_0
    return-void
.end method

.method public resetScrollPosition()V
    .locals 1

    .prologue
    .line 3783
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 3784
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    .line 3782
    return-void
.end method

.method public resetViews()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4981
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 4982
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    .line 4983
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    .line 4984
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsQsBeingCovered:Z

    .line 4980
    return-void
.end method

.method public runAfterAnimationFinished(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 4482
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->PRESENT:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4481
    return-void
.end method

.method public scrollTo(Landroid/view/View;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    move-object v0, p1

    .line 1523
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 1524
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v2

    .line 1525
    .local v2, "positionInLinearLayout":I
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->targetScrollForView(Lcom/android/systemui/statusbar/ExpandableView;I)I

    move-result v3

    .line 1526
    .local v3, "targetScroll":I
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v4

    add-int v1, v2, v4

    .line 1530
    .local v1, "outOfViewScroll":I
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lt v4, v3, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v1, v4, :cond_1

    .line 1531
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int v7, v3, v7

    invoke-virtual {v4, v5, v6, v8, v7}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1532
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 1533
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateScroll()V

    .line 1534
    return v9

    .line 1536
    :cond_1
    return v8
.end method

.method public setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 2
    .param p1, "activatedChild"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    const/4 v1, 0x1

    .line 4021
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 4022
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 4023
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    .line 4024
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4026
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4020
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 4635
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 4636
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFadingOut(Z)V

    .line 4634
    return-void

    .line 4636
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnimationRunning(Z)V
    .locals 3
    .param p1, "animationRunning"    # Z

    .prologue
    const/4 v2, 0x0

    .line 4576
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationRunning:Z

    if-eq p1, v0, :cond_0

    .line 4577
    if-eqz p1, :cond_2

    .line 4578
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRunningAnimationUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4582
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationRunning:Z

    .line 4583
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContinuousShadowDrawing()V

    .line 4586
    :cond_0
    if-nez p1, :cond_1

    .line 4587
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildRemoveAnimationRunning:Z

    .line 4588
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isFoldAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4589
    invoke-static {v2}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->setFoldAnimating(Z)V

    .line 4575
    :cond_1
    return-void

    .line 4580
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRunningAnimationUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0
    .param p1, "animationsEnabled"    # Z

    .prologue
    .line 3181
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    .line 3182
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    .line 3180
    return-void
.end method

.method public setBackgroundBottom(I)V
    .locals 1
    .param p1, "bottom"    # I

    .prologue
    .line 2553
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentBounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2554
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentBackgroundBounds()V

    .line 2552
    return-void
.end method

.method public setChildLocationsChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    .prologue
    .line 820
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    .line 819
    return-void
.end method

.method public setChildTransferInProgress(Z)V
    .locals 0
    .param p1, "childTransferInProgress"    # Z

    .prologue
    .line 2874
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildTransferInProgress:Z

    .line 2873
    return-void
.end method

.method public setDark(ZZLandroid/graphics/PointF;)V
    .locals 2
    .param p1, "dark"    # Z
    .param p2, "animate"    # Z
    .param p3, "touchWakeUpScreenLocation"    # Landroid/graphics/PointF;

    .prologue
    const/4 v1, 0x1

    .line 4118
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setDark(Z)V

    .line 4119
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    .line 4120
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkNeedsAnimation:Z

    .line 4121
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->findDarkAnimationOriginIndex(Landroid/graphics/PointF;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAnimationOriginIndex:I

    .line 4122
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4123
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setBackgroundFadeAmount(F)V

    .line 4127
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4128
    if-eqz p1, :cond_2

    .line 4129
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setExcludedBackgroundArea(Landroid/graphics/Rect;)V

    .line 4134
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateWillNotDraw()V

    .line 4135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 4136
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 4117
    return-void

    .line 4124
    :cond_1
    if-nez p1, :cond_0

    .line 4125
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setBackgroundFadeAmount(F)V

    goto :goto_0

    .line 4131
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackground()V

    goto :goto_1
.end method

.method public setDimmed(ZZ)V
    .locals 2
    .param p1, "dimmed"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x1

    .line 3969
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setDimmed(Z)V

    .line 3970
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 3971
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    .line 3972
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 3973
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->animateDimmed(Z)V

    .line 3977
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 3968
    return-void

    .line 3975
    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimAmount(F)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setDismissAllInProgress(Z)V
    .locals 1
    .param p1, "dismissAllInProgress"    # Z

    .prologue
    .line 4286
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    if-ne v0, p1, :cond_0

    .line 4287
    return-void

    .line 4289
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    .line 4290
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setDismissAllInProgress(Z)V

    .line 4291
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->handleDismissAllClipping()V

    .line 4285
    return-void
.end method

.method public setDrawBackgroundAsSrc(Z)V
    .locals 0
    .param p1, "asSrc"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDrawBackgroundAsSrc:Z

    .line 696
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateSrcDrawing()V

    .line 694
    return-void
.end method

.method public setEmptyShadeView(Lcom/android/systemui/statusbar/EmptyShadeView;)V
    .locals 2
    .param p1, "emptyShadeView"    # Lcom/android/systemui/statusbar/EmptyShadeView;

    .prologue
    .line 4236
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeTargetView(Landroid/view/View;)I

    move-result v0

    .line 4237
    .local v0, "index":I
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 4238
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    .line 4235
    return-void
.end method

.method public setExpandedHeight(F)V
    .locals 13
    .param p1, "height"    # F

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1004
    sget-boolean v7, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "StackScroller"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setExpandedHeight height="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    .line 1006
    cmpl-float v7, p1, v9

    if-lez v7, :cond_3

    const/4 v7, 0x1

    :goto_0
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsExpanded(Z)V

    .line 1007
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinExpansionHeight()I

    move-result v3

    .line 1008
    .local v3, "minExpansionHeight":I
    int-to-float v7, v3

    cmpg-float v7, p1, v7

    if-gez v7, :cond_4

    .line 1009
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 1010
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v11

    iput v11, v7, Landroid/graphics/Rect;->right:I

    .line 1011
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 1012
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    float-to-int v8, p1

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 1013
    int-to-float p1, v3

    .line 1014
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mClipRect:Landroid/graphics/Rect;

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setRequestedClipBounds(Landroid/graphics/Rect;)V

    .line 1020
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearEndPosition()F

    move-result v0

    .line 1021
    .local v0, "appearEndPosition":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearStartPosition()F

    move-result v2

    .line 1022
    .local v2, "appearStartPosition":F
    cmpl-float v7, p1, v0

    if-ltz v7, :cond_7

    .line 1023
    const/4 v6, 0x0

    .line 1025
    .local v6, "translationY":F
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    if-eqz v7, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1026
    :cond_1
    float-to-int v4, p1

    .line 1027
    .local v4, "stackHeight":I
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1035
    .local v1, "appearFraction":F
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    float-to-int v8, v0

    invoke-direct {p0, v1, v7, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateStackAppearState(FII)V

    .line 1049
    :goto_3
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    if-eq v4, v7, :cond_2

    .line 1050
    iput v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    .line 1051
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 1052
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 1054
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStackTranslation(F)V

    .line 1003
    return-void

    .end local v0    # "appearEndPosition":F
    .end local v1    # "appearFraction":F
    .end local v2    # "appearStartPosition":F
    .end local v3    # "minExpansionHeight":I
    .end local v4    # "stackHeight":I
    .end local v6    # "translationY":F
    :cond_3
    move v7, v8

    .line 1006
    goto :goto_0

    .line 1016
    .restart local v3    # "minExpansionHeight":I
    :cond_4
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setRequestedClipBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1030
    .restart local v0    # "appearEndPosition":F
    .restart local v2    # "appearStartPosition":F
    .restart local v6    # "translationY":F
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getStackAppearMinHeight()I

    move-result v7

    int-to-float v5, v7

    .line 1031
    .local v5, "stackMinHeight":F
    add-float v7, v0, v5

    invoke-static {p1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v4, v7

    .line 1032
    .restart local v4    # "stackHeight":I
    cmpl-float v7, v5, v9

    if-lez v7, :cond_6

    .line 1033
    sub-float v7, p1, v0

    div-float/2addr v7, v5

    invoke-static {v7, v10}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .restart local v1    # "appearFraction":F
    goto :goto_2

    .end local v1    # "appearFraction":F
    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "appearFraction":F
    goto :goto_2

    .line 1037
    .end local v1    # "appearFraction":F
    .end local v4    # "stackHeight":I
    .end local v5    # "stackMinHeight":F
    .end local v6    # "translationY":F
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearFraction(F)F

    move-result v1

    .line 1038
    .restart local v1    # "appearFraction":F
    cmpl-float v7, v1, v9

    if-ltz v7, :cond_9

    .line 1039
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getExpandTranslationStart()F

    move-result v7

    invoke-static {v7, v9, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v6

    .line 1046
    .restart local v6    # "translationY":F
    :goto_4
    sub-float v7, p1, v6

    float-to-int v4, v7

    .line 1047
    .restart local v4    # "stackHeight":I
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpPinned:Z

    if-nez v7, :cond_8

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpAnimatingAway:Z

    if-eqz v7, :cond_a

    :cond_8
    move v7, v10

    :goto_5
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTransitionAlpha(F)V

    goto :goto_3

    .line 1044
    .end local v4    # "stackHeight":I
    .end local v6    # "translationY":F
    :cond_9
    sub-float v7, p1, v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getExpandTranslationStart()F

    move-result v8

    add-float v6, v7, v8

    .restart local v6    # "translationY":F
    goto :goto_4

    .restart local v4    # "stackHeight":I
    :cond_a
    move v7, v9

    .line 1047
    goto :goto_5
.end method

.method public setExpandingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ExpandHelper;->setEnabled(Z)V

    .line 1577
    return-void
.end method

.method public setExpandingVelocity(F)V
    .locals 1
    .param p1, "expandingVelocity"    # F

    .prologue
    .line 4703
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setExpandingVelocity(F)V

    .line 4702
    return-void
.end method

.method public setExpansionCancelled(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1480
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 1481
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setGroupExpansionChanging(Z)V

    .line 1479
    :cond_0
    return-void
.end method

.method public setExtraBottomRange(II)V
    .locals 0
    .param p1, "bottom"    # I
    .param p2, "bottomQsCovered"    # I

    .prologue
    .line 4737
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExtraBottomRange:I

    .line 4738
    iput p2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExtraBottomRangeQsCovered:I

    .line 4736
    return-void
.end method

.method public setFadingOut(Z)V
    .locals 1
    .param p1, "fadingOut"    # Z

    .prologue
    .line 4611
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFadingOut:Z

    if-eq p1, v0, :cond_0

    .line 4612
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFadingOut:Z

    .line 4613
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateFadingState()V

    .line 4610
    :cond_0
    return-void
.end method

.method public setFinishScrollingCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1994
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFinishScrollingCallback:Ljava/lang/Runnable;

    .line 1993
    return-void
.end method

.method public setFlingAnimationUtils(Lcom/android/systemui/statusbar/FlingAnimationUtils;)V
    .locals 0
    .param p1, "flingAnimationUtils"    # Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 476
    return-void
.end method

.method public setFoldView(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "header"    # Landroid/view/View;
    .param p2, "footer"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 4211
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFoldHeaderView:Landroid/view/View;

    .line 4212
    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFoldFooterView:Landroid/view/View;

    .line 4213
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFoldHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    .line 4214
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFoldFooterView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    .line 4210
    return-void
.end method

.method public setFoldViewVisibility(ZZ)V
    .locals 4
    .param p1, "showFoldHeader"    # Z
    .param p2, "showFoldFooter"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 4218
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFoldHeaderView:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4219
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFoldFooterView:Landroid/view/View;

    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4217
    return-void

    :cond_0
    move v0, v2

    .line 4218
    goto :goto_0

    :cond_1
    move v1, v2

    .line 4219
    goto :goto_1
.end method

.method public setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 0
    .param p1, "groupManager"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .prologue
    .line 4341
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 4340
    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 0
    .param p1, "headsUpAnimatingAway"    # Z

    .prologue
    .line 4689
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpAnimatingAway:Z

    .line 4690
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateHeadsUpState()V

    .line 4691
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClipToOutline()V

    .line 4692
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClipping()V

    .line 4688
    return-void
.end method

.method public setHeadsUpBoundaries(II)V
    .locals 2
    .param p1, "height"    # I
    .param p2, "bottomBarHeight"    # I

    .prologue
    .line 4547
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    sub-int v1, p1, p2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setMaxHeadsUpTranslation(F)V

    .line 4548
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->setHeadsUpAppearHeightBottom(I)V

    .line 4549
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4546
    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 1
    .param p1, "headsUpManager"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .prologue
    .line 4486
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 4487
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 4485
    return-void
.end method

.method public setHideSensitive(ZZ)V
    .locals 5
    .param p1, "hideSensitive"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v4, 0x1

    .line 4002
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isHideSensitive()Z

    move-result v3

    if-eq p1, v3, :cond_2

    .line 4003
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 4004
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4005
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 4006
    .local v2, "v":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitiveForIntrinsicHeight(Z)V

    .line 4004
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4008
    .end local v2    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setHideSensitive(Z)V

    .line 4009
    if-eqz p2, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v3, :cond_1

    .line 4010
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    .line 4011
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 4013
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4001
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public setInHeadsUpPinnedMode(Z)V
    .locals 0
    .param p1, "inHeadsUpPinnedMode"    # Z

    .prologue
    .line 4684
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInHeadsUpPinnedMode:Z

    .line 4685
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClipping()V

    .line 4683
    return-void
.end method

.method public setIntrinsicPadding(I)V
    .locals 0
    .param p1, "intrinsicPadding"    # I

    .prologue
    .line 4095
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    .line 4094
    return-void
.end method

.method public setIsFullWidth(Z)V
    .locals 1
    .param p1, "isFullWidth"    # Z

    .prologue
    .line 4711
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setPanelFullWidth(Z)V

    .line 4710
    return-void
.end method

.method public setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/SwipeHelper$LongPressListener;

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V

    .line 1211
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    .line 1209
    return-void
.end method

.method public setMaxDisplayedNotifications(I)V
    .locals 1
    .param p1, "maxDisplayedNotifications"    # I

    .prologue
    .line 4672
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    if-eq v0, p1, :cond_0

    .line 4673
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    .line 4674
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 4675
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 4671
    :cond_0
    return-void
.end method

.method public setMenuPressListener(Lcom/android/systemui/SwipeHelper$MenuPressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/SwipeHelper$MenuPressListener;

    .prologue
    .line 1215
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMenuPressListener:Lcom/android/systemui/SwipeHelper$MenuPressListener;

    .line 1214
    return-void
.end method

.method public setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    .prologue
    .line 3921
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    .line 3920
    return-void
.end method

.method public setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V
    .locals 0
    .param p1, "mOnHeightChangedListener"    # Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    .prologue
    .line 3917
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    .line 3916
    return-void
.end method

.method public setOnTopPaddingUpdateListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnTopPaddingUpdateListener;)V
    .locals 0
    .param p1, "onTopPaddingUpdateListener"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnTopPaddingUpdateListener;

    .prologue
    .line 3925
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnTopPaddingUpdateListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnTopPaddingUpdateListener;

    .line 3924
    return-void
.end method

.method public setOverScrollAmount(FZZ)V
    .locals 1
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z

    .prologue
    .line 2071
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 2070
    return-void
.end method

.method public setOverScrollAmount(FZZZ)V
    .locals 6
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z
    .param p4, "cancelAnimators"    # Z

    .prologue
    .line 2084
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZZ)V

    .line 2083
    return-void
.end method

.method public setOverScrollAmount(FZZZZ)V
    .locals 1
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z
    .param p4, "cancelAnimators"    # Z
    .param p5, "isRubberbanded"    # Z

    .prologue
    .line 2099
    if-eqz p4, :cond_0

    .line 2100
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelOverScrollAnimators(Z)V

    .line 2102
    :cond_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmountInternal(FZZZ)V

    .line 2098
    return-void
.end method

.method public setOverScrolledPixels(FZZ)V
    .locals 2
    .param p1, "numPixels"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z

    .prologue
    .line 2059
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v0

    mul-float/2addr v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 2058
    return-void
.end method

.method public setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V
    .locals 0
    .param p1, "overscrollTopChangedListener"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    .prologue
    .line 2133
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    .line 2132
    return-void
.end method

.method public setOwnScrollY(I)V
    .locals 3
    .param p1, "ownScrollY"    # I

    .prologue
    .line 4645
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-eq p1, v0, :cond_0

    .line 4647
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onScrollChanged(IIII)V

    .line 4648
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 4649
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateForwardAndBackwardScrollability()V

    .line 4650
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 4644
    :cond_0
    return-void
.end method

.method public setParentNotFullyVisible(Z)V
    .locals 1
    .param p1, "parentNotFullyVisible"    # Z

    .prologue
    .line 4618
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-nez v0, :cond_0

    .line 4620
    return-void

    .line 4622
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mParentNotFullyVisible:Z

    if-eq p1, v0, :cond_1

    .line 4623
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mParentNotFullyVisible:Z

    .line 4624
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateFadingState()V

    .line 4617
    :cond_1
    return-void
.end method

.method public setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0
    .param p1, "qs"    # Lcom/android/systemui/plugins/qs/QS;

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 1218
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0
    .param p1, "qsExpanded"    # Z

    .prologue
    .line 4640
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQsExpanded:Z

    .line 4641
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    .line 4639
    return-void
.end method

.method public setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 2
    .param p1, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    .line 4557
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 4558
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$17;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$17;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindChangeRunnable(Ljava/lang/Runnable;)V

    .line 4556
    return-void
.end method

.method public setScrollingEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1509
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    .line 1508
    return-void
.end method

.method public setShadeExpanded(Z)V
    .locals 1
    .param p1, "shadeExpanded"    # Z

    .prologue
    .line 4535
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setShadeExpanded(Z)V

    .line 4536
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->setShadeExpanded(Z)V

    .line 4534
    return-void
.end method

.method public setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 2
    .param p1, "shelf"    # Lcom/android/systemui/statusbar/NotificationShelf;

    .prologue
    .line 4655
    const/4 v0, -0x1

    .line 4656
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v1, :cond_0

    .line 4657
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 4658
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 4660
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 4661
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    .line 4662
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 4663
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 4664
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {p1, v1, p0}, Lcom/android/systemui/statusbar/NotificationShelf;->bind(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 4654
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 4337
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 4336
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 1
    .param p1, "statusBarState"    # I

    .prologue
    .line 4696
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStatusBarState:I

    .line 4697
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setStatusBarState(I)V

    .line 4698
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateClipToOutline()V

    .line 4699
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidateOutline()V

    .line 4695
    return-void
.end method

.method public setTrackingHeadsUp(Z)V
    .locals 0
    .param p1, "trackingHeadsUp"    # Z

    .prologue
    .line 4553
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTrackingHeadsUp:Z

    .line 4552
    return-void
.end method

.method public setUserExpandedChild(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userExpanded"    # Z

    .prologue
    .line 1458
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 1459
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1460
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1468
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 1469
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 1470
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 1471
    return-void

    .line 1473
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    .line 1474
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onExpandedByGesture(Z)V

    .line 1457
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return-void
.end method

.method public setUserLockedChild(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userLocked"    # Z

    .prologue
    .line 1487
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 1488
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 1490
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 1491
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 1486
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 4111
    const/4 v0, 0x1

    return v0
.end method

.method public snapViewIfNeeded(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 1617
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v0

    .line 1619
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v1

    .line 1620
    .local v1, "targetLeft":F
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->snapChildIfNeeded(Landroid/view/View;ZF)V

    .line 1616
    return-void

    .line 1617
    .end local v1    # "targetLeft":F
    :cond_0
    const/4 v0, 0x1

    .local v0, "animate":Z
    goto :goto_0

    .line 1619
    .end local v0    # "animate":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "targetLeft":F
    goto :goto_1
.end method

.method public updateClipping()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1109
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRequestedClipBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInHeadsUpPinnedMode:Z

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1111
    .local v0, "clipped":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsClipped:Z

    if-eq v1, v0, :cond_1

    .line 1112
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsClipped:Z

    .line 1113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateFadingState()V

    .line 1115
    :cond_1
    if-eqz v0, :cond_4

    .line 1116
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRequestedClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 1108
    :goto_1
    return-void

    .line 1110
    .end local v0    # "clipped":Z
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHeadsUpAnimatingAway:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .restart local v0    # "clipped":Z
    goto :goto_0

    .end local v0    # "clipped":Z
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "clipped":Z
    goto :goto_0

    .line 1118
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method public updateEmptyShadeView(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 4251
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/EmptyShadeView;->willBeGone()Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v1, 0x8

    .line 4252
    .local v1, "oldVisibility":I
    :goto_0
    if-eqz p1, :cond_2

    move v0, v3

    .line 4253
    .local v0, "newVisibility":I
    :goto_1
    if-eq v1, v0, :cond_0

    .line 4254
    if-eq v0, v4, :cond_4

    .line 4255
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/EmptyShadeView;->willBeGone()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4256
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/EmptyShadeView;->cancelAnimation()V

    .line 4260
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->setVisibility(I)V

    .line 4261
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/EmptyShadeView;->setWillBeGone(Z)V

    .line 4262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 4263
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 4250
    :cond_0
    :goto_3
    return-void

    .line 4251
    .end local v0    # "newVisibility":I
    .end local v1    # "oldVisibility":I
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/EmptyShadeView;->getVisibility()I

    move-result v1

    .restart local v1    # "oldVisibility":I
    goto :goto_0

    :cond_2
    move v0, v4

    .line 4252
    goto :goto_1

    .line 4258
    .restart local v0    # "newVisibility":I
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/EmptyShadeView;->setInvisible()V

    goto :goto_2

    .line 4265
    :cond_4
    new-instance v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$15;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$15;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 4274
    .local v2, "onFinishedRunnable":Ljava/lang/Runnable;
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v4, :cond_5

    .line 4275
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/EmptyShadeView;->setWillBeGone(Z)V

    .line 4276
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v4, v3, v2}, Lcom/android/systemui/statusbar/EmptyShadeView;->performVisibilityAnimation(ZLjava/lang/Runnable;)V

    goto :goto_3

    .line 4278
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/EmptyShadeView;->setInvisible()V

    .line 4279
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_3
.end method

.method public updateSpeedBumpIndex(IZ)V
    .locals 1
    .param p1, "newIndex"    # I
    .param p2, "noAmbient"    # Z

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setSpeedBumpIndex(I)V

    .line 816
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNoAmbient:Z

    .line 814
    return-void
.end method

.method public updateTopPadding(FZZ)V
    .locals 4
    .param p1, "qsHeight"    # F
    .param p2, "animate"    # Z
    .param p3, "ignoreIntrinsicPadding"    # Z

    .prologue
    .line 2730
    float-to-int v1, p1

    .line 2731
    .local v1, "topPadding":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result v0

    .line 2732
    .local v0, "minStackHeight":I
    add-int v2, v1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 2733
    add-int v2, v1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    .line 2737
    :goto_0
    if-eqz p3, :cond_1

    .end local v1    # "topPadding":I
    :goto_1
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTopPadding(IZ)V

    .line 2739
    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedHeight:F

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setExpandedHeight(F)V

    .line 2729
    return-void

    .line 2735
    .restart local v1    # "topPadding":I
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    goto :goto_0

    .line 2737
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampPadding(I)I

    move-result v1

    goto :goto_1
.end method
