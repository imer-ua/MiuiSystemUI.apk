.class public Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.super Lcom/android/systemui/statusbar/phone/PanelView;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;
.implements Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;
.implements Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/plugins/qs/QS$HeightListener;
.implements Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnTopPaddingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final SET_DARK_AMOUNT_PROPERTY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Lcom/android/systemui/statusbar/phone/NotificationPanelView;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String;

.field private static final mDummyDirtyRect:Landroid/graphics/Rect;

.field public static sQsExpanded:Z


# instance fields
.field private final mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

.field private mAnimateNextTopPaddingChange:Z

.field private mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

.field private mAwesomeLockScreenContainer:Landroid/widget/FrameLayout;

.field private mBlockTouches:Z

.field private mChargeHelper:Lcom/android/keyguard/charge/ChargeHelper;

.field private mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

.field private mClockAnimationTarget:I

.field private mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

.field private mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

.field private mCloseHandleUnderlapSize:F

.field private mClosingWithAlphaFadeOut:Z

.field private mCollapsedOnDown:Z

.field private mConflictingQsExpansionGesture:Z

.field private mDarkAmount:F

.field private mDarkAnimator:Landroid/animation/ValueAnimator;

.field protected mDismissView:Lcom/android/systemui/statusbar/DismissView;

.field private mDismissViewAnimator:Landroid/animation/Animator;

.field private mDismissViewBottomMargin:I

.field private mDismissViewSize:I

.field private mDozing:Z

.field private mDozingOnDown:Z

.field private mEmptyDragAmount:F

.field private mExpandingFromHeadsUp:Z

.field private final mExtremePowerSaveModeChangeCallback:Lcom/android/keyguard/charge/ChargeHelper$ExtremePowerSaveModeChangeCallback;

.field private mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mFlingAfterTracking:Z

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mForceBlack:Z

.field private final mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHasWindowFocus:Z

.field private mHeadsUpAnimatingAway:Z

.field private mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

.field private mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

.field private mIndicationBottomPadding:I

.field private mInitialHeightOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mIntercepting:Z

.field private mIsExpanding:Z

.field private mIsExpansionFromHeadsUp:Z

.field private mIsFullWidth:Z

.field private mIsLaunchTransitionFinished:Z

.field private mIsLaunchTransitionRunning:Z

.field private mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

.field private mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mKeyguardLeftView:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

.field private mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

.field private mKeyguardOccluded:Z

.field private mKeyguardRightView:Landroid/view/View;

.field private mKeyguardShowing:Z

.field private mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field private mKeyguardStatusBarAnimateAlpha:F

.field private mKeyguardStatusViewAnimating:Z

.field private mKeyguardTouchDownX:F

.field private mKeyguardTouchDownY:F

.field private mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private mKeyguardWallpaperCarouselController:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

.field private mLastAnnouncementWasQuickSettings:Z

.field private mLastCameraLaunchSource:Ljava/lang/String;

.field private mLastDensityDpi:I

.field private mLastDismissViewFraction:F

.field private mLastLiveLockPath:Ljava/lang/String;

.field private mLastOrientation:I

.field private mLastOverscroll:F

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

.field private mLaunchingAffordance:Z

.field private mLeftViewBg:Landroid/view/View;

.field private mListenForHeadsUp:Z

.field private mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

.field private mLiveLockWallpaperView:Landroid/view/TextureView;

.field private mLiveReady:Z

.field private mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mMoveListViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigationBarBottomHeight:I

.field private mNoVisibleNotifications:Z

.field private mNotchCorner:Landroid/view/View;

.field protected mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field protected mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mNotificationsHeaderCollideDistance:I

.field private mOldLayoutDirection:I

.field private mOnlyAffordanceInThisMotion:Z

.field private mPanelExpanded:Z

.field private mPanelGravity:I

.field private mPanelWidth:I

.field private mPerf:Lcom/android/systemui/util/QcomBoostFramework;

.field private mPositionMinSideMargin:I

.field private mPreviousConfig:Landroid/content/res/Configuration;

.field private mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

.field private mQSCustomizerPaddingBottom:I

.field private mQSCustomizerPaddingTop:I

.field private mQSDetail:Lcom/android/systemui/qs/QSDetail;

.field private mQSDetailMarginBottom:I

.field private mQSDetailMarginTop:I

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private mQsAnimatorExpand:Z

.field private mQsExpandImmediate:Z

.field private mQsExpanded:Z

.field private mQsExpandedWhenExpandingStarted:Z

.field private mQsExpansionAnimator:Landroid/animation/ValueAnimator;

.field protected mQsExpansionEnabled:Z

.field private mQsExpansionFromOverscroll:Z

.field protected mQsExpansionHeight:F

.field private mQsFalsingThreshold:I

.field private mQsFrame:Landroid/widget/FrameLayout;

.field private mQsFullyExpanded:Z

.field protected mQsMaxExpansionHeight:I

.field protected mQsMinExpansionHeight:I

.field private mQsOverscrollExpansionEnabled:Z

.field private mQsPeekHeight:I

.field private mQsScrimEnabled:Z

.field private mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

.field private mQsTouchAboveFalsingThreshold:Z

.field private mQsTracking:Z

.field private mQsVelocityTracker:Landroid/view/VelocityTracker;

.field private mSCStatus:I

.field private mSCStatusProviderObserver:Landroid/database/ContentObserver;

.field private mScreenOn:Z

.field mSensorsChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;

.field private mShowEmptyShadeView:Z

.field private mShowIconsWhenExpanded:Z

.field private mStackScrollerOverscrolling:Z

.field private final mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mStatusBarMinHeight:I

.field protected mStatusBarState:I

.field private mSwitchSystemUser:Landroid/view/View;

.field private mThemeBackgroundView:Landroid/view/View;

.field private mTopPaddingAdjustment:I

.field private mTopPaddingWhenQsBeingCovered:I

.field private mTouchAtKeyguardBottomArea:Z

.field private mTouchSlop:I

.field private mTrackingPointer:I

.field private mTwoFingerQsExpandPossible:Z

.field private mUnlockMoveDistance:I

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mWallpaperChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;

.field private mWallpaperType:I

.field private mWallpaperView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreenContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mForceBlack:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/keyguard/MiuiKeyguardClock;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardOccluded:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardRightView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/util/QcomBoostFramework;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPerf:Lcom/android/systemui/util/QcomBoostFramework;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/keyguard/charge/ChargeHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mChargeHelper:Lcom/android/keyguard/charge/ChargeHelper;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSCStatus:I

    return v0
.end method

.method static synthetic -get22(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSCStatusProviderObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    return v0
.end method

.method static synthetic -get24(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSwitchSystemUser:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAmount:F

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    return v0
.end method

.method static synthetic -get8()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDummyDirtyRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    return-object v0
.end method

.method static synthetic -set10(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveReady:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/plugins/qs/QS;)Lcom/android/systemui/plugins/qs/QS;
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBrightnessHeight(I)V

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSCStatus:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAwesomeLockScreenPause()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDarkAmount(F)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)V
    .locals 0
    .param p1, "overscrolling"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setOverScrolling(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startLiveLockWallpaper()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateDismissViewState()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguardAlpha()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)V
    .locals 0
    .param p1, "wallpaperChanged"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateWallpaper(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 135
    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    .line 136
    sget-boolean v0, Lcom/android/systemui/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->DEBUG:Z

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDummyDirtyRect:Landroid/graphics/Rect;

    .line 177
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;

    const-string/jumbo v1, "mDarkAmount"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;-><init>(Ljava/lang/String;)V

    .line 176
    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->SET_DARK_AMOUNT_PROPERTY:Landroid/util/FloatProperty;

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 355
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 173
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperType:I

    .line 174
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastLiveLockPath:Ljava/lang/String;

    .line 207
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMaskPaint:Landroid/graphics/Paint;

    .line 213
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchAtKeyguardBottomArea:Z

    .line 250
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    .line 264
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I

    .line 267
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;-><init>()V

    .line 266
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    .line 269
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;-><init>()V

    .line 268
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .line 291
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    .line 296
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F

    .line 305
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    .line 306
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastDensityDpi:I

    .line 314
    const-string/jumbo v2, "lockscreen_affordance"

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 316
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    .line 328
    new-instance v2, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 329
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNoVisibleNotifications:Z

    .line 340
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoveListViews:Ljava/util/List;

    .line 343
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPerf:Lcom/android/systemui/util/QcomBoostFramework;

    .line 345
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSCStatus:I

    .line 373
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 372
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;

    .line 418
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 417
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtremePowerSaveModeChangeCallback:Lcom/android/keyguard/charge/ChargeHelper$ExtremePowerSaveModeChangeCallback;

    .line 513
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveReady:Z

    .line 1583
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1592
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    .line 1599
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1628
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 1627
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1646
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1857
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastDismissViewFraction:F

    .line 1858
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewAnimator:Landroid/animation/Animator;

    .line 3171
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    .line 3355
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSensorsChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;

    .line 3366
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSCStatusProviderObserver:Landroid/database/ContentObserver;

    .line 3402
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 356
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->DEBUG:Z

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setWillNotDraw(Z)V

    .line 357
    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 358
    invoke-static {p1}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    .line 359
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 360
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 361
    const v1, 0x90d002c

    .line 360
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsOverscrollExpansionEnabled:Z

    .line 362
    new-instance v0, Lcom/android/systemui/util/QcomBoostFramework;

    invoke-direct {v0}, Lcom/android/systemui/util/QcomBoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPerf:Lcom/android/systemui/util/QcomBoostFramework;

    .line 363
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchSlop:I

    .line 364
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPreviousConfig:Landroid/content/res/Configuration;

    .line 365
    invoke-static {p1}, Lcom/android/keyguard/charge/ChargeHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/charge/ChargeHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mChargeHelper:Lcom/android/keyguard/charge/ChargeHelper;

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mChargeHelper:Lcom/android/keyguard/charge/ChargeHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtremePowerSaveModeChangeCallback:Lcom/android/keyguard/charge/ChargeHelper$ExtremePowerSaveModeChangeCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/charge/ChargeHelper;->registerWallpaperChangeCallback(Lcom/android/keyguard/charge/ChargeHelper$ExtremePowerSaveModeChangeCallback;)V

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 369
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->loadDimens(Landroid/content/res/Resources;)V

    .line 354
    return-void

    :cond_0
    move v0, v1

    .line 356
    goto :goto_0
.end method

.method private addAwesomeLockScreenIfNeed()V
    .locals 1

    .prologue
    .line 1760
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addAwesomeLockScreenIfNeed(Z)V

    .line 1759
    return-void
.end method

.method private addAwesomeLockScreenIfNeed(Z)V
    .locals 4
    .param p1, "force"    # Z

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDefaultTheme:Z

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 1765
    :cond_1
    new-instance v0, Lcom/android/keyguard/AwesomeLockScreen;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/keyguard/AwesomeLockScreen;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/PanelBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    .line 1766
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1767
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreenContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1769
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    if-eqz v0, :cond_3

    .line 1770
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreenContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1763
    :cond_3
    return-void
.end method

.method private animateKeyguardStatusBarIn(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 1637
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 1638
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    .line 1639
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1640
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1641
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1642
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1643
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1636
    return-void

    .line 1639
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateKeyguardStatusBarOut()V
    .locals 6

    .prologue
    .line 1609
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1610
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1611
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardFadingAway()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1612
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    .line 1611
    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1614
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardFadingAway()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1615
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    .line 1614
    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1617
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1618
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$24;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1624
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1608
    return-void

    .line 1613
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 1616
    :cond_1
    const-wide/16 v2, 0x168

    goto :goto_1
.end method

.method private calculatePanelHeightQsExpanded()I
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 2197
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContentHeight()I

    move-result v4

    .line 2198
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPadding()I

    move-result v6

    .line 2197
    sub-int/2addr v4, v6

    int-to-float v2, v4

    .line 2206
    .local v2, "notificationHeight":F
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 2207
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowEmptyShadeView:Z

    .line 2206
    if-eqz v4, :cond_0

    .line 2208
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyShadeViewHeight()I

    move-result v4

    int-to-float v2, v4

    .line 2210
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 2213
    .local v1, "maxQsHeight":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1

    .line 2214
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2217
    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    .line 2218
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    sub-int/2addr v4, v5

    .line 2216
    :goto_0
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    .line 2220
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPaddingOverflow()F

    move-result v5

    .line 2216
    add-float v3, v4, v5

    .line 2221
    .local v3, "totalHeight":F
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    .line 2223
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result v4

    .line 2222
    add-int/2addr v4, v1

    int-to-float v0, v4

    .line 2224
    .local v0, "fullyCollapsedHeight":F
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 2226
    .end local v0    # "fullyCollapsedHeight":F
    :cond_2
    float-to-int v4, v3

    return v4

    .end local v3    # "totalHeight":F
    :cond_3
    move v4, v5

    .line 2219
    goto :goto_0
.end method

.method private calculatePanelHeightShade()I
    .locals 4

    .prologue
    .line 2188
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v0

    .line 2189
    .local v0, "emptyBottomMargin":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    .line 2190
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    .line 2189
    sub-int v1, v2, v3

    .line 2191
    .local v1, "maxHeight":I
    int-to-float v2, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPaddingOverflow()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 2192
    return v1
.end method

.method private calculateQsTopPadding()F
    .locals 6

    .prologue
    .line 1915
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_2

    .line 1916
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    .line 1915
    if-eqz v3, :cond_2

    .line 1922
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 1923
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingAdjustment:I

    .line 1922
    sub-int v1, v3, v4

    .line 1924
    .local v1, "maxNotifications":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getTempQsMaxExpansion()I

    move-result v2

    .line 1925
    .local v2, "maxQs":I
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1926
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1928
    .local v0, "max":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v3

    .line 1929
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v4, v4

    int-to-float v5, v0

    .line 1928
    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->interpolate(FFF)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    return v3

    .line 1927
    .end local v0    # "max":I
    :cond_1
    move v0, v2

    .restart local v0    # "max":I
    goto :goto_0

    .line 1930
    .end local v0    # "max":I
    .end local v1    # "maxNotifications":I
    .end local v2    # "maxQs":I
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_3

    .line 1931
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    return v3

    .line 1932
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_4

    .line 1935
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v3

    .line 1936
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result v4

    int-to-float v4, v4

    .line 1937
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v5, v5

    .line 1935
    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->interpolate(FFF)F

    move-result v3

    return v3

    .line 1938
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsCovered()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1939
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QS;->getQsHeaderHeight()I

    move-result v3

    int-to-float v3, v3

    return v3

    .line 1940
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsBeingCovered()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1941
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingWhenQsBeingCovered:I

    int-to-float v3, v3

    return v3

    .line 1943
    :cond_6
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    return v3
.end method

.method private cancelQsAnimation()V
    .locals 1

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1978
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1976
    :cond_0
    return-void
.end method

.method private createDismissViewAnimator(Z)Landroid/animation/Animator;
    .locals 11
    .param p1, "collapse"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 1874
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    .line 1875
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DismissView;->getAlpha()F

    move-result v3

    aput v3, v7, v4

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    aput v3, v7, v9

    .line 1874
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1876
    .local v0, "alphaAnim":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    .line 1877
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DismissView;->getTranslationY()F

    move-result v3

    aput v3, v7, v4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v3

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/DismissView;->getTop()I

    move-result v8

    sub-int/2addr v3, v8

    :goto_1
    int-to-float v3, v3

    aput v3, v7, v9

    .line 1876
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1878
    .local v2, "transAnim":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1879
    .local v1, "ret":Landroid/animation/AnimatorSet;
    if-eqz p1, :cond_2

    const/16 v3, 0x96

    :goto_2
    int-to-long v6, v3

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1880
    if-eqz p1, :cond_3

    sget-object v3, Lcom/android/systemui/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    :goto_3
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1881
    new-array v3, v10, [Landroid/animation/Animator;

    aput-object v0, v3, v4

    aput-object v2, v3, v9

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1882
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1889
    return-object v1

    .line 1875
    .end local v0    # "alphaAnim":Landroid/animation/ObjectAnimator;
    .end local v1    # "ret":Landroid/animation/AnimatorSet;
    .end local v2    # "transAnim":Landroid/animation/ObjectAnimator;
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    .restart local v0    # "alphaAnim":Landroid/animation/ObjectAnimator;
    :cond_1
    move v3, v4

    .line 1877
    goto :goto_1

    .line 1879
    .restart local v1    # "ret":Landroid/animation/AnimatorSet;
    .restart local v2    # "transAnim":Landroid/animation/ObjectAnimator;
    :cond_2
    const/16 v3, 0x12c

    goto :goto_2

    .line 1880
    :cond_3
    sget-object v3, Lcom/android/systemui/Interpolators;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    goto :goto_3
.end method

.method private flingExpandsQs(F)Z
    .locals 4
    .param p1, "vel"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1173
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFalseTouch()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1174
    return v1

    .line 1176
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 1177
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1179
    :cond_2
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private flingQsWithCurrentVelocity(FZ)V
    .locals 3
    .param p1, "y"    # F
    .param p2, "isCancelMotionEvent"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1154
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCurrentQSVelocity()F

    move-result v1

    .line 1155
    .local v1, "vel":F
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingExpandsQs(F)Z

    move-result v0

    .line 1156
    .local v0, "expandsQs":Z
    if-eqz v0, :cond_0

    .line 1157
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->logQsSwipeDown(F)V

    .line 1159
    :cond_0
    if-eqz v0, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZ)V

    .line 1153
    return-void

    .line 1159
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getAppearFraction()F
    .locals 3

    .prologue
    .line 2281
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearFraction(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2282
    const/4 v1, 0x0

    .line 2280
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private getCurrentQSVelocity()F
    .locals 2

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1970
    const/4 v0, 0x0

    return v0

    .line 1972
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1973
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    return v0
.end method

.method private getFadeoutAlpha()F
    .locals 6

    .prologue
    .line 2240
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstItemMinHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 2241
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v2, v2

    .line 2240
    div-float v0, v1, v2

    .line 2242
    .local v0, "alpha":F
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2243
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 2244
    return v0
.end method

.method private getFalsingThreshold()I
    .locals 2

    .prologue
    .line 1412
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 1413
    .local v0, "factor":F
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1

    .line 1412
    .end local v0    # "factor":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "factor":F
    goto :goto_0
.end method

.method private getKeyguardContentsAlpha()F
    .locals 6

    .prologue
    .line 2291
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2295
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v1

    .line 2297
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationsHeaderCollideDistance:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 2295
    div-float v0, v1, v2

    .line 2304
    .local v0, "alpha":F
    :goto_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 2305
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 2306
    return v0

    .line 2302
    .end local v0    # "alpha":F
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .restart local v0    # "alpha":F
    goto :goto_0
.end method

.method private getKeyguardOrLockScreenString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1906
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x91002d6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1907
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1908
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x91000eb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1910
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x91000e9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotificationsTopY()F
    .locals 1

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2330
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v0

    return v0

    .line 2332
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotificationsTopY()F

    move-result v0

    return v0
.end method

.method private getTempQsMaxExpansion()I
    .locals 1

    .prologue
    .line 2184
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    return v0
.end method

.method private handleQsDown(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 1310
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    .line 1309
    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onQsDown()V

    .line 1312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1313
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1314
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1319
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyExpandingFinished()V

    .line 1308
    :cond_0
    return-void
.end method

.method private handleQsTouch(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1250
    .local v0, "action":I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 1251
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v1

    if-eq v1, v3, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v1, :cond_2

    .line 1261
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1262
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->handleQsDown(Landroid/view/MotionEvent;)V

    .line 1264
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v1, :cond_3

    .line 1265
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsTouch(Landroid/view/MotionEvent;)V

    .line 1266
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-nez v1, :cond_3

    .line 1267
    return v3

    .line 1252
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    .line 1250
    if-eqz v1, :cond_0

    .line 1252
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsCovered()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1254
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1255
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    .line 1256
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1257
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    goto :goto_0

    .line 1270
    :cond_3
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    if-ne v0, v3, :cond_5

    .line 1271
    :cond_4
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    .line 1273
    :cond_5
    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1274
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    .line 1273
    if-eqz v1, :cond_6

    .line 1275
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    .line 1277
    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    if-eqz v1, :cond_7

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isOpenQsEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    .line 1279
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "panel_open_qs"

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1280
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 1281
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 1285
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    .line 1287
    :cond_7
    return v4
.end method

.method private initDownStates(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 1144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_1

    .line 1145
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    .line 1146
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    .line 1147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isDozing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozingOnDown:Z

    .line 1148
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCollapsedOnDown:Z

    .line 1149
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCollapsedOnDown:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mListenForHeadsUp:Z

    .line 1143
    :cond_1
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1963
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1965
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    .line 1961
    return-void
.end method

.method private static interpolate(FFF)F
    .locals 2
    .param p0, "t"    # F
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 2771
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    mul-float/2addr v0, p1

    mul-float v1, p0, p2

    add-float/2addr v0, v1

    return v0
.end method

.method public static isDefaultLockScreenTheme()Z
    .locals 2

    .prologue
    .line 1560
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    const-string/jumbo v1, "manifest.xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeResourcesSystem;->containsAwesomeLockscreenEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFalseTouch()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1184
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->needsAntiFalsing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1185
    return v0

    .line 1187
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->isClassiferEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->isFalseTouch()Z

    move-result v0

    return v0

    .line 1190
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    if-eqz v1, :cond_2

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isForegroundApp(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3156
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/app/ActivityManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3157
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 3158
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_0
    return v2
.end method

.method private isInQsArea(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2070
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isXWithinQsFrame(F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2071
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottomMostNotificationBottom()F

    move-result v2

    cmpg-float v2, p2, v2

    if-lez v2, :cond_0

    .line 2072
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_1

    .line 2070
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2072
    goto :goto_0

    :cond_2
    move v0, v1

    .line 2070
    goto :goto_0
.end method

.method private isInQuickQsArea(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2059
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v2, :cond_2

    .line 2060
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isXWithinQsFrame(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2061
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_1

    .line 2062
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    .line 2060
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2062
    goto :goto_0

    :cond_1
    move v0, v1

    .line 2060
    goto :goto_0

    .line 2064
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isXWithinQsFrame(F)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2065
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_4

    .line 2066
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_3

    .line 2064
    :goto_1
    return v0

    :cond_3
    move v0, v1

    .line 2066
    goto :goto_1

    :cond_4
    move v0, v1

    .line 2064
    goto :goto_1
.end method

.method private isOnKeyguard()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3043
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOpenQsEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x2

    .line 1291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 1292
    .local v2, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1294
    .local v0, "action":I
    const/4 v5, 0x5

    if-ne v0, v5, :cond_1

    .line 1295
    if-ne v2, v6, :cond_0

    const/4 v4, 0x1

    .line 1297
    .local v4, "twoFingerDrag":Z
    :goto_0
    if-nez v0, :cond_3

    .line 1298
    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1299
    const/16 v5, 0x40

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v3

    .line 1301
    :goto_1
    if-nez v0, :cond_5

    .line 1302
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1303
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v1

    .line 1305
    :goto_2
    if-nez v4, :cond_6

    if-nez v3, :cond_6

    :goto_3
    return v1

    .line 1295
    .end local v4    # "twoFingerDrag":Z
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "twoFingerDrag":Z
    goto :goto_0

    .line 1294
    .end local v4    # "twoFingerDrag":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "twoFingerDrag":Z
    goto :goto_0

    .line 1298
    :cond_2
    const/4 v3, 0x1

    .local v3, "stylusButtonClickDrag":Z
    goto :goto_1

    .line 1297
    .end local v3    # "stylusButtonClickDrag":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "stylusButtonClickDrag":Z
    goto :goto_1

    .line 1302
    .end local v3    # "stylusButtonClickDrag":Z
    :cond_4
    const/4 v1, 0x1

    .local v1, "mouseButtonClickDrag":Z
    goto :goto_2

    .line 1301
    .end local v1    # "mouseButtonClickDrag":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "mouseButtonClickDrag":Z
    goto :goto_2

    .line 1305
    .end local v1    # "mouseButtonClickDrag":Z
    :cond_6
    const/4 v1, 0x1

    goto :goto_3
.end method

.method private isXWithinQsFrame(F)Z
    .locals 3
    .param p1, "x"    # F

    .prologue
    const/4 v0, 0x0

    .line 2076
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 2077
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    .line 2076
    :cond_0
    return v0
.end method

.method private logQsSwipeDown(F)V
    .locals 6
    .param p1, "y"    # F

    .prologue
    .line 1163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCurrentQSVelocity()F

    move-result v1

    .line 1164
    .local v1, "vel":F
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1165
    const/16 v0, 0xc1

    .line 1167
    .local v0, "gesture":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1168
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v4, p1, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 1169
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result v5

    div-float v5, v1, v5

    float-to-int v5, v5

    .line 1167
    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(Landroid/content/Context;III)V

    .line 1162
    return-void

    .line 1166
    .end local v0    # "gesture":I
    :cond_0
    const/16 v0, 0xc2

    .restart local v0    # "gesture":I
    goto :goto_0
.end method

.method private onAwesomeLockScreenPause()V
    .locals 1

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    if-eqz v0, :cond_0

    .line 1782
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    invoke-virtual {v0}, Lcom/android/keyguard/AwesomeLockScreen;->onPause()V

    .line 1780
    :cond_0
    return-void
.end method

.method private onAwesomeLockScreenResume()V
    .locals 2

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    if-eqz v0, :cond_0

    .line 1776
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/AwesomeLockScreen;->onResume(Z)V

    .line 1774
    :cond_0
    return-void
.end method

.method private onQsExpansionStarted()V
    .locals 1

    .prologue
    .line 1473
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted(I)V

    .line 1472
    return-void
.end method

.method private onQsIntercept(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 1055
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1056
    .local v2, "pointerIndex":I
    if-gez v2, :cond_0

    .line 1057
    const/4 v2, 0x0

    .line 1058
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1060
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1061
    .local v4, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 1063
    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1128
    :cond_1
    :goto_0
    :pswitch_0
    return v6

    .line 1065
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 1066
    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1067
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1068
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initVelocityTracker()V

    .line 1069
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1070
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1071
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1073
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_1

    .line 1074
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1075
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1076
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1077
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 1078
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    goto :goto_0

    .line 1082
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 1083
    .local v3, "upPointer":I
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    if-ne v7, v3, :cond_1

    .line 1085
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    if-eq v7, v3, :cond_3

    move v1, v6

    .line 1086
    .local v1, "newIndex":I
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1087
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1088
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    goto :goto_0

    .line 1093
    .end local v1    # "newIndex":I
    .end local v3    # "upPointer":I
    :pswitch_3
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v0, v5, v7

    .line 1094
    .local v0, "h":F
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1095
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v7, :cond_4

    .line 1099
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    add-float/2addr v7, v0

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1100
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1101
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 1102
    return v1

    .line 1104
    :cond_4
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    sub-float v8, v4, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    .line 1105
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-direct {p0, v7, v8, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v7

    .line 1104
    if-eqz v7, :cond_1

    .line 1106
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyExpandingFinished()V

    .line 1109
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1110
    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1111
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1112
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 1113
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 1114
    return v1

    .line 1119
    .end local v0    # "h":F
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1120
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v7, :cond_5

    .line 1122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    .line 1121
    :goto_1
    invoke-direct {p0, v5, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingQsWithCurrentVelocity(FZ)V

    .line 1123
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1125
    :cond_5
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    goto/16 :goto_0

    :cond_6
    move v1, v6

    .line 1122
    goto :goto_1

    .line 1063
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onQsTouch(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 1349
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 1350
    .local v5, "pointerIndex":I
    if-gez v5, :cond_0

    .line 1351
    const/4 v5, 0x0

    .line 1352
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1354
    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 1355
    .local v8, "y":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 1356
    .local v7, "x":F
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v1, v8, v10

    .line 1358
    .local v1, "h":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 1348
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 1360
    :pswitch_1
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1361
    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1362
    iput v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1363
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1364
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1365
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initVelocityTracker()V

    .line 1366
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1370
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 1371
    .local v6, "upPointer":I
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    if-ne v10, v6, :cond_1

    .line 1373
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    if-eq v10, v6, :cond_2

    .line 1374
    .local v2, "newIndex":I
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1375
    .local v4, "newY":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1376
    .local v3, "newX":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1377
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1378
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1379
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    goto :goto_0

    .end local v2    # "newIndex":I
    .end local v3    # "newX":F
    .end local v4    # "newY":F
    :cond_2
    move v2, v9

    .line 1373
    goto :goto_1

    .line 1384
    .end local v6    # "upPointer":I
    :pswitch_3
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    add-float/2addr v10, v1

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1385
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getFalsingThreshold()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v10, v1, v10

    if-ltz v10, :cond_3

    .line 1386
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    .line 1388
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1393
    :pswitch_4
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1394
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1395
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1396
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    .line 1397
    .local v0, "fraction":F
    const/4 v10, 0x0

    cmpl-float v10, v0, v10

    if-nez v10, :cond_4

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    cmpl-float v10, v8, v10

    if-ltz v10, :cond_6

    .line 1399
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    .line 1398
    :goto_2
    invoke-direct {p0, v8, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingQsWithCurrentVelocity(FZ)V

    .line 1403
    :goto_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_1

    .line 1404
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 1405
    iput-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    :cond_5
    move v9, v2

    .line 1399
    goto :goto_2

    .line 1401
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->refreshNotificationStackScrollerVisible()V

    goto :goto_3

    .line 1358
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private positionClockAndNotifications()V
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 808
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isAddOrRemoveAnimationPending()Z

    move-result v11

    .line 810
    .local v11, "animate":Z
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    .line 811
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsCovered()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsBeingCovered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_1

    const/4 v12, 0x0

    .line 816
    .local v12, "stackScrollerPadding":I
    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    .line 833
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIntrinsicPadding(I)V

    .line 834
    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 807
    return-void

    .line 812
    .end local v12    # "stackScrollerPadding":I
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getQsHeaderHeight()I

    move-result v12

    .restart local v12    # "stackScrollerPadding":I
    goto :goto_0

    .line 814
    .end local v12    # "stackScrollerPadding":I
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v0

    :goto_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int v12, v0, v2

    .restart local v12    # "stackScrollerPadding":I
    goto :goto_0

    .end local v12    # "stackScrollerPadding":I
    :cond_3
    move v0, v1

    goto :goto_2

    .line 818
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    .line 819
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getMaxKeyguardNotifications()I

    move-result v1

    .line 820
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v2

    .line 821
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v3

    .line 822
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v4

    .line 823
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v5

    .line 824
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v6}, Lcom/android/keyguard/MiuiKeyguardClock;->getHeight()I

    move-result v6

    .line 825
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmptyDragAmount:F

    .line 826
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v8}, Lcom/android/keyguard/MiuiKeyguardClock;->getClockBottom()I

    move-result v8

    .line 827
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAmount:F

    .line 828
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v10}, Lcom/android/keyguard/MiuiKeyguardClock;->getVisibleViewsHeight()F

    move-result v10

    .line 818
    invoke-virtual/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->setup(IIFIIIFIFF)V

    .line 829
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V

    .line 830
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v12, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 831
    .restart local v12    # "stackScrollerPadding":I
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingAdjustment:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    goto :goto_1
.end method

.method private reInflateKeyguardMoveLeftView()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2513
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardLeftView:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2514
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardLeftView:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeView(Landroid/view/View;)V

    .line 2515
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2516
    const v3, 0x9040074

    const/4 v4, 0x0

    .line 2515
    invoke-virtual {v1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardLeftView:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    .line 2517
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardLeftView:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addView(Landroid/view/View;I)V

    .line 2518
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardLeftView:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 2519
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardLeftView:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->setVisibility(I)V

    .line 2512
    return-void

    .line 2520
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private reInflateThemeBackgroundView()V
    .locals 5

    .prologue
    .line 2504
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mThemeBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2505
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mThemeBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeView(Landroid/view/View;)V

    .line 2506
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2507
    const v2, 0x9040095

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2506
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mThemeBackgroundView:Landroid/view/View;

    .line 2508
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mThemeBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addView(Landroid/view/View;I)V

    .line 2509
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateThemeBackgroundVisibility(I)V

    .line 2503
    return-void
.end method

.method private refreshNotificationStackScrollerVisible()V
    .locals 3

    .prologue
    .line 1708
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDefaultTheme:Z

    if-eqz v0, :cond_1

    .line 1709
    :cond_0
    const/4 v0, 0x0

    .line 1708
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setVisibility(I)V

    .line 1707
    return-void

    .line 1708
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-nez v0, :cond_0

    .line 1709
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private releaseLiveWallpaper()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 516
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperView:Landroid/view/TextureView;

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperView:Landroid/view/TextureView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeView(Landroid/view/View;)V

    .line 518
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperView:Landroid/view/TextureView;

    .line 520
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 521
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

    .line 522
    .local v0, "wallPaperPlayer":Landroid/media/MediaPlayer;
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

    .line 523
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/media/MediaPlayer;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 531
    .end local v0    # "wallPaperPlayer":Landroid/media/MediaPlayer;
    :cond_1
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastLiveLockPath:Ljava/lang/String;

    .line 515
    return-void
.end method

.method private removeAwesomeLockScreen()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1787
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    if-eqz v0, :cond_0

    .line 1788
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    invoke-virtual {v0}, Lcom/android/keyguard/AwesomeLockScreen;->onPause()V

    .line 1789
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1790
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    .line 1791
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreenContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1786
    :cond_0
    return-void
.end method

.method private resetVerticalPanelPosition()V
    .locals 1

    .prologue
    .line 3006
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setVerticalPanelTranslation(F)V

    .line 3005
    return-void
.end method

.method private saveValueToTunerService(I)V
    .locals 1
    .param p1, "qqs_count"    # I

    .prologue
    .line 2495
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$30;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$30;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 2494
    return-void
.end method

.method private setCameraImage()V
    .locals 3

    .prologue
    .line 1564
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 1580
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 1564
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1563
    return-void
.end method

.method private setClosingWithAlphaFadeout(Z)V
    .locals 1
    .param p1, "closing"    # Z

    .prologue
    .line 3001
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClosingWithAlphaFadeOut:Z

    .line 3002
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->forceNoOverlappingRendering(Z)V

    .line 3000
    return-void
.end method

.method private setDarkAmount(F)V
    .locals 2
    .param p1, "amount"    # F

    .prologue
    .line 3255
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAmount:F

    .line 3256
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/keyguard/MiuiKeyguardClock;->setDark(Z)V

    .line 3257
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 3254
    return-void

    .line 3256
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setIsFullWidth(Z)V
    .locals 1
    .param p1, "isFullWidth"    # Z

    .prologue
    .line 773
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullWidth:Z

    .line 774
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsFullWidth(Z)V

    .line 772
    return-void
.end method

.method private setKeyguardBottomAreaVisibility(IZ)V
    .locals 6
    .param p1, "statusBarState"    # I
    .param p2, "goingToFullShade"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1655
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1656
    if-eqz p2, :cond_0

    .line 1657
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1658
    const/4 v1, 0x0

    .line 1657
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1659
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    .line 1657
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1660
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    .line 1657
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1661
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 1657
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1662
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1657
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1654
    :goto_0
    return-void

    .line 1664
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 1665
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1666
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDefaultTheme:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    .line 1667
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAlpha(F)V

    goto :goto_0

    .line 1666
    :cond_2
    const/4 v0, 0x4

    goto :goto_1

    .line 1669
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    .line 1670
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAlpha(F)V

    goto :goto_0
.end method

.method private setKeyguardOtherViewVisibility(I)V
    .locals 6
    .param p1, "statusBarState"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1675
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    .line 1676
    .local v0, "keyguardShowing":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperView:Landroid/view/View;

    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDefaultTheme:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1677
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateThemeBackgroundVisibility(I)V

    .line 1678
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperView:Landroid/view/TextureView;

    if-eqz v1, :cond_0

    .line 1679
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperView:Landroid/view/TextureView;

    if-eqz v0, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1680
    if-nez v0, :cond_0

    .line 1681
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1684
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardLeftView:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    if-eqz v0, :cond_5

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->setVisibility(I)V

    .line 1685
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardRightView:Landroid/view/View;

    if-eqz v0, :cond_1

    move v3, v2

    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1686
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSwitchSystemUser:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldShowSwitchSystemUser()Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1687
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->refreshNotificationStackScrollerVisible()V

    .line 1674
    return-void

    .line 1675
    .end local v0    # "keyguardShowing":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "keyguardShowing":Z
    goto :goto_0

    :cond_3
    move v1, v3

    .line 1676
    goto :goto_1

    :cond_4
    move v1, v3

    .line 1679
    goto :goto_2

    :cond_5
    move v1, v3

    .line 1684
    goto :goto_3

    .line 1686
    :cond_6
    const/16 v2, 0x8

    goto :goto_4
.end method

.method private setKeyguardStatusViewVisibility(IZZ)V
    .locals 7
    .param p1, "statusBarState"    # I
    .param p2, "keyguardFadingAway"    # Z
    .param p3, "goingToFullShade"    # Z

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 1714
    if-nez p2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v2, v4, :cond_2

    .line 1715
    if-eq p1, v4, :cond_2

    .line 1716
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardClock;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1717
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 1718
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardClock;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1720
    const-wide/16 v2, 0x0

    .line 1718
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1721
    const-wide/16 v2, 0xa0

    .line 1718
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1722
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 1718
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1723
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1718
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 1724
    if-eqz p2, :cond_1

    .line 1725
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardClock;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1726
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    .line 1725
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1727
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    .line 1725
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1713
    :cond_1
    :goto_0
    return-void

    .line 1714
    :cond_2
    if-nez p3, :cond_0

    .line 1730
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1731
    if-ne p1, v4, :cond_4

    .line 1732
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v2}, Lcom/android/keyguard/MiuiKeyguardClock;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1733
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDefaultTheme:Z

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/keyguard/MiuiKeyguardClock;->setVisibility(I)V

    .line 1734
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addAwesomeLockScreenIfNeed()V

    .line 1735
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 1736
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v0, v6}, Lcom/android/keyguard/MiuiKeyguardClock;->setAlpha(F)V

    .line 1737
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardClock;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1739
    const-wide/16 v2, 0x0

    .line 1737
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1740
    const-wide/16 v2, 0x140

    .line 1737
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1741
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 1737
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1742
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    .line 1737
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1733
    goto :goto_1

    .line 1743
    :cond_4
    if-ne p1, v4, :cond_6

    .line 1744
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v2}, Lcom/android/keyguard/MiuiKeyguardClock;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1745
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 1746
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDefaultTheme:Z

    if-eqz v3, :cond_5

    :goto_2
    invoke-virtual {v2, v0}, Lcom/android/keyguard/MiuiKeyguardClock;->setVisibility(I)V

    .line 1747
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addAwesomeLockScreenIfNeed()V

    .line 1748
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/MiuiKeyguardClock;->setAlpha(F)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1746
    goto :goto_2

    .line 1750
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v2}, Lcom/android/keyguard/MiuiKeyguardClock;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1751
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 1752
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardWallpaperCarouselController:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->reset()V

    .line 1753
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/MiuiKeyguardClock;->setVisibility(I)V

    .line 1754
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/MiuiKeyguardClock;->setAlpha(F)V

    .line 1755
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeAwesomeLockScreen()V

    goto/16 :goto_0
.end method

.method private setLaunchingAffordance(Z)V
    .locals 1
    .param p1, "launchingAffordance"    # Z

    .prologue
    .line 3132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setLaunchingAffordance(Z)V

    .line 3133
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setLaunchingAffordance(Z)V

    .line 3131
    return-void
.end method

.method private setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 2387
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    .line 2388
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/qs/QS;->setListening(Z)V

    .line 2386
    :cond_0
    return-void
.end method

.method private setOverScrolling(Z)V
    .locals 1
    .param p1, "overscrolling"    # Z

    .prologue
    .line 1467
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    .line 1468
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_0

    return-void

    .line 1469
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/qs/QS;->setOverscrolling(Z)V

    .line 1466
    return-void
.end method

.method private setQsExpanded(Z)V
    .locals 2
    .param p1, "expanded"    # Z

    .prologue
    .line 1488
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    .line 1489
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1490
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    .line 1491
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->sQsExpanded:Z

    .line 1492
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 1493
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 1494
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/classifier/FalsingManager;->setQsExpanded(Z)V

    .line 1495
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setQsExpanded(Z)V

    .line 1496
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setQsExpanded(Z)V

    .line 1498
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1499
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateGxzwState()V

    .line 1501
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardWallpaperCarouselController:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->isSwitchAnimating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1502
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardWallpaperCarouselController:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->reset()V

    .line 1487
    :cond_1
    return-void

    .line 1488
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setQsExpansion(F)V
    .locals 7
    .param p1, "height"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1809
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setQsExpansion height="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1811
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    if-eqz v0, :cond_a

    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    .line 1813
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_b

    .line 1815
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_2

    .line 1816
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpanded(Z)V

    .line 1817
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTracking:Z

    if-eqz v0, :cond_c

    .line 1822
    :cond_2
    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 1823
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsExpansion()V

    .line 1824
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateDismissViewState()V

    .line 1825
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 1826
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_3

    .line 1827
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguardAlpha()V

    .line 1829
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    .line 1830
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v0, v4, :cond_6

    .line 1833
    :cond_4
    cmpg-float v0, p1, v6

    if-gtz v0, :cond_d

    .line 1834
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    .line 1838
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateKeyguardBottomAreaAlpha()V

    .line 1843
    :cond_6
    cmpl-float v0, p1, v6

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    if-eqz v0, :cond_e

    .line 1848
    :cond_7
    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->shouldEnforceBouncer()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1849
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object v2, v1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    .line 1852
    :cond_8
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 1853
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->invalidate()V

    .line 1808
    :cond_9
    return-void

    :cond_a
    move v0, v3

    .line 1811
    goto :goto_0

    .line 1813
    :cond_b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v0, :cond_1

    .line 1814
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpanded(Z)V

    goto :goto_1

    .line 1817
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1818
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardOrLockScreenString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1819
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    goto :goto_1

    .line 1835
    :cond_d
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_5

    .line 1836
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    goto :goto_2

    .line 1844
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1845
    const v2, 0x91000ea

    .line 1844
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1846
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    goto :goto_3
.end method

.method private shouldQuickSettingsIntercept(FFF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "yDiff"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2044
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCollapsedOnDown:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsCovered()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2045
    :cond_0
    return v2

    .line 2047
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isXWithinQsFrame(F)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2048
    return v1

    .line 2050
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInQuickQsArea(FF)Z

    move-result v0

    .line 2051
    .local v0, "onQuickQs":Z
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v3, :cond_5

    .line 2052
    if-nez v0, :cond_3

    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gez v1, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInQsArea(FF)Z

    move-result v1

    :cond_3
    :goto_0
    return v1

    :cond_4
    move v1, v2

    goto :goto_0

    .line 2054
    :cond_5
    return v0
.end method

.method private shouldShowSwitchSystemUser()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 502
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isOwnerUser()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 503
    :cond_0
    return v2

    .line 506
    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSecondUser()I

    move-result v1

    .line 507
    .local v1, "secondUser":I
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 508
    .local v0, "currentUser":I
    if-eq v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private showMiLiveLockWallpaper(Ljava/io/File;)V
    .locals 5
    .param p1, "wallpaperFile"    # Ljava/io/File;

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 535
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->releaseLiveWallpaper()V

    .line 536
    new-instance v2, Landroid/view/TextureView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperView:Landroid/view/TextureView;

    .line 537
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperView:Landroid/view/TextureView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 540
    .local v0, "wallpaper":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

    .line 541
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveReady:Z

    .line 542
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperView:Landroid/view/TextureView;

    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$16;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$16;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 571
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperView:Landroid/view/TextureView;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addView(Landroid/view/View;I)V

    .line 572
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperView:Landroid/view/TextureView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 534
    return-void

    .line 572
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private startLiveLockWallpaper()V
    .locals 4

    .prologue
    .line 2835
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveReady:Z

    if-eqz v1, :cond_0

    .line 2837
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 2838
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mChargeHelper:Lcom/android/keyguard/charge/ChargeHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/charge/ChargeHelper;->isExtremePowerModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2839
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 2840
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 2834
    :cond_0
    :goto_0
    return-void

    .line 2842
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2844
    :catch_0
    move-exception v0

    .line 2845
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startQsSizeChangeAnimation(II)V
    .locals 4
    .param p1, "oldHeight"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 780
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 782
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 783
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 784
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 785
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 794
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 800
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 777
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1957
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchX:F

    .line 1958
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchY:F

    .line 1955
    return-void
.end method

.method private updateDismissViewState()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const v6, 0x3f4ccccd    # 0.8f

    .line 1860
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getAppearFraction()F

    move-result v0

    .line 1861
    .local v0, "fraction":F
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastDismissViewFraction:F

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_2

    .line 1862
    sub-float v2, v0, v6

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastDismissViewFraction:F

    sub-float/2addr v3, v6

    mul-float/2addr v2, v3

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    const/4 v1, 0x1

    .line 1863
    .local v1, "passThreshold":Z
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastDismissViewFraction:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    if-eqz v2, :cond_1

    .line 1864
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 1865
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 1867
    :cond_0
    cmpg-float v2, v0, v6

    if-gez v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->createDismissViewAnimator(Z)Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewAnimator:Landroid/animation/Animator;

    .line 1868
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 1869
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastDismissViewFraction:F

    .line 1859
    :cond_1
    return-void

    .line 1861
    .end local v1    # "passThreshold":Z
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "passThreshold":Z
    goto :goto_0

    .line 1862
    .end local v1    # "passThreshold":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "passThreshold":Z
    goto :goto_0

    .line 1867
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateDozingVisibilities(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 2783
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-eqz v0, :cond_1

    .line 2784
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 2785
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDozing(ZZ)V

    .line 2782
    :cond_0
    :goto_0
    return-void

    .line 2787
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 2788
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDozing(ZZ)V

    .line 2789
    if-eqz p1, :cond_0

    .line 2790
    const-wide/16 v0, 0x2bc

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarIn(J)V

    goto :goto_0
.end method

.method private updateEmptyShadeView()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2807
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowEmptyShadeView:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateEmptyShadeView(Z)V

    .line 2805
    return-void

    .line 2807
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateFullyVisibleState(Z)V
    .locals 5
    .param p1, "forceNotFullyVisible"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3122
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-nez p1, :cond_0

    .line 3123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getAlpha()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 3122
    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setParentNotFullyVisible(Z)V

    .line 3121
    return-void

    .line 3124
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private updateHeader()V
    .locals 2

    .prologue
    .line 2261
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguardAlpha()V

    .line 2264
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsExpansion()V

    .line 2265
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateDismissViewState()V

    .line 2260
    return-void
.end method

.method private updateHeaderKeyguardAlpha()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 2310
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v1, v4, v2

    .line 2311
    .local v1, "alphaQsExpansion":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardContentsAlpha()F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 2312
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F

    .line 2311
    mul-float v0, v2, v3

    .line 2313
    .local v0, "alpha":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    .line 2314
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getAlpha()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    .line 2315
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x4

    .line 2314
    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 2316
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardWallpaperCarouselController:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->setWallPaperViewsAlpha(F)V

    .line 2309
    return-void

    .line 2315
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateKeyguardBottomAreaAlpha()V
    .locals 4

    .prologue
    .line 2320
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardContentsAlpha()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2321
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAlpha(F)V

    .line 2322
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 2323
    const/4 v1, 0x4

    .line 2322
    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setImportantForAccessibility(I)V

    .line 2325
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->invalidate()V

    .line 2319
    return-void

    .line 2324
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateMaxHeadsUpTranslation()V
    .locals 3

    .prologue
    .line 2531
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNavigationBarBottomHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHeadsUpBoundaries(II)V

    .line 2530
    return-void
.end method

.method private updateNotchCornerVisibility()V
    .locals 2

    .prologue
    .line 1695
    sget-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-nez v0, :cond_0

    .line 1696
    return-void

    .line 1698
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotchCorner:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mForceBlack:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1694
    return-void

    .line 1698
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateNotificationTranslucency()V
    .locals 2

    .prologue
    .line 2230
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2231
    .local v0, "alpha":F
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClosingWithAlphaFadeOut:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandingFromHeadsUp:Z

    if-eqz v1, :cond_2

    .line 2234
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2229
    :cond_1
    :goto_1
    return-void

    .line 2231
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2232
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getFadeoutAlpha()F

    move-result v0

    goto :goto_0

    .line 2235
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAlpha(F)V

    goto :goto_1
.end method

.method private updatePanelExpanded()V
    .locals 2

    .prologue
    .line 2171
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 2172
    .local v0, "isExpanded":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelExpanded:Z

    if-eq v1, v0, :cond_0

    .line 2173
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setIsExpanded(Z)V

    .line 2174
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelExpanded(Z)V

    .line 2175
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelExpanded:Z

    .line 2170
    :cond_0
    return-void

    .line 2171
    .end local v0    # "isExpanded":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "isExpanded":Z
    goto :goto_0
.end method

.method private updateQsState()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1796
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setQsExpanded(Z)V

    .line 1797
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 1798
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_1

    .line 1799
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    .line 1797
    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScrollingEnabled(Z)V

    .line 1800
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateEmptyShadeView()V

    .line 1801
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-eqz v0, :cond_3

    .line 1804
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_4

    return-void

    :cond_1
    move v0, v1

    .line 1798
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1802
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hideIfNotSimple(Z)Z

    goto :goto_1

    .line 1805
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/qs/QS;->setExpanded(Z)V

    .line 1795
    return-void
.end method

.method private updateStatusBarIcons()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3032
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullWidth()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getOpeningHeight()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    const/4 v0, 0x1

    .line 3033
    .local v0, "showIconsWhenExpanded":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNoVisibleNotifications:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3034
    const/4 v0, 0x0

    .line 3036
    .end local v0    # "showIconsWhenExpanded":Z
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowIconsWhenExpanded:Z

    if-eq v0, v2, :cond_1

    .line 3037
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowIconsWhenExpanded:Z

    .line 3038
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->recomputeDisableFlags(Z)V

    .line 3031
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 3032
    goto :goto_0
.end method

.method private updateStatusBarWindowBlur()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 2155
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v3, :cond_2

    .line 2157
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    mul-float/2addr v3, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPeekHeight()F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2159
    .local v0, "blurFraction":F
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAfterTracking:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v2

    .line 2160
    .local v2, "useTrackingInterpolation":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 2161
    sget-object v3, Lcom/android/systemui/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 2163
    .local v1, "blurRatio":F
    :goto_1
    const-class v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBlurRatio(F)V

    .line 2164
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mThemeBackgroundView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2154
    .end local v0    # "blurFraction":F
    .end local v1    # "blurRatio":F
    .end local v2    # "useTrackingInterpolation":Z
    :goto_2
    return-void

    .line 2159
    .restart local v0    # "blurFraction":F
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 2162
    .restart local v2    # "useTrackingInterpolation":Z
    :cond_1
    move v1, v0

    .restart local v1    # "blurRatio":F
    goto :goto_1

    .line 2166
    .end local v0    # "blurFraction":F
    .end local v1    # "blurRatio":F
    .end local v2    # "useTrackingInterpolation":Z
    :cond_2
    const-class v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBlurRatio(F)V

    goto :goto_2
.end method

.method private updateThemeBackgroundVisibility(I)V
    .locals 2
    .param p1, "statusBarState"    # I

    .prologue
    const/4 v0, 0x0

    .line 1691
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mThemeBackgroundView:Landroid/view/View;

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1690
    return-void

    .line 1691
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private updateWallpaper(Z)V
    .locals 8
    .param p1, "wallpaperChanged"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 385
    iput v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperType:I

    .line 386
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardUtils;->useSystemLiveWallpaper(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 387
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 388
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperType:I

    .line 408
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperType:I

    if-eq v3, v6, :cond_1

    .line 409
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->releaseLiveWallpaper()V

    .line 411
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLeftViewBg:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getWallpaperBlurColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 412
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLightWallpaperBottom()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDarkMode(Z)V

    .line 413
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLightClock()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/MiuiKeyguardClock;->setDarkMode(Z)V

    .line 414
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mForceBlack:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLightWallpaperStatusBar()Z

    move-result v3

    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setDarkMode(Z)V

    .line 384
    return-void

    .line 390
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardUtils;->getLockWallpaperCache(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v2

    .line 391
    .local v2, "wallpaperCache":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/io/File;Landroid/graphics/drawable/Drawable;>;"
    if-eqz v2, :cond_0

    .line 392
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    .line 393
    .local v1, "wallpaper":Ljava/io/File;
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 394
    .local v0, "preview":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 395
    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastLiveLockPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 400
    :goto_2
    iput v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperType:I

    goto :goto_0

    .line 396
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->showMiLiveLockWallpaper(Ljava/io/File;)V

    .line 397
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 398
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastLiveLockPath:Ljava/lang/String;

    goto :goto_2

    .line 402
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 403
    iput v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperType:I

    goto :goto_0

    .line 414
    .end local v0    # "preview":Landroid/graphics/drawable/Drawable;
    .end local v1    # "wallpaper":Ljava/io/File;
    .end local v2    # "wallpaperCache":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/io/File;Landroid/graphics/drawable/Drawable;>;"
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public animateCloseQs()V
    .locals 3

    .prologue
    .line 961
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 962
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsAnimatorExpand:Z

    if-nez v1, :cond_0

    .line 963
    return-void

    .line 965
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 966
    .local v0, "height":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 967
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 969
    .end local v0    # "height":F
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZ)V

    .line 960
    return-void
.end method

.method public animateToFullShade(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 926
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextTopPaddingChange:Z

    .line 927
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->goToFullShade(J)V

    .line 928
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestLayout()V

    .line 925
    return-void
.end method

.method public canCameraGestureBeLaunched(Z)Z
    .locals 4
    .param p1, "keyguardIsShowing"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 3142
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->resolveCameraIntent()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 3143
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_2

    .line 3145
    .local v0, "packageToLaunch":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 3146
    if-nez p1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isForegroundApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3145
    :cond_1
    :goto_1
    return v2

    .line 3144
    .end local v0    # "packageToLaunch":Ljava/lang/String;
    :cond_2
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 3147
    .restart local v0    # "packageToLaunch":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->isSwipingInProgress()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1
.end method

.method public closeQs()V
    .locals 1

    .prologue
    .line 956
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelQsAnimation()V

    .line 957
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 955
    return-void
.end method

.method public closeQsDetail()V
    .locals 1

    .prologue
    .line 2739
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->closeDetail()V

    .line 2738
    return-void
.end method

.method public computeMaxKeyguardNotifications(I)I
    .locals 14
    .param p1, "maximum"    # I

    .prologue
    .line 842
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result v12

    int-to-float v6, v12

    .line 843
    .local v6, "minPadding":F
    const/4 v1, 0x0

    .line 844
    .local v1, "chargingViewSpace":I
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v12}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->isShown()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 845
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v12}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 846
    .local v8, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v12}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getHeight()I

    move-result v12

    iget v13, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iget v13, v8, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int v1, v12, v13

    .line 848
    .end local v8    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 849
    const v13, 0x90f014d

    .line 848
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const/4 v13, 0x1

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 850
    .local v7, "notificationPadding":I
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v12

    add-int/2addr v12, v7

    int-to-float v10, v12

    .line 852
    .local v10, "shelfSize":F
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v6

    sub-float/2addr v12, v10

    .line 853
    iget v13, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIndicationBottomPadding:I

    int-to-float v13, v13

    .line 852
    sub-float/2addr v12, v13

    .line 853
    int-to-float v13, v1

    .line 852
    sub-float v0, v12, v13

    .line 854
    .local v0, "availableSpace":F
    const/4 v3, 0x0

    .line 855
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v12

    if-ge v4, v12, :cond_8

    .line 856
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v12, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 857
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableView;
    instance-of v12, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v12, :cond_2

    .line 855
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 861
    :cond_2
    instance-of v12, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v12, :cond_3

    move-object v9, v2

    .line 862
    check-cast v9, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 863
    .local v9, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 864
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v13

    .line 863
    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    .line 865
    .local v11, "suppressedSummary":Z
    if-nez v11, :cond_1

    .line 868
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 871
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v12

    if-nez v12, :cond_1

    .line 875
    .end local v9    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v11    # "suppressedSummary":Z
    :cond_3
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getMinHeight()I

    move-result v12

    add-int/2addr v12, v7

    int-to-float v12, v12

    sub-float/2addr v0, v12

    .line 876
    const/4 v12, 0x0

    cmpl-float v12, v0, v12

    if-ltz v12, :cond_4

    if-ge v3, p1, :cond_4

    .line 877
    add-int/lit8 v3, v3, 0x1

    .line 876
    goto :goto_1

    .line 878
    :cond_4
    neg-float v12, v10

    cmpl-float v12, v0, v12

    if-lez v12, :cond_7

    .line 880
    add-int/lit8 v5, v4, 0x1

    .local v5, "j":I
    :goto_2
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v12

    if-ge v5, v12, :cond_6

    .line 881
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v12, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    instance-of v12, v12, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v12, :cond_5

    .line 883
    return v3

    .line 880
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 886
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 887
    return v3

    .line 889
    .end local v5    # "j":I
    :cond_7
    return v3

    .line 892
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_8
    return v3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2909
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2908
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1010
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1011
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardOrLockScreenString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1012
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    .line 1013
    const/4 v0, 0x1

    return v0

    .line 1015
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 2894
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    if-ne p2, v0, :cond_0

    .line 2895
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardContentsAlpha()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    sub-float v2, v3, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v6, v3, v0

    .line 2896
    .local v6, "maskAlpha":F
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getWallpaperBlurColor()I

    move-result v7

    .line 2897
    .local v7, "wallpaperBlurColor":I
    cmpl-float v0, v6, v1

    if-lez v0, :cond_0

    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    .line 2898
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 2899
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2900
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMaskPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2901
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMaskPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2904
    .end local v6    # "maskAlpha":F
    .end local v7    # "wallpaperBlurColor":I
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/PanelView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3220
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3221
    const-string/jumbo v1, "      [NotificationPanelView: mQsExpansionHeight=%f mQsMinExpansionHeight=%d mQsMaxExpansionHeight=%d mIntercepting=%s mPanelExpanded=%s mQsExpanded=%s mQsFullyExpanded=%s mKeyguardShowing=%s mIsExpansionFromHeadsUp=%s]"

    const/16 v0, 0x9

    new-array v2, v0, [Ljava/lang/Object;

    .line 3224
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 3225
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 3226
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 3227
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "T"

    :goto_0
    const/4 v3, 0x3

    aput-object v0, v2, v3

    .line 3228
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelExpanded:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "T"

    :goto_1
    const/4 v3, 0x4

    aput-object v0, v2, v3

    .line 3229
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "T"

    :goto_2
    const/4 v3, 0x5

    aput-object v0, v2, v3

    .line 3230
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "T"

    :goto_3
    const/4 v3, 0x6

    aput-object v0, v2, v3

    .line 3231
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "T"

    :goto_4
    const/4 v3, 0x7

    aput-object v0, v2, v3

    .line 3232
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpansionFromHeadsUp:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "T"

    :goto_5
    const/16 v3, 0x8

    aput-object v0, v2, v3

    .line 3221
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3219
    return-void

    .line 3227
    :cond_0
    const-string/jumbo v0, "f"

    goto :goto_0

    .line 3228
    :cond_1
    const-string/jumbo v0, "f"

    goto :goto_1

    .line 3229
    :cond_2
    const-string/jumbo v0, "f"

    goto :goto_2

    .line 3230
    :cond_3
    const-string/jumbo v0, "f"

    goto :goto_3

    .line 3231
    :cond_4
    const-string/jumbo v0, "f"

    goto :goto_4

    .line 3232
    :cond_5
    const-string/jumbo v0, "f"

    goto :goto_5
.end method

.method public expand(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 2406
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->expand(Z)V

    .line 2407
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 2408
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAwesomeLockScreenResume()V

    .line 2405
    :cond_0
    return-void
.end method

.method public expandWithQs()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 980
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_0

    .line 981
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 983
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(Z)V

    .line 979
    return-void
.end method

.method public fling(FZ)V
    .locals 4
    .param p1, "vel"    # F
    .param p2, "expand"    # Z

    .prologue
    .line 988
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;

    move-result-object v0

    .line 989
    .local v0, "gr":Lcom/android/systemui/statusbar/GestureRecorder;
    if-eqz v0, :cond_0

    .line 990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    const-string/jumbo v1, "open"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifications,v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    .line 987
    return-void

    .line 990
    :cond_1
    const-string/jumbo v1, "closed"

    goto :goto_0
.end method

.method protected flingExpands(FFFF)Z
    .locals 2
    .param p1, "vel"    # F
    .param p2, "vectorVel"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 1325
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/PanelView;->flingExpands(FFFF)Z

    move-result v0

    .line 1328
    .local v0, "expands":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 1329
    const/4 v0, 0x1

    .line 1331
    .end local v0    # "expands":Z
    :cond_0
    return v0
.end method

.method public flingSettings(FZ)V
    .locals 2
    .param p1, "vel"    # F
    .param p2, "expand"    # Z

    .prologue
    .line 1983
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;Z)V

    .line 1982
    return-void
.end method

.method protected flingSettings(FZLjava/lang/Runnable;Z)V
    .locals 9
    .param p1, "vel"    # F
    .param p2, "expand"    # Z
    .param p3, "onFinishRunnable"    # Ljava/lang/Runnable;
    .param p4, "isClick"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1988
    if-eqz p2, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    :goto_0
    int-to-float v3, v4

    .line 1989
    .local v3, "target":F
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    cmpl-float v4, v3, v4

    if-nez v4, :cond_2

    .line 1990
    if-eqz p3, :cond_0

    .line 1991
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 1993
    :cond_0
    return-void

    .line 1988
    .end local v3    # "target":F
    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    goto :goto_0

    .line 1996
    .restart local v3    # "target":F
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPerf:Lcom/android/systemui/util/QcomBoostFramework;

    if-eqz v4, :cond_3

    .line 1997
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1998
    .local v1, "currentPackage":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPerf:Lcom/android/systemui/util/QcomBoostFramework;

    const/16 v5, 0x1080

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v1, v6, v8}, Lcom/android/systemui/util/QcomBoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 2001
    .end local v1    # "currentPackage":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    .line 2002
    .local v2, "oppositeDirection":Z
    cmpl-float v4, p1, v7

    if-lez v4, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    cmpg-float v4, p1, v7

    if-gez v4, :cond_6

    if-eqz p2, :cond_6

    .line 2003
    :cond_5
    const/4 p1, 0x0

    .line 2004
    const/4 v2, 0x1

    .line 2006
    :cond_6
    const/4 v4, 0x2

    new-array v4, v4, [F

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    const/4 v6, 0x0

    aput v5, v4, v6

    aput v3, v4, v8

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2007
    .local v0, "animator":Landroid/animation/ValueAnimator;
    if-eqz p4, :cond_8

    .line 2008
    sget-object v4, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2009
    const-wide/16 v4, 0x170

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2013
    :goto_1
    if-eqz v2, :cond_7

    .line 2014
    const-wide/16 v4, 0x15e

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2016
    :cond_7
    new-instance v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2022
    new-instance v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView$27;

    invoke-direct {v4, p0, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$27;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2035
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2036
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 2037
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsAnimatorExpand:Z

    .line 1987
    return-void

    .line 2011
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-virtual {v4, v0, v5, v3, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    goto :goto_1
.end method

.method protected flingToHeight(FZFFZ)V
    .locals 4
    .param p1, "vel"    # F
    .param p2, "expand"    # Z
    .param p3, "target"    # F
    .param p4, "collapseSpeedUpFactor"    # F
    .param p5, "expandBecauseOfFalsing"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 999
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAfterTracking:Z

    .line 1000
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->notifyFling(Z)V

    .line 1001
    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getFadeoutAlpha()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setClosingWithAlphaFadeout(Z)V

    .line 1002
    if-nez p2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAfterTracking:Z

    if-eqz v0, :cond_1

    .line 1003
    const-string/jumbo v0, "up_swipe"

    invoke-static {v0}, Lcom/android/systemui/AnalyticsHelper;->trackStatusBarCollapse(Ljava/lang/String;)V

    .line 1005
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelView;->flingToHeight(FZFFZ)V

    .line 997
    return-void

    :cond_2
    move v0, v2

    .line 1000
    goto :goto_0
.end method

.method public flingTopOverscroll(FZ)V
    .locals 3
    .param p1, "velocity"    # F
    .param p2, "open"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1436
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsOverscrollExpansionEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsCovered()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1437
    :cond_0
    return-void

    .line 1440
    :cond_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    .line 1441
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    .line 1442
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1443
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v2, :cond_2

    if-eqz p2, :cond_2

    move p1, v0

    .end local p1    # "velocity":F
    :cond_2
    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    .line 1444
    :goto_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$22;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$22;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 1443
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;Z)V

    .line 1435
    return-void

    :cond_3
    move v0, v1

    .line 1443
    goto :goto_0
.end method

.method protected getHeaderTranslation()F
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2269
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2270
    return v4

    .line 2274
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    .line 2275
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearFraction(F)F

    move-result v2

    .line 2274
    invoke-static {v1, v4, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    .line 2276
    .local v0, "translation":F
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method public getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 2

    .prologue
    .line 2649
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2650
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    .line 2649
    :goto_0
    return-object v0

    .line 2651
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getLeftView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2666
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLeftView()Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    move-result-object v0

    return-object v0
.end method

.method public getLeftView()Lcom/android/keyguard/MiuiKeyguardMoveLeftView;
    .locals 1

    .prologue
    .line 2667
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardLeftView:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    return-object v0
.end method

.method public getLeftViewBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 2672
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLeftViewBg:Landroid/view/View;

    return-object v0
.end method

.method public getLockScreenView()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2686
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoveListViews:Ljava/util/List;

    return-object v0
.end method

.method protected getMaxPanelHeight()I
    .locals 5

    .prologue
    .line 2092
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    .line 2093
    .local v1, "min":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 2094
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 2095
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getOverExpansionAmount()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 2096
    .local v2, "minHeight":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2099
    .end local v2    # "minHeight":I
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v3, :cond_2

    .line 2100
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightQsExpanded()I

    move-result v0

    .line 2104
    .local v0, "maxHeight":I
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2105
    return v0

    .line 2102
    .end local v0    # "maxHeight":I
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightShade()I

    move-result v0

    .restart local v0    # "maxHeight":I
    goto :goto_0
.end method

.method public getMaxTranslationDistance()F
    .locals 4

    .prologue
    .line 2599
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected getOpeningHeight()F
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getOpeningHeight()F

    move-result v0

    return v0
.end method

.method protected getOverExpansionAmount()F
    .locals 2

    .prologue
    .line 2249
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    return v0
.end method

.method protected getOverExpansionPixels()F
    .locals 2

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v0

    return v0
.end method

.method protected getPeekHeight()F
    .locals 1

    .prologue
    .line 2712
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2713
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPeekHeight()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 2715
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    return v0
.end method

.method protected getQsExpansionFraction()F
    .locals 3

    .prologue
    .line 1194
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 1195
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getTempQsMaxExpansion()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 1194
    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 2

    .prologue
    .line 2656
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2657
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    .line 2656
    :goto_0
    return-object v0

    .line 2658
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    goto :goto_0
.end method

.method public getRightView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2677
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardRightView:Landroid/view/View;

    return-object v0
.end method

.method protected hasConflictingGestures()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1336
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 3061
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hideStatusBarIconsWhenExpanded()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3166
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_1

    const/4 v0, 0x1

    .line 3168
    .local v0, "portrait":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullWidth()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowIconsWhenExpanded:Z

    if-eqz v3, :cond_2

    :cond_0
    :goto_1
    return v1

    .line 3166
    .end local v0    # "portrait":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "portrait":Z
    goto :goto_0

    .line 3168
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isPanelVisibleBecauseOfHeadsUp()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v3, :cond_3

    if-nez v0, :cond_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public isDozing()Z
    .locals 1

    .prologue
    .line 2797
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    return v0
.end method

.method public isExpanding()Z
    .locals 1

    .prologue
    .line 2113
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    return v0
.end method

.method public isFullWidth()Z
    .locals 1

    .prologue
    .line 3028
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullWidth:Z

    return v0
.end method

.method public isInCenterScreen()Z
    .locals 1

    .prologue
    .line 2662
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->isInCenterScreen()Z

    move-result v0

    return v0
.end method

.method protected isInContentBounds(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 1133
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getX()F

    move-result v0

    .line 1134
    .local v0, "stackScrollerX":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    sub-float v3, p1, v0

    invoke-virtual {v2, v3, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1135
    cmpg-float v2, v0, p1

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    const/4 v1, 0x1

    .line 1134
    :cond_0
    return v1
.end method

.method public isInSettings()Z
    .locals 1

    .prologue
    .line 2109
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    return v0
.end method

.method protected isInUnderlapBounds(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1140
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCloseHandleUnderlapSize:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardShowing()Z
    .locals 1

    .prologue
    .line 1340
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    return v0
.end method

.method public isKeyguardWallpaperCarouselSwitchAnimating()Z
    .locals 1

    .prologue
    .line 2682
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardWallpaperCarouselController:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->isSwitchAnimating()Z

    move-result v0

    return v0
.end method

.method public isLaunchTransitionFinished()Z
    .locals 1

    .prologue
    .line 2748
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    return v0
.end method

.method public isLaunchTransitionRunning()Z
    .locals 1

    .prologue
    .line 2752
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    return v0
.end method

.method public isNoVisibleNotifications()Z
    .locals 1

    .prologue
    .line 3268
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNoVisibleNotifications:Z

    return v0
.end method

.method protected isPanelVisibleBecauseOfHeadsUp()Z
    .locals 1

    .prologue
    .line 3056
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpAnimatingAway:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isQSFullyCollapsed()Z
    .locals 1

    .prologue
    .line 1898
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_1

    .line 1899
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->isQSFullyCollapsed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1901
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    return v0
.end method

.method public isQsDetailShowing()Z
    .locals 1

    .prologue
    .line 2735
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->isShowingDetail()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isQsExpanded()Z
    .locals 1

    .prologue
    .line 2731
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    return v0
.end method

.method protected isScrolledToBottom()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2082
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInSettings()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2083
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 2084
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result v0

    .line 2083
    :cond_0
    return v0

    .line 2086
    :cond_1
    return v0
.end method

.method protected isTrackingBlocked()Z
    .locals 1

    .prologue
    .line 2727
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchCamera(ZI)V
    .locals 4
    .param p1, "animate"    # Z
    .param p2, "source"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3065
    if-ne p2, v0, :cond_0

    .line 3066
    const-string/jumbo v2, "power_double_tap"

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 3078
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3079
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchingAffordance:Z

    .line 3080
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchingAffordance(Z)V

    .line 3084
    .end local p1    # "animate":Z
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v3

    if-ne v3, v0, :cond_3

    :goto_2
    invoke-virtual {v2, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->launchAffordance(ZZ)V

    .line 3064
    return-void

    .line 3067
    .restart local p1    # "animate":Z
    :cond_0
    if-nez p2, :cond_1

    .line 3068
    const-string/jumbo v2, "wiggle_gesture"

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_0

    .line 3072
    :cond_1
    const-string/jumbo v2, "lockscreen_affordance"

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_0

    .line 3082
    :cond_2
    const/4 p1, 0x0

    .local p1, "animate":Z
    goto :goto_1

    .end local p1    # "animate":Z
    :cond_3
    move v0, v1

    .line 3084
    goto :goto_2
.end method

.method protected loadDimens(Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 661
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens(Landroid/content/res/Resources;)V

    .line 662
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 664
    const v0, 0x105001b

    .line 663
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    .line 665
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 666
    const v1, 0x90f0140

    .line 665
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    .line 668
    const v0, 0x90f015e

    .line 667
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationsHeaderCollideDistance:I

    .line 670
    const v0, 0x90f015f

    .line 669
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnlockMoveDistance:I

    .line 671
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->loadDimens(Landroid/content/res/Resources;)V

    .line 673
    const v0, 0x90f0153

    .line 672
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFalsingThreshold:I

    .line 675
    const v0, 0x90f01ad

    .line 674
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPositionMinSideMargin:I

    .line 677
    const v0, 0x90f00ad

    .line 676
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIndicationBottomPadding:I

    .line 679
    const v0, 0x90f00cb

    .line 678
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCloseHandleUnderlapSize:F

    .line 681
    const v0, 0x90f0211

    .line 680
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewSize:I

    .line 683
    const v0, 0x90f0212

    .line 682
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewBottomMargin:I

    .line 685
    const v0, 0x90f00d2

    .line 684
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelWidth:I

    .line 687
    const v0, 0x90e0045

    .line 686
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelGravity:I

    .line 689
    const v0, 0x90f00e2

    .line 688
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizerPaddingTop:I

    .line 691
    const v0, 0x90f00e3

    .line 690
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizerPaddingBottom:I

    .line 693
    const v0, 0x90f0101

    .line 692
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSDetailMarginTop:I

    .line 694
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizerPaddingBottom:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSDetailMarginBottom:I

    .line 660
    return-void
.end method

.method public needsAntiFalsing()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2696
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyBarPanelExpansionChanged()V
    .locals 0

    .prologue
    .line 1703
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 1704
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->refreshNotificationStackScrollerVisible()V

    .line 1702
    return-void
.end method

.method public notifyStartFading()V
    .locals 1

    .prologue
    .line 3103
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateFullyVisibleState(Z)V

    .line 3102
    return-void
.end method

.method public onAffordanceLaunchEnded()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3088
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchingAffordance:Z

    .line 3089
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchingAffordance(Z)V

    .line 3087
    return-void
.end method

.method public onAnimationToSideEnded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2588
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    .line 2589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    .line 2590
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2591
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2592
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2594
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->readyForKeyguardDone()V

    .line 2587
    return-void
.end method

.method public onAnimationToSideStarted(ZFF)V
    .locals 8
    .param p1, "rightPage"    # Z
    .param p2, "translation"    # F
    .param p3, "vel"    # F

    .prologue
    const/4 v7, 0x1

    .line 2557
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v4

    if-ne v4, v7, :cond_0

    move v2, p1

    .line 2558
    :goto_0
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    .line 2559
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2560
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result v0

    .line 2561
    .local v0, "displayDensity":F
    div-float v4, p2, v0

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2562
    .local v1, "lengthDp":I
    div-float v4, p3, v0

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 2563
    .local v3, "velocityDp":I
    if-eqz v2, :cond_2

    .line 2564
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0xbe

    invoke-virtual {v4, v5, v6, v1, v3}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(Landroid/content/Context;III)V

    .line 2565
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v4}, Lcom/android/systemui/classifier/FalsingManager;->onLeftAffordanceOn()V

    .line 2574
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->startLaunchTransitionTimeout()V

    .line 2575
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    .line 2556
    return-void

    .line 2557
    .end local v0    # "displayDensity":F
    .end local v1    # "lengthDp":I
    .end local v3    # "velocityDp":I
    :cond_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .local v2, "start":Z
    goto :goto_0

    .end local v2    # "start":Z
    :cond_1
    const/4 v2, 0x1

    .restart local v2    # "start":Z
    goto :goto_0

    .line 2567
    .end local v2    # "start":Z
    .restart local v0    # "displayDensity":F
    .restart local v1    # "lengthDp":I
    .restart local v3    # "velocityDp":I
    :cond_2
    const-string/jumbo v4, "lockscreen_affordance"

    .line 2568
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 2567
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2569
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0xbd

    invoke-virtual {v4, v5, v6, v1, v3}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(Landroid/content/Context;III)V

    .line 2571
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v4}, Lcom/android/systemui/classifier/FalsingManager;->onCameraOn()V

    .line 2572
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 2525
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNavigationBarBottomHeight:I

    .line 2526
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateMaxHeadsUpTranslation()V

    .line 2527
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 581
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onAttachedToWindow()V

    .line 582
    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    const-string/jumbo v1, "QS"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 583
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->post(Ljava/lang/Runnable;)Z

    .line 591
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerWallpaperChangeCallback(Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;)V

    .line 580
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2544
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x9120247

    if-ne v0, v1, :cond_0

    .line 2545
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 2546
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_1

    .line 2547
    invoke-virtual {p0, v5, v3, v6, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;Z)V

    .line 2543
    :cond_0
    :goto_0
    return-void

    .line 2548
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_0

    .line 2549
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xc3

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(Landroid/content/Context;III)V

    .line 2550
    invoke-virtual {p0, v5, v4, v6, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;Z)V

    goto :goto_0
.end method

.method protected onClosingFinished()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2984
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onClosingFinished()V

    .line 2985
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetVerticalPanelPosition()V

    .line 2986
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setClosingWithAlphaFadeout(Z)V

    .line 2988
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getQsContent()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2989
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getQsContent()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 2990
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getQsContent()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 2991
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getQsContent()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2994
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_1

    .line 2995
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScaleX(F)V

    .line 2996
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScaleY(F)V

    .line 2983
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 596
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onDetachedFromWindow()V

    .line 597
    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    const-string/jumbo v1, "QS"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/fragments/FragmentHostManager;->removeTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    .line 598
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->unregisterWallpaperChangeCallback(Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;)V

    .line 595
    return-void
.end method

.method public onEmptySpaceClicked(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2862
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onEmptySpaceClick(F)Z

    .line 2861
    return-void
.end method

.method protected onExpandingFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2352
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingFinished()V

    .line 2353
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onExpansionStopped()V

    .line 2354
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->onExpandingFinished()V

    .line 2355
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    .line 2356
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2357
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 2369
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 2378
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 2379
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    .line 2380
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpansionFromHeadsUp:Z

    .line 2381
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTrackingHeadsUp(Z)V

    .line 2382
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandingFromHeadsUp:Z

    .line 2383
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelScrimMinFraction(F)V

    .line 2351
    return-void

    .line 2376
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    goto :goto_0
.end method

.method protected onExpandingStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2337
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingStarted()V

    .line 2338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onExpansionStarted()V

    .line 2339
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    .line 2340
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    .line 2341
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 2342
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 2346
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHeaderListening(Z)V

    .line 2347
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBrightnessListening(Z)V

    .line 2336
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 436
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V

    .line 437
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setClipChildren(Z)V

    .line 438
    const v0, 0x912015e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 439
    const v0, 0x9120185

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/MiuiKeyguardClock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    .line 440
    const v0, 0x9120121

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    .line 441
    const v0, 0x91202cf

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperView:Landroid/view/View;

    .line 442
    const v0, 0x9120212

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mThemeBackgroundView:Landroid/view/View;

    .line 443
    const v0, 0x91202d3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotchCorner:Landroid/view/View;

    .line 444
    const v0, 0x91202d0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLeftViewBg:Landroid/view/View;

    .line 445
    const v0, 0x91202d2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreenContainer:Landroid/widget/FrameLayout;

    .line 447
    const v0, 0x91202d4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 446
    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    .line 448
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 450
    const v0, 0x91202d5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 449
    check-cast v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 452
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V

    .line 453
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V

    .line 454
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnTopPaddingUpdateListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnTopPaddingUpdateListener;)V

    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFlingAnimationUtils(Lcom/android/systemui/statusbar/FlingAnimationUtils;)V

    .line 456
    const v0, 0x9120122

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 457
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    .line 458
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardVerticalMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;

    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 460
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    .line 462
    const v0, 0x91202d1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSwitchSystemUser:Landroid/view/View;

    .line 463
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSwitchSystemUser:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoveListViews:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoveListViews:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoveListViews:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoveListViews:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSwitchSystemUser:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    const v0, 0x91202d6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    .line 486
    const v0, 0x91202d9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardLeftView:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    .line 487
    const v0, 0x91202da

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardRightView:Landroid/view/View;

    .line 489
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isDefaultLockScreenTheme()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDefaultTheme:Z

    .line 490
    const v0, 0x912023c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSDetail;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    .line 491
    const v0, 0x9120239

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 493
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateWallpaper(Z)V

    .line 495
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->setNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 498
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateResources(Z)V

    .line 435
    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 2954
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 2953
    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 2
    .param p1, "inPinnedMode"    # Z

    .prologue
    .line 2936
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setInHeadsUpPinnedMode(Z)V

    .line 2937
    if-eqz p1, :cond_0

    .line 2938
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2939
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationTranslucency()V

    .line 2935
    :goto_0
    return-void

    .line 2941
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHeadsUpAnimatingAway(Z)V

    .line 2942
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 2943
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    .line 2942
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "isHeadsUp"    # Z

    .prologue
    .line 2964
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 2963
    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 2959
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 2958
    return-void
.end method

.method public onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "needsAnimation"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2466
    if-nez p1, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v2, :cond_0

    .line 2467
    return-void

    .line 2469
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    .line 2470
    .local v0, "firstChildNotGone":Lcom/android/systemui/statusbar/ExpandableView;
    instance-of v2, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_1

    .line 2471
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object v1, v0

    .line 2473
    .end local v0    # "firstChildNotGone":Lcom/android/systemui/statusbar/ExpandableView;
    .local v1, "firstRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    if-eqz v1, :cond_3

    .line 2474
    if-eq p1, v1, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v2

    if-ne v2, v1, :cond_3

    .line 2475
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 2477
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 2463
    return-void
.end method

.method protected onHeightUpdated(F)V
    .locals 7
    .param p1, "expandedHeight"    # F

    .prologue
    const/4 v4, 0x0

    .line 2118
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onHeightUpdated expandedHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v3, :cond_2

    .line 2120
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 2122
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v3, :cond_5

    .line 2141
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateExpandedHeight(F)V

    .line 2142
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeader()V

    .line 2143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationTranslucency()V

    .line 2144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updatePanelExpanded()V

    .line 2145
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateStatusBarWindowBlur()V

    .line 2147
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v5

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    const/high16 v6, 0x41f00000    # 30.0f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_8

    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2148
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v5

    if-eqz v5, :cond_9

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setShadeExpanded(Z)V

    .line 2149
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 2150
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->invalidate()V

    .line 2117
    :cond_4
    return-void

    .line 2122
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_3

    .line 2123
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    if-nez v3, :cond_3

    .line 2125
    :cond_6
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_7

    .line 2127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v2, p1, v3

    .line 2138
    .local v2, "t":F
    :goto_3
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v3, v3

    .line 2139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getTempQsMaxExpansion()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    .line 2138
    add-float/2addr v3, v5

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    goto :goto_0

    .line 2132
    .end local v2    # "t":F
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result v3

    .line 2133
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result v5

    .line 2132
    add-int/2addr v3, v5

    int-to-float v0, v3

    .line 2134
    .local v0, "panelHeightQsCollapsed":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightQsExpanded()I

    move-result v3

    int-to-float v1, v3

    .line 2135
    .local v1, "panelHeightQsExpanded":F
    sub-float v3, p1, v0

    .line 2136
    sub-float v5, v1, v0

    .line 2135
    div-float v2, v3, v5

    .restart local v2    # "t":F
    goto :goto_3

    .end local v0    # "panelHeightQsCollapsed":F
    .end local v1    # "panelHeightQsExpanded":F
    .end local v2    # "t":F
    :cond_8
    move v3, v4

    .line 2147
    goto :goto_1

    .line 2148
    :cond_9
    const/4 v4, 0x1

    goto :goto_2
.end method

.method public onIconClicked(Z)V
    .locals 3
    .param p1, "rightIcon"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2616
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHintAnimationRunning:Z

    if-eqz v1, :cond_0

    .line 2617
    return-void

    .line 2619
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHintAnimationRunning:Z

    .line 2620
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$31;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$31;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->startHintAnimation(ZLjava/lang/Runnable;)V

    .line 2627
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 2628
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 2629
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onCameraHintStarted()V

    .line 2615
    :goto_1
    return-void

    :cond_2
    move p1, v0

    .line 2627
    goto :goto_0

    .line 2631
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onRemoteCenterStarted()V

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1020
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1021
    :cond_0
    return v1

    .line 1023
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initDownStates(Landroid/view/MotionEvent;)V

    .line 1024
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1025
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpansionFromHeadsUp:Z

    .line 1026
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "panel_open"

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1027
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "panel_open_peek"

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1028
    return v2

    .line 1031
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsOverscrollExpansionEnabled:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1036
    :cond_3
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1037
    .local v0, "result":Z
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_8

    .line 1038
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_5

    .line 1039
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1040
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    .line 1041
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 1042
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getAlpha()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    move v1, v2

    .line 1040
    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchAtKeyguardBottomArea:Z

    .line 1043
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardTouchDownX:F

    .line 1044
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardTouchDownY:F

    .line 1046
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchAtKeyguardBottomArea:Z

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardTouchDownX:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-gez v1, :cond_6

    .line 1047
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardTouchDownY:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_8

    .line 1048
    :cond_6
    return v2

    .line 1032
    .end local v0    # "result":Z
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsCovered()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsIntercept(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1031
    if-eqz v3, :cond_3

    .line 1033
    return v2

    .line 1051
    .restart local v0    # "result":Z
    :cond_8
    return v0
.end method

.method public onKeyguardOccludedChanged(Z)V
    .locals 1
    .param p1, "keyguardOccluded"    # Z

    .prologue
    .line 3317
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardOccluded:Z

    .line 3318
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3319
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateGxzwState()V

    .line 3316
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v2, 0x0

    .line 735
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelView;->onLayout(ZIIII)V

    .line 737
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setIsFullWidth(Z)V

    .line 740
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 741
    .local v0, "oldMaxHeight":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v1, :cond_0

    .line 742
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    .line 743
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 745
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 746
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v1, :cond_5

    .line 747
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 748
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 749
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 752
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    if-eq v1, v0, :cond_1

    .line 753
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startQsSizeChangeAnimation(II)V

    .line 758
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateExpandedHeight(F)V

    .line 759
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeader()V

    .line 766
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v1, :cond_2

    .line 767
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/qs/QS;->setHeightOverride(I)V

    .line 769
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateMaxHeadsUpTranslation()V

    .line 734
    return-void

    .end local v0    # "oldMaxHeight":I
    :cond_3
    move v1, v2

    .line 737
    goto :goto_0

    .line 742
    .restart local v0    # "oldMaxHeight":I
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v1

    goto :goto_1

    .line 755
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v1, :cond_1

    .line 756
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    add-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    goto :goto_2
.end method

.method protected onMiddleClicked()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2867
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2889
    return v4

    .line 2869
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozingOnDown:Z

    if-nez v0, :cond_0

    .line 2870
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 2871
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2872
    const/16 v2, 0xbc

    .line 2870
    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(Landroid/content/Context;III)V

    .line 2875
    :cond_0
    return v4

    .line 2877
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v0, :cond_1

    .line 2878
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->goToKeyguard()V

    .line 2880
    :cond_1
    return v4

    .line 2885
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->post(Ljava/lang/Runnable;)Z

    .line 2886
    const-string/jumbo v0, "click_black_area"

    invoke-static {v0}, Lcom/android/systemui/AnalyticsHelper;->trackStatusBarCollapse(Ljava/lang/String;)V

    .line 2887
    return v3

    .line 2867
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOverscrollTopChanged(FZ)V
    .locals 4
    .param p1, "amount"    # F
    .param p2, "isRubberbanded"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1418
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsOverscrollExpansionEnabled:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsCovered()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1419
    :cond_0
    return-void

    .line 1422
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelQsAnimation()V

    .line 1423
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v3, :cond_2

    .line 1424
    const/4 p1, 0x0

    .line 1426
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_4

    move v0, p1

    .line 1427
    .local v0, "rounded":F
    :goto_0
    cmpl-float v3, v0, v2

    if-eqz v3, :cond_5

    .end local p2    # "isRubberbanded":Z
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setOverScrolling(Z)V

    .line 1428
    cmpl-float v2, v0, v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    .line 1429
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    .line 1430
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 1431
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1417
    return-void

    .end local v0    # "rounded":F
    .restart local p2    # "isRubberbanded":Z
    :cond_4
    move v0, v2

    .line 1426
    goto :goto_0

    .restart local v0    # "rounded":F
    :cond_5
    move p2, v1

    .line 1427
    goto :goto_1
.end method

.method protected onQsExpansionStarted(I)V
    .locals 3
    .param p1, "overscrollAmount"    # I

    .prologue
    .line 1477
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelQsAnimation()V

    .line 1478
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelHeightAnimator()V

    .line 1481
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    int-to-float v2, p1

    sub-float v0, v1, v2

    .line 1482
    .local v0, "height":F
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1483
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 1484
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    .line 1476
    return-void
.end method

.method public onQsHeightChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2486
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 2487
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_0

    .line 2488
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 2489
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 2490
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 2485
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 2486
    goto :goto_0
.end method

.method public onReset(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 2481
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 2536
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldLayoutDirection:I

    if-eq p1, v0, :cond_0

    .line 2537
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->onRtlPropertiesChanged()V

    .line 2538
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldLayoutDirection:I

    .line 2535
    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2851
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScreenOn:Z

    .line 2852
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAwesomeLockScreenPause()V

    .line 2853
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopFaceUnlock()V

    .line 2854
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->unregisterSeneorsForKeyguard()V

    .line 2855
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2856
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 2850
    :cond_0
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 1

    .prologue
    .line 2823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScreenOn:Z

    .line 2824
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardClock;->refreshTime()V

    .line 2825
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->resetImmediately()V

    .line 2826
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-nez v0, :cond_0

    .line 2827
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAwesomeLockScreenResume()V

    .line 2828
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sWakeupByNotification:Z

    .line 2829
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->registerSeneorsForKeyguard()V

    .line 2830
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startLiveLockWallpaper()V

    .line 2822
    :cond_0
    return-void
.end method

.method public onScrollerTopPaddingUpdate(I)V
    .locals 6
    .param p1, "topPadding"    # I

    .prologue
    const v5, 0x3dccccd0    # 0.100000024f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1456
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingWhenQsBeingCovered:I

    .line 1457
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 1458
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QS;->getQsHeaderHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 1459
    .local v0, "fraction":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getQsContent()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1460
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getQsContent()Landroid/view/View;

    move-result-object v1

    mul-float v2, v5, v0

    sub-float v2, v4, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1461
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getQsContent()Landroid/view/View;

    move-result-object v1

    mul-float v2, v5, v0

    sub-float v2, v4, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1462
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getQsContent()Landroid/view/View;

    move-result-object v1

    mul-float v2, v4, v0

    sub-float v2, v4, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1455
    :cond_0
    return-void
.end method

.method public onSwipingAborted()V
    .locals 1

    .prologue
    .line 2611
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onAffordanceSwipingAborted()V

    .line 2610
    return-void
.end method

.method public onSwipingStarted()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2604
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestDisallowInterceptTouchEvent(Z)V

    .line 2605
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    .line 2606
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 2603
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1205
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1206
    :cond_0
    return v3

    .line 1208
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initDownStates(Landroid/view/MotionEvent;)V

    .line 1209
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mListenForHeadsUp:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->isTrackingHeadsUp()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1214
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 1215
    .local v0, "handled":Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHintAnimationRunning:Z

    if-eqz v2, :cond_4

    .line 1216
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v2, :cond_7

    .line 1221
    .end local v0    # "handled":Z
    :cond_4
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->isInLeftView()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1222
    :cond_5
    return v1

    .line 1210
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1209
    if-eqz v2, :cond_2

    .line 1211
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpansionFromHeadsUp:Z

    .line 1212
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "panel_open_peek"

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1217
    .restart local v0    # "handled":Z
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v2

    if-eqz v2, :cond_4

    .line 1218
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-nez v2, :cond_4

    .line 1219
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_1

    .line 1224
    .end local v0    # "handled":Z
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1225
    return v1

    .line 1228
    :cond_9
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsOverscrollExpansionEnabled:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->isTrackingHeadsUp()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1232
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1233
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "panel_open"

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1235
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetVerticalPanelPosition()V

    .line 1236
    const/4 v0, 0x1

    .line 1239
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardWallpaperCarouselController:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1240
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1239
    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->onTouchEvent(Landroid/view/MotionEvent;IFF)V

    .line 1241
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1243
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1245
    .restart local v0    # "handled":Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-eqz v2, :cond_d

    .end local v0    # "handled":Z
    :goto_2
    return v0

    .line 1229
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->handleQsTouch(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1228
    if-eqz v2, :cond_a

    .line 1230
    return v1

    .restart local v0    # "handled":Z
    :cond_d
    move v0, v1

    .line 1245
    goto :goto_2
.end method

.method protected onTrackingStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2432
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onTrackingStarted()V

    .line 2433
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 2434
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_0

    .line 2435
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 2437
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 2438
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2439
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->animateHideLeftRightIcon()V

    .line 2441
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onPanelTrackingStarted()V

    .line 2431
    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 3
    .param p1, "expand"    # Z

    .prologue
    const/4 v2, 0x1

    .line 2446
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onTrackingStopped()V

    .line 2447
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 2448
    if-eqz p1, :cond_0

    .line 2449
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 2450
    const/4 v1, 0x0

    .line 2449
    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 2452
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onPanelTrackingStopped()V

    .line 2453
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 2454
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2455
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHintAnimationRunning:Z

    if-nez v0, :cond_2

    .line 2456
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->animateShowLeftRightIcon()V

    .line 2457
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->reset(Z)V

    .line 2445
    :cond_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 3114
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onWindowFocusChanged(Z)V

    .line 3115
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasWindowFocus:Z

    .line 3116
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateGxzwState()V

    .line 3113
    :cond_0
    return-void
.end method

.method public registerSeneorsForKeyguard()V
    .locals 2

    .prologue
    .line 3352
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSensorsChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerSeneorsForKeyguard(Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;)V

    .line 3351
    return-void
.end method

.method protected requestScrollerTopPaddingUpdate(Z)V
    .locals 5
    .param p1, "animate"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1948
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculateQsTopPadding()F

    move-result v3

    .line 1949
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextTopPaddingChange:Z

    if-nez v4, :cond_1

    .line 1950
    .end local p1    # "animate":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v4, :cond_3

    .line 1951
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v4, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    .line 1948
    :cond_0
    :goto_1
    invoke-virtual {v2, v3, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateTopPadding(FZZ)V

    .line 1952
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextTopPaddingChange:Z

    .line 1947
    return-void

    .restart local p1    # "animate":Z
    :cond_1
    move p1, v0

    .line 1949
    goto :goto_0

    .end local p1    # "animate":Z
    :cond_2
    move v0, v1

    .line 1951
    goto :goto_1

    :cond_3
    move v0, v1

    .line 1950
    goto :goto_1
.end method

.method public resetViews()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 939
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    .line 940
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    .line 941
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchingAffordance:Z

    if-nez v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->resetImmediately()V

    .line 943
    const-string/jumbo v0, "lockscreen_affordance"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 945
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQs()V

    .line 946
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeAndSaveGuts(ZZZIIZ)V

    .line 948
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetViews()V

    .line 949
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v0, v1, :cond_1

    .line 950
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardWallpaperCarouselController:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->reset()V

    .line 952
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardVerticalMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->reset()V

    .line 938
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 3094
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setAlpha(F)V

    .line 3095
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateFullyVisibleState(Z)V

    .line 3093
    return-void
.end method

.method public setBarState(IZZ)V
    .locals 9
    .param p1, "statusBarState"    # I
    .param p2, "keyguardFadingAway"    # Z
    .param p3, "goingToFullShade"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1509
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    .line 1510
    .local v3, "oldState":I
    if-ne p1, v7, :cond_5

    const/4 v2, 0x1

    .line 1511
    .local v2, "keyguardShowing":Z
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardStatusViewVisibility(IZZ)V

    .line 1512
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardBottomAreaVisibility(IZ)V

    .line 1514
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    .line 1515
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardOtherViewVisibility(I)V

    .line 1517
    if-eqz v2, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v4, :cond_6

    .line 1522
    :cond_0
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    .line 1523
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v4, :cond_1

    .line 1524
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    invoke-interface {v4, v6}, Lcom/android/systemui/plugins/qs/QS;->setKeyguardShowing(Z)V

    .line 1527
    :cond_1
    if-ne v3, v7, :cond_8

    .line 1528
    if-nez p3, :cond_2

    if-ne p1, v8, :cond_8

    .line 1529
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarOut()V

    .line 1530
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v4, v8, :cond_7

    .line 1531
    const-wide/16 v0, 0x0

    .line 1532
    .local v0, "delay":J
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v4, v0, v1}, Lcom/android/systemui/plugins/qs/QS;->animateHeaderSlidingIn(J)V

    .line 1547
    .end local v0    # "delay":J
    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    .line 1548
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateDozingVisibilities(Z)V

    .line 1550
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotchCornerVisibility()V

    .line 1551
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetVerticalPanelPosition()V

    .line 1552
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 1508
    return-void

    .line 1510
    .end local v2    # "keyguardShowing":Z
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "keyguardShowing":Z
    goto :goto_0

    .line 1518
    :cond_6
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateWallpaper(Z)V

    .line 1519
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setCameraImage()V

    .line 1520
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetIsQsCovered(Z)V

    goto :goto_1

    .line 1531
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->calculateGoingToFullShadeDelay()J

    move-result-wide v0

    .restart local v0    # "delay":J
    goto :goto_2

    .line 1533
    .end local v0    # "delay":J
    :cond_8
    if-ne v3, v8, :cond_9

    .line 1534
    if-ne p1, v7, :cond_9

    .line 1535
    const-wide/16 v6, 0x168

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarIn(J)V

    .line 1536
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QS;->animateHeaderSlidingOut()V

    goto :goto_3

    .line 1538
    :cond_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    .line 1539
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v2, :cond_a

    move v4, v5

    :goto_4
    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 1540
    if-eqz v2, :cond_3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-eq v3, v4, :cond_3

    .line 1541
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onKeyguardShowingChanged()V

    .line 1542
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v4, :cond_3

    .line 1543
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QS;->hideImmediately()V

    goto :goto_3

    .line 1539
    :cond_a
    const/4 v4, 0x4

    goto :goto_4
.end method

.method public setBrightnessHeight(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v1, "brightness_panel"

    invoke-static {v0, v1}, Landroid/preference/MiuiCoreSettingsPreference;->getKeyParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/16 v1, -0xa

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "qs_brightness_dialog_height"

    const-string v2, "dimen"

    const-string v3, "com.android.systemui"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/qs/QS;->setBrightnessHeight(I)V

    :cond_1
    return-void
.end method

.method public setBrightnessListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 2393
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    .line 2394
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/qs/QS;->setBrightnessListening(Z)V

    .line 2392
    :cond_0
    return-void
.end method

.method public setDark(ZZ)V
    .locals 4
    .param p1, "dark"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3237
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    int-to-float v0, v1

    .line 3238
    .local v0, "darkAmount":F
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAmount:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_1

    .line 3239
    return-void

    .end local v0    # "darkAmount":F
    :cond_0
    move v1, v3

    .line 3237
    goto :goto_0

    .line 3241
    .restart local v0    # "darkAmount":F
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3242
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3244
    :cond_2
    if-eqz p2, :cond_3

    .line 3245
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->SET_DARK_AMOUNT_PROPERTY:Landroid/util/FloatProperty;

    new-array v2, v2, [F

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAnimator:Landroid/animation/ValueAnimator;

    .line 3246
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3247
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3248
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 3236
    :goto_1
    return-void

    .line 3250
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDarkAmount(F)V

    goto :goto_1
.end method

.method public setDismissView(Lcom/android/systemui/statusbar/DismissView;)V
    .locals 3
    .param p1, "dismissView"    # Lcom/android/systemui/statusbar/DismissView;

    .prologue
    .line 3276
    const/4 v0, -0x1

    .line 3277
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    if-eqz v1, :cond_0

    .line 3278
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3279
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->removeView(Landroid/view/View;)V

    .line 3281
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    .line 3282
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->addView(Landroid/view/View;I)V

    .line 3275
    return-void
.end method

.method public setDozing(ZZ)V
    .locals 2
    .param p1, "dozing"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 2775
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2776
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    .line 2777
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2778
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateDozingVisibilities(Z)V

    .line 2774
    :cond_1
    return-void
.end method

.method public setEmptyDragAmount(F)V
    .locals 2
    .param p1, "amount"    # F

    .prologue
    .line 2760
    const v0, 0x3f4ccccd    # 0.8f

    .line 2761
    .local v0, "factor":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2762
    const v0, 0x3ecccccd    # 0.4f

    .line 2766
    :cond_0
    :goto_0
    mul-float v1, p1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmptyDragAmount:F

    .line 2767
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 2759
    return-void

    .line 2763
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveNotifications()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2764
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0
.end method

.method public setForceBlack(Z)V
    .locals 2
    .param p1, "forceBlack"    # Z

    .prologue
    .line 3300
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mForceBlack:Z

    .line 3301
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotchCornerVisibility()V

    .line 3302
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mForceBlack:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLightWallpaperStatusBar()Z

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setDarkMode(Z)V

    .line 3299
    return-void

    .line 3302
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 0
    .param p1, "groupManager"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .prologue
    .line 3162
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 3161
    return-void
.end method

.method public setHeaderListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 2399
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    .line 2400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/qs/QS;->setHeaderListening(Z)V

    .line 2398
    :cond_0
    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 1
    .param p1, "headsUpAnimatingAway"    # Z

    .prologue
    .line 2948
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpAnimatingAway:Z

    .line 2949
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHeadsUpAnimatingAway(Z)V

    .line 2947
    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 3
    .param p1, "headsUpManager"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .prologue
    .line 2969
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 2970
    new-instance v0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 2971
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 2970
    invoke-direct {v0, p1, v1, p0, v2}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    .line 2968
    return-void
.end method

.method public setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0
    .param p1, "keyguardIndicationController"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    .line 3313
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 3312
    return-void
.end method

.method public setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 0
    .param p1, "keyguardUserSwitcher"    # Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .prologue
    .line 2819
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 2818
    return-void
.end method

.method public setKeyguardWallpaperCarouselController(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)V
    .locals 2
    .param p1, "keyguardWallpaperCarouselController"    # Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    .prologue
    .line 3307
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardWallpaperCarouselController:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    .line 3308
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoveListViews:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardWallpaperCarouselController:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->getWallPaperDes()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3306
    return-void
.end method

.method public setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 2756
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2755
    return-void
.end method

.method public setNoVisibleNotifications(Z)V
    .locals 2
    .param p1, "noNotifications"    # Z

    .prologue
    .line 3261
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNoVisibleNotifications:Z

    .line 3262
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    .line 3263
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/qs/QS;->setHasNotifications(Z)V

    .line 3260
    :cond_0
    return-void

    .line 3263
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected setOverExpansion(FZ)V
    .locals 4
    .param p1, "overExpansion"    # F
    .param p2, "isPixels"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2414
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsCovered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2415
    :cond_0
    return-void

    .line 2417
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 2418
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 2419
    if-eqz p2, :cond_3

    .line 2420
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 2426
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 2413
    :cond_2
    return-void

    .line 2423
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    goto :goto_0
.end method

.method public setPanelScrimMinFraction(F)V
    .locals 1
    .param p1, "minFraction"    # F

    .prologue
    .line 3047
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelScrimMinFractionChanged(F)V

    .line 3046
    return-void
.end method

.method public setQsExpansionEnabled(Z)V
    .locals 1
    .param p1, "qsExpansionEnabled"    # Z

    .prologue
    .line 932
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    .line 933
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_0

    return-void

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/qs/QS;->setHeaderClickable(Z)V

    .line 931
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardLeftView:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 427
    return-void
.end method

.method public setTouchDisabled(Z)V
    .locals 1
    .param p1, "disabled"    # Z

    .prologue
    .line 3213
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setTouchDisabled(Z)V

    .line 3214
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->isSwipingInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    if-eqz v0, :cond_1

    .line 3212
    :cond_0
    :goto_0
    return-void

    .line 3215
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->resetImmediately()V

    goto :goto_0
.end method

.method public setTrackingHeadsUp(Z)V
    .locals 2
    .param p1, "tracking"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2975
    if-eqz p1, :cond_0

    .line 2976
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTrackingHeadsUp(Z)V

    .line 2977
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandingFromHeadsUp:Z

    .line 2974
    :cond_0
    return-void
.end method

.method protected setVerticalPanelTranslation(F)V
    .locals 1
    .param p1, "translation"    # F

    .prologue
    .line 3010
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTranslationX(F)V

    .line 3011
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3009
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 3108
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setVisibility(I)V

    .line 3109
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateFullyVisibleState(Z)V

    .line 3107
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 2744
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldGestureIgnoreXTouchSlop(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->isOnAffordanceIcon(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected shouldUseDismissingAnimation()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2721
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-eqz v2, :cond_1

    .line 2722
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardCurrentlySecure()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 2721
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public showEmptyShadeView(Z)V
    .locals 0
    .param p1, "emptyShadeViewVisible"    # Z

    .prologue
    .line 2801
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowEmptyShadeView:Z

    .line 2802
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateEmptyShadeView()V

    .line 2800
    return-void
.end method

.method public startFaceUnlockByMove()V
    .locals 2

    .prologue
    .line 2701
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startFaceUnlockByMove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startFaceUnlock()V

    .line 2700
    return-void
.end method

.method public stopFaceUnlockByMove()V
    .locals 1

    .prologue
    .line 2707
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopFaceUnlock()V

    .line 2706
    return-void
.end method

.method public triggerAction(ZFF)V
    .locals 3
    .param p1, "rightPage"    # Z
    .param p2, "translation"    # F
    .param p3, "vel"    # F

    .prologue
    const/4 v0, 0x1

    .line 2580
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_2

    move v0, p1

    .line 2581
    .local v0, "start":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 2582
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V

    .line 2579
    :cond_1
    return-void

    .line 2580
    .end local v0    # "start":Z
    :cond_2
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDismissView(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x0

    .line 3286
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 3287
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/DismissView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_0
    if-eq v2, p1, :cond_1

    .line 3288
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    if-eqz p1, :cond_5

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/DismissView;->setVisibility(I)V

    .line 3292
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 3293
    const/4 v4, 0x2

    .line 3292
    if-ne v2, v4, :cond_6

    const/4 v1, 0x1

    .line 3294
    .local v1, "landscape":Z
    :goto_2
    if-eqz p1, :cond_2

    if-eqz v1, :cond_7

    :cond_2
    const/4 v0, 0x0

    .line 3295
    .local v0, "hasExtraRange":Z
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_8

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewBottomMargin:I

    .line 3296
    :goto_4
    if-eqz v0, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewSize:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewBottomMargin:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    .line 3295
    :cond_3
    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setExtraBottomRange(II)V

    .line 3285
    return-void

    .end local v0    # "hasExtraRange":Z
    .end local v1    # "landscape":Z
    :cond_4
    move v2, v3

    .line 3287
    goto :goto_0

    .line 3288
    :cond_5
    const/4 v2, 0x4

    goto :goto_1

    .line 3292
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "landscape":Z
    goto :goto_2

    .line 3294
    :cond_7
    const/4 v0, 0x1

    .restart local v0    # "hasExtraRange":Z
    goto :goto_3

    :cond_8
    move v2, v3

    .line 3295
    goto :goto_4
.end method

.method protected updateExpandedHeight(F)V
    .locals 2
    .param p1, "expandedHeight"    # F

    .prologue
    .line 3015
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTracking:Z

    if-eqz v0, :cond_0

    .line 3016
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCurrentExpandVelocity()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setExpandingVelocity(F)V

    .line 3018
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setExpandedHeight(F)V

    .line 3019
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateKeyguardBottomAreaAlpha()V

    .line 3020
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateStatusBarIcons()V

    .line 3014
    return-void
.end method

.method public updateGxzwState()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 3324
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3325
    return-void

    .line 3327
    :cond_0
    invoke-static {}, Lcom/android/systemui/Dependency;->getHost()Lcom/android/systemui/doze/DozeHost;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/systemui/Dependency;->getHost()Lcom/android/systemui/doze/DozeHost;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/systemui/doze/DozeHost;->isDozing()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3328
    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/fod/MiuiGxzwManager;->isShouldShowGxzwIconInKeyguard()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3331
    :goto_0
    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/keyguard/fod/MiuiGxzwManager;->dismissGxzwIconView(Z)V

    .line 3323
    :goto_1
    return-void

    .line 3329
    :cond_1
    sget-object v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "updateGxzwState: dozing"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3333
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->canShowGxzw()Z

    move-result v4

    .line 3334
    .local v4, "moveHelperCanShow":Z
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->canShowGxzw()Z

    move-result v0

    .line 3335
    .local v0, "bottomAreaCanShow":Z
    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/fod/MiuiGxzwManager;->isBouncer()Z

    move-result v1

    .line 3336
    .local v1, "bouncer":Z
    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/fod/MiuiGxzwManager;->isIgnoreFocusChange()Z

    move-result v3

    .line 3337
    .local v3, "ignoreFocusChange":Z
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardOccluded:Z

    if-eqz v6, :cond_6

    :cond_3
    move v2, v5

    .line 3339
    .local v2, "canShow":Z
    :goto_2
    if-eqz v2, :cond_4

    if-eqz v1, :cond_7

    :cond_4
    const/4 v2, 0x0

    .line 3341
    .end local v2    # "canShow":Z
    :goto_3
    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/fod/MiuiGxzwManager;->isShouldShowGxzwIconInKeyguard()Z

    move-result v6

    if-eq v6, v2, :cond_5

    .line 3342
    sget-object v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateGxzwState: mQsExpanded = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mKeyguardOccluded = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardOccluded:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3343
    const-string/jumbo v8, ", moveHelperCanShow = "

    .line 3342
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3343
    const-string/jumbo v8, ", bottomAreaCanShow = "

    .line 3342
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3344
    const-string/jumbo v8, ", bouncer = "

    .line 3342
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3344
    const-string/jumbo v8, ", mHasWindowFocus = "

    .line 3342
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3344
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasWindowFocus:Z

    .line 3342
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3345
    const-string/jumbo v8, ", ignoreFocusChange = "

    .line 3342
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    :cond_5
    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v6

    if-eqz v2, :cond_9

    :goto_4
    invoke-virtual {v6, v5}, Lcom/android/keyguard/fod/MiuiGxzwManager;->dismissGxzwIconView(Z)V

    goto/16 :goto_1

    .line 3337
    :cond_6
    if-eqz v4, :cond_3

    move v2, v0

    .line 3338
    goto :goto_2

    .line 3340
    .restart local v2    # "canShow":Z
    :cond_7
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasWindowFocus:Z

    if-nez v6, :cond_8

    move v2, v3

    goto :goto_3

    :cond_8
    const/4 v2, 0x1

    .local v2, "canShow":Z
    goto/16 :goto_3

    .line 3347
    .end local v2    # "canShow":Z
    :cond_9
    const/4 v5, 0x1

    goto :goto_4
.end method

.method protected updateLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 699
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 700
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelWidth:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelGravity:I

    if-eq v1, v2, :cond_1

    .line 701
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 702
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelGravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 703
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 706
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 707
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelWidth:I

    if-ne v1, v2, :cond_2

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelGravity:I

    if-eq v1, v2, :cond_3

    .line 708
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 709
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelGravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 710
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 713
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 714
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelWidth:I

    if-ne v1, v2, :cond_4

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelGravity:I

    if-eq v1, v2, :cond_5

    .line 715
    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 716
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelGravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 717
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizerPaddingTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizerPaddingBottom:I

    invoke-virtual {v1, v4, v2, v4, v3}, Lcom/android/systemui/qs/customize/QSCustomizer;->setPadding(IIII)V

    .line 721
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSDetail;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 722
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelWidth:I

    if-ne v1, v2, :cond_6

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelGravity:I

    if-eq v1, v2, :cond_8

    .line 725
    :cond_6
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 726
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelGravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 727
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSDetailMarginTop:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 728
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSDetailMarginBottom:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 729
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSDetail;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 697
    :cond_7
    return-void

    .line 723
    :cond_8
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSDetailMarginTop:I

    if-ne v1, v2, :cond_6

    .line 724
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSDetailMarginBottom:I

    if-eq v1, v2, :cond_7

    goto :goto_0
.end method

.method protected updateQsExpansion()V
    .locals 4

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_0

    return-void

    .line 1894
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeaderTranslation()F

    move-result v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getAppearFraction()F

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/plugins/qs/QS;->setQsExpansion(FFF)V

    .line 1892
    return-void
.end method

.method public updateResources(Z)V
    .locals 8
    .param p1, "isThemeChanged"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 602
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 603
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QS;->closeDetail()V

    .line 605
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 606
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 607
    .local v0, "newConfig":Landroid/content/res/Configuration;
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->loadDimens(Landroid/content/res/Resources;)V

    .line 608
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateLayout()V

    .line 609
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v3, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateResources(Z)V

    .line 610
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v3, p1}, Lcom/android/systemui/qs/QSDetail;->updateResources(Z)V

    .line 611
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->updateResources(Z)V

    .line 613
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    if-eq v3, v4, :cond_2

    .line 614
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    .line 615
    const v3, 0x90e0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 616
    .local v1, "qqs_count":I
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v7, :cond_1

    .line 617
    const v3, 0x90e0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 619
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->saveValueToTunerService(I)V

    .line 620
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetVerticalPanelPosition()V

    .line 621
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->reset(Z)V

    .line 624
    .end local v1    # "qqs_count":I
    :cond_2
    if-eqz p1, :cond_5

    .line 625
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->reInflateThemeBackgroundView()V

    .line 626
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isDefaultLockScreenTheme()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDefaultTheme:Z

    .line 627
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isDefaultTheme = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDefaultTheme:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/Class;Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 629
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDefaultTheme:Z

    if-eqz v3, :cond_7

    .line 630
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeAwesomeLockScreen()V

    .line 638
    :cond_3
    :goto_0
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateWallpaper(Z)V

    .line 639
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-virtual {p0, v3, v6, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBarState(IZZ)V

    .line 641
    :cond_4
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 647
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 641
    new-array v5, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 650
    :cond_5
    iget v3, v0, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastDensityDpi:I

    if-eq v3, v4, :cond_6

    .line 651
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->reInflateKeyguardMoveLeftView()V

    .line 652
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->reset(Z)V

    .line 654
    :cond_6
    iget v3, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastDensityDpi:I

    .line 656
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->onConfigurationChanged()V

    .line 601
    return-void

    .line 633
    :cond_7
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addAwesomeLockScreenIfNeed(Z)V

    .line 634
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScreenOn:Z

    if-eqz v3, :cond_3

    .line 635
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAwesomeLockScreenResume()V

    goto :goto_0
.end method

.method public updateToggleColumns()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateToggleColumns()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->updateToggleColumns()V

    :cond_1
    return-void
.end method
