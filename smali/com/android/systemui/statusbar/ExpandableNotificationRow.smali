.class public Lcom/android/systemui/statusbar/ExpandableNotificationRow;
.super Lcom/android/systemui/statusbar/ActivatableNotificationView;
.source "ExpandableNotificationRow.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;,
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$2;,
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;,
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;,
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;,
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/ActivatableNotificationView;",
        "Lcom/android/systemui/plugins/PluginListener",
        "<",
        "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;",
        ">;"
    }
.end annotation


# static fields
.field private static final TRANSLATE_CONTENT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAboveShelf:Z

.field private mAppName:Ljava/lang/String;

.field private mChildAfterViewWhenDismissed:Landroid/view/View;

.field private mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

.field private mChildrenContainerStub:Landroid/view/ViewStub;

.field private mChildrenExpanded:Z

.field private mContentTransformationAmount:F

.field private mDismissAllInProgress:Z

.field private mDismissed:Z

.field private mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mExpandable:Z

.field private mExpandedWhenPinned:Z

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mForceUnlocked:Z

.field private mGroupExpansionChanging:Z

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mGroupParentWhenDismissed:Landroid/view/View;

.field private mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mGutsStub:Landroid/view/ViewStub;

.field private mHasExtraBottomPadding:Z

.field private mHasExtraTopPadding:Z

.field private mHasUserChangedExpansion:Z

.field private mHeadsUpHeight:I

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mHeadsupDisappearRunning:Z

.field private mHideSensitiveForIntrinsicHeight:Z

.field private mIconAnimationRunning:Z

.field private mIconTransformContentShift:I

.field private mIconTransformContentShiftNoIcon:I

.field private mIconsVisible:Z

.field private mIncreasedPaddingBetweenElements:I

.field private mIsColorized:Z

.field private mIsFirstRow:Z

.field private mIsHeadsUp:Z

.field private mIsLastChild:Z

.field private mIsLowPriority:Z

.field private mIsPinned:Z

.field private mIsShowHeadsUpBackground:Z

.field private mIsSummaryWithChildren:Z

.field private mIsSystemChildExpanded:Z

.field private mIsSystemExpanded:Z

.field private mJustClicked:Z

.field private mKeepInParent:Z

.field private mLargeIcon:Landroid/widget/ImageView;

.field private mLastChronometerRunning:Z

.field private mLayoutListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;

.field private mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

.field private mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

.field private mLoggingKey:Ljava/lang/String;

.field private mLowPriorityStateUpdated:Z

.field private mMaxExpandHeight:I

.field private mMaxHeadsUpHeight:I

.field private mMaxHeadsUpHeightIncreased:I

.field private mMaxHeadsUpHeightLegacy:I

.field private mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

.field private mNeedDrawBgBottomDivider:Z

.field private mNeedDrawBgTopDivider:Z

.field private mNotificationAmbientHeight:I

.field private mNotificationHeadsUpBgRadius:I

.field private final mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

.field private mNotificationMaxHeight:I

.field private mNotificationMinHeight:I

.field private mNotificationMinHeightLarge:I

.field private mNotificationMinHeightLegacy:I

.field private mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnDismissRunnable:Ljava/lang/Runnable;

.field private mOnExpandClickListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;

.field private mOnKeyguard:Z

.field private mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

.field private mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

.field private mRefocusOnDismiss:Z

.field private mRemoved:Z

.field private mSensitive:Z

.field private mSensitiveHiddenInGeneral:Z

.field private mShowAmbient:Z

.field private mShowNoBackground:Z

.field private mShowingPublic:Z

.field private mShowingPublicInitialized:Z

.field private mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

.field private mTranslateAnim:Landroid/animation/Animator;

.field private mTranslateableViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslationWhenRemoved:F

.field private mUseIncreasedCollapsedHeight:Z

.field private mUseIncreasedHeadsUpHeight:Z

.field private mUserExpanded:Z

.field private mUserLocked:Z

.field private mWasChildInGroupWhenRemoved:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLowPriority:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnExpandClickListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationContentView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;)Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/ViewStub;)Landroid/view/ViewStub;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->addLargeIcon()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ZZ)V
    .locals 0
    .param p1, "userAction"    # Z
    .param p2, "wasExpanded"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onExpansionChanged(ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 218
    new-instance v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$2;

    const-string/jumbo v1, "translate"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$2;-><init>(Ljava/lang/String;)V

    .line 217
    sput-object v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->TRANSLATE_CONTENT:Landroid/util/Property;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 1210
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 161
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLastChronometerRunning:Z

    .line 182
    new-instance v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 235
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconsVisible:Z

    .line 1211
    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 1212
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    .line 1213
    new-instance v0, Lcom/android/systemui/statusbar/NotificationMenuRow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationMenuRow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 1214
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->initDimens()V

    .line 1209
    return-void
.end method

.method private addLargeIcon()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 355
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-nez v1, :cond_0

    .line 356
    return-void

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLargeIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 360
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 361
    .local v0, "inflator":Landroid/view/LayoutInflater;
    const v1, 0x10900ab

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLargeIcon:Landroid/widget/ImageView;

    .line 362
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLargeIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLargeIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->addView(Landroid/view/View;)V

    .line 364
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLargeIcon:Landroid/widget/ImageView;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->applyRightIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/widget/ImageView;)V

    .line 365
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLargeIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLargeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLargeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    .end local v0    # "inflator":Landroid/view/LayoutInflater;
    :cond_1
    return-void
.end method

.method private animateShowingPublic(JJ)V
    .locals 11
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    .line 1828
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v6, :cond_0

    .line 1829
    const/4 v6, 0x1

    new-array v2, v6, [Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    const/4 v7, 0x0

    aput-object v6, v2, v7

    .line 1831
    .local v2, "privateViews":[Landroid/view/View;
    :goto_0
    const/4 v6, 0x1

    new-array v3, v6, [Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v7, 0x0

    aput-object v6, v3, v7

    .line 1832
    .local v3, "publicViews":[Landroid/view/View;
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v6, :cond_1

    move-object v0, v2

    .line 1833
    .local v0, "hiddenChildren":[Landroid/view/View;
    :goto_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v6, :cond_2

    move-object v5, v3

    .line 1834
    .local v5, "shownChildren":[Landroid/view/View;
    :goto_2
    const/4 v6, 0x0

    array-length v7, v0

    :goto_3
    if-ge v6, v7, :cond_3

    aget-object v1, v0, v6

    .line 1835
    .local v1, "hiddenView":Landroid/view/View;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1836
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1837
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 1838
    const/4 v9, 0x0

    .line 1837
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 1841
    new-instance v9, Lcom/android/systemui/statusbar/ExpandableNotificationRow$6;

    invoke-direct {v9, p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$6;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    .line 1837
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 1834
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1830
    .end local v0    # "hiddenChildren":[Landroid/view/View;
    .end local v1    # "hiddenView":Landroid/view/View;
    .end local v2    # "privateViews":[Landroid/view/View;
    .end local v3    # "publicViews":[Landroid/view/View;
    .end local v5    # "shownChildren":[Landroid/view/View;
    :cond_0
    const/4 v6, 0x1

    new-array v2, v6, [Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v7, 0x0

    aput-object v6, v2, v7

    .restart local v2    # "privateViews":[Landroid/view/View;
    goto :goto_0

    .line 1832
    .restart local v3    # "publicViews":[Landroid/view/View;
    :cond_1
    move-object v0, v3

    .restart local v0    # "hiddenChildren":[Landroid/view/View;
    goto :goto_1

    .line 1833
    :cond_2
    move-object v5, v2

    .restart local v5    # "shownChildren":[Landroid/view/View;
    goto :goto_2

    .line 1848
    :cond_3
    const/4 v6, 0x0

    array-length v7, v5

    :goto_4
    if-ge v6, v7, :cond_4

    aget-object v4, v5, v6

    .line 1849
    .local v4, "showView":Landroid/view/View;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1850
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1851
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1852
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 1853
    const/high16 v9, 0x3f800000    # 1.0f

    .line 1852
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1848
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1827
    .end local v4    # "showView":Landroid/view/View;
    :cond_4
    return-void
.end method

.method private getFontScaledHeight(I)I
    .locals 4
    .param p1, "dimenId"    # I

    .prologue
    .line 1241
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1242
    .local v0, "dimensionPixelSize":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 1243
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 1242
    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1244
    .local v1, "factor":F
    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v2, v2

    return v2
.end method

.method private static getHeaderIcon(Landroid/view/NotificationHeaderView;)Landroid/view/View;
    .locals 1
    .param p0, "header"    # Landroid/view/NotificationHeaderView;

    .prologue
    .line 2519
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getPinnedHeadsUpHeight(Z)I
    .locals 2
    .param p1, "atLeastMinHeight"    # Z

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 689
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    if-eqz v0, :cond_1

    .line 690
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 691
    :cond_1
    if-eqz p1, :cond_2

    .line 692
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 694
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpHeight:I

    return v0
.end method

.method private initDimens()V
    .locals 2

    .prologue
    .line 1218
    const v0, 0x90f00a2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getFontScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeightLegacy:I

    .line 1219
    const v0, 0x90f00a0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getFontScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeight:I

    .line 1221
    const v0, 0x90f00a1

    .line 1220
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getFontScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeightLarge:I

    .line 1222
    const v0, 0x90f00a3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getFontScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMaxHeight:I

    .line 1223
    const v0, 0x90f00a4    # 1.72133E-33f

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getFontScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationAmbientHeight:I

    .line 1225
    const v0, 0x90f00a5

    .line 1224
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getFontScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxHeadsUpHeightLegacy:I

    .line 1226
    const v0, 0x90f00a6

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getFontScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxHeadsUpHeight:I

    .line 1228
    const v0, 0x90f00a7

    .line 1227
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getFontScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxHeadsUpHeightIncreased:I

    .line 1229
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1230
    const v1, 0x90f014f

    .line 1229
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIncreasedPaddingBetweenElements:I

    .line 1231
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1232
    const v1, 0x90f00ac

    .line 1231
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconTransformContentShiftNoIcon:I

    .line 1233
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f0450

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationHeadsUpBgRadius:I

    .line 1217
    return-void
.end method

.method private isHeadsUpAllowed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1643
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowAmbient:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSystemChildExpanded()Z
    .locals 1

    .prologue
    .line 1703
    const/4 v0, 0x0

    return v0
.end method

.method private onChildrenCountChanged()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1652
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    if-eqz v4, :cond_3

    .line 1653
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    .line 1652
    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 1654
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1655
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateNotificationHeader(Landroid/view/View$OnClickListener;)V

    .line 1658
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    .line 1659
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    .line 1660
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateChildrenHeaderAppearance()V

    .line 1661
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateChildrenVisibility()V

    .line 1662
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    if-eqz v4, :cond_4

    .line 1663
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4, v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->setHasShownAfterUnlock(Z)V

    .line 1665
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v3

    .line 1666
    .local v3, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1667
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1668
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v2

    .line 1669
    .local v2, "notification":Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    if-eqz v2, :cond_1

    .line 1670
    invoke-virtual {v2, v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->setHasShownAfterUnlock(Z)V

    .line 1666
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "i":I
    .end local v2    # "notification":Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    .end local v3    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_2
    move v4, v5

    .line 1653
    goto :goto_0

    :cond_3
    move v4, v5

    .line 1652
    goto :goto_0

    .line 1651
    :cond_4
    return-void
.end method

.method private onExpansionChanged(ZZ)V
    .locals 4
    .param p1, "userAction"    # Z
    .param p2, "wasExpanded"    # Z

    .prologue
    .line 2257
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v1

    .line 2258
    .local v1, "nowExpanded":Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLowPriority:Z

    if-eqz v2, :cond_0

    if-eqz p2, :cond_1

    .line 2259
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    .line 2261
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v2, :cond_2

    .line 2262
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onExpansionChanged()V

    .line 2264
    :cond_2
    if-eq v1, p2, :cond_6

    .line 2265
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isContentExpandable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2266
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;->logNotificationExpansion(Ljava/lang/String;ZZ)V

    .line 2268
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v2, :cond_4

    .line 2269
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->onExpansionChanged()V

    .line 2271
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLowPriority()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2272
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 2273
    .local v0, "headerView":Landroid/view/NotificationHeaderView;
    if-eqz v0, :cond_5

    .line 2274
    invoke-virtual {v0, v1}, Landroid/view/NotificationHeaderView;->setExpanded(Z)V

    .line 2277
    .end local v0    # "headerView":Landroid/view/NotificationHeaderView;
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackground()V

    .line 2256
    :cond_6
    return-void
.end method

.method private setChronometerRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 3
    .param p1, "running"    # Z
    .param p2, "layout"    # Lcom/android/systemui/statusbar/NotificationContentView;

    .prologue
    .line 728
    if-eqz p2, :cond_0

    .line 729
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result p1

    .line 730
    .end local p1    # "running":Z
    :goto_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    .line 731
    .local v0, "contractedChild":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v1

    .line 732
    .local v1, "expandedChild":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v2

    .line 733
    .local v2, "headsUpChild":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunningForChild(ZLandroid/view/View;)V

    .line 734
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunningForChild(ZLandroid/view/View;)V

    .line 735
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunningForChild(ZLandroid/view/View;)V

    .line 727
    .end local v0    # "contractedChild":Landroid/view/View;
    .end local v1    # "expandedChild":Landroid/view/View;
    .end local v2    # "headsUpChild":Landroid/view/View;
    :cond_0
    return-void

    .line 729
    .restart local p1    # "running":Z
    :cond_1
    const/4 p1, 0x1

    .local p1, "running":Z
    goto :goto_0
.end method

.method private setChronometerRunningForChild(ZLandroid/view/View;)V
    .locals 2
    .param p1, "running"    # Z
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 740
    if-eqz p2, :cond_0

    .line 741
    const v1, 0x10203ba

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 742
    .local v0, "chronometer":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Chronometer;

    if-eqz v1, :cond_0

    .line 743
    check-cast v0, Landroid/widget/Chronometer;

    .end local v0    # "chronometer":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/widget/Chronometer;->setStarted(Z)V

    .line 739
    :cond_0
    return-void
.end method

.method private setIconAnimationRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 3
    .param p1, "running"    # Z
    .param p2, "layout"    # Lcom/android/systemui/statusbar/NotificationContentView;

    .prologue
    .line 303
    if-eqz p2, :cond_0

    .line 304
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    .line 305
    .local v0, "contractedChild":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v1

    .line 306
    .local v1, "expandedChild":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v2

    .line 307
    .local v2, "headsUpChild":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 308
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 309
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 302
    .end local v0    # "contractedChild":Landroid/view/View;
    .end local v1    # "expandedChild":Landroid/view/View;
    .end local v2    # "headsUpChild":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setIconAnimationRunningForChild(ZLandroid/view/View;)V
    .locals 3
    .param p1, "running"    # Z
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 314
    if-eqz p2, :cond_0

    .line 315
    const v2, 0x1020006

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 316
    .local v0, "icon":Landroid/widget/ImageView;
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconRunning(Landroid/widget/ImageView;Z)V

    .line 318
    const v2, 0x1020044

    .line 317
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 319
    .local v1, "rightIcon":Landroid/widget/ImageView;
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconRunning(Landroid/widget/ImageView;Z)V

    .line 313
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "rightIcon":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private setIconRunning(Landroid/widget/ImageView;Z)V
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "running"    # Z

    .prologue
    .line 324
    if-eqz p1, :cond_0

    .line 325
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 326
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_2

    move-object v1, v2

    .line 327
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 328
    .local v1, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz p2, :cond_1

    .line 329
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 323
    .end local v1    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 331
    .restart local v1    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    .line 333
    .end local v1    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_2
    instance-of v3, v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 334
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 335
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimatedVectorDrawable;
    if-eqz p2, :cond_3

    .line 336
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_0

    .line 338
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    goto :goto_0
.end method

.method private updateChildrenVisibility()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1412
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisibility(I)V

    .line 1414
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_1

    .line 1415
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setVisibility(I)V

    .line 1419
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateLimits()V

    .line 1411
    return-void

    :cond_2
    move v0, v1

    .line 1412
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1416
    goto :goto_1
.end method

.method private updateClickAndFocus()V
    .locals 3

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v1

    .line 779
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_3

    move v0, v1

    .line 780
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isFocusable()Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 781
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setFocusable(Z)V

    .line 783
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClickable()Z

    move-result v2

    if-eq v2, v0, :cond_1

    .line 784
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClickable(Z)V

    .line 777
    :cond_1
    return-void

    .line 778
    :cond_2
    const/4 v1, 0x1

    .local v1, "normalChild":Z
    goto :goto_0

    .line 779
    .end local v1    # "normalChild":Z
    :cond_3
    const/4 v0, 0x0

    .local v0, "clickable":Z
    goto :goto_1
.end method

.method private updateContentShiftHeight()V
    .locals 4

    .prologue
    .line 1741
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    .line 1742
    .local v1, "notificationHeader":Landroid/view/NotificationHeaderView;
    if-eqz v1, :cond_0

    .line 1743
    invoke-static {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getHeaderIcon(Landroid/view/NotificationHeaderView;)Landroid/view/View;

    move-result-object v0

    .line 1744
    .local v0, "icon":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getRelativeTopPadding(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconTransformContentShift:I

    .line 1740
    .end local v0    # "icon":Landroid/view/View;
    :goto_0
    return-void

    .line 1746
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconTransformContentShiftNoIcon:I

    iput v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconTransformContentShift:I

    goto :goto_0
.end method

.method private updateContentTransformation()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1096
    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContentTransformationAmount:F

    neg-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconTransformContentShift:I

    int-to-float v4, v4

    mul-float v2, v3, v4

    .line 1097
    .local v2, "translationY":F
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLastChild:Z

    if-eqz v3, :cond_0

    .line 1098
    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContentTransformationAmount:F

    sub-float v0, v5, v3

    .line 1099
    .local v0, "contentAlpha":F
    const/high16 v3, 0x3f000000    # 0.5f

    div-float v3, v0, v3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1100
    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 1101
    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    .line 1105
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 1106
    .local v1, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    .line 1107
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->setTranslationY(F)V

    .line 1105
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1103
    .end local v0    # "contentAlpha":F
    .end local v1    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "contentAlpha":F
    goto :goto_0

    .line 1109
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v3, :cond_2

    .line 1110
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setAlpha(F)V

    .line 1111
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setTranslationY(F)V

    .line 1094
    :cond_2
    return-void
.end method

.method private updateIconVisibilities()V
    .locals 5

    .prologue
    .line 1117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1118
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isBelowSpeedBump()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1119
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconsVisible:Z

    .line 1120
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 1121
    .local v0, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setIconsVisible(Z)V

    .line 1120
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1117
    .end local v0    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_1
    const/4 v1, 0x1

    .local v1, "visible":Z
    goto :goto_0

    .line 1123
    .end local v1    # "visible":Z
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v2, :cond_3

    .line 1124
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setIconsVisible(Z)V

    .line 1116
    :cond_3
    return-void
.end method

.method private updateLimits()V
    .locals 4

    .prologue
    .line 413
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 414
    .local v0, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateLimitsForView(Lcom/android/systemui/statusbar/NotificationContentView;)V

    .line 413
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    .end local v0    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_0
    return-void
.end method

.method private updateLimitsForView(Lcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 8
    .param p1, "layout"    # Lcom/android/systemui/statusbar/NotificationContentView;

    .prologue
    const v7, 0x10203b6

    const/4 v2, 0x0

    .line 419
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 420
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v7, :cond_2

    const/4 v1, 0x1

    .line 422
    .local v1, "customView":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget v5, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v6, 0x18

    if-ge v5, v6, :cond_4

    const/4 v0, 0x1

    .line 424
    .local v0, "beforeN":Z
    :goto_1
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v5, :cond_5

    .line 426
    :cond_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUseIncreasedCollapsedHeight:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    if-ne p1, v5, :cond_6

    .line 427
    iget v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeightLarge:I

    .line 431
    .local v4, "minHeight":I
    :goto_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 432
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v7, :cond_1

    const/4 v2, 0x1

    .line 435
    .local v2, "headsUpCustom":Z
    :cond_1
    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 436
    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxHeadsUpHeightLegacy:I

    .line 442
    .local v3, "headsUpheight":I
    :goto_3
    iget v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMaxHeight:I

    .line 443
    iget v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationAmbientHeight:I

    .line 442
    invoke-virtual {p1, v4, v3, v5, v6}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeights(IIII)V

    .line 418
    return-void

    .line 420
    .end local v0    # "beforeN":Z
    .end local v1    # "customView":Z
    .end local v2    # "headsUpCustom":Z
    .end local v3    # "headsUpheight":I
    .end local v4    # "minHeight":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "customView":Z
    goto :goto_0

    .line 419
    .end local v1    # "customView":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "customView":Z
    goto :goto_0

    .line 422
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "beforeN":Z
    goto :goto_1

    .line 425
    :cond_5
    iget v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeightLegacy:I

    .restart local v4    # "minHeight":I
    goto :goto_2

    .line 429
    .end local v4    # "minHeight":I
    :cond_6
    iget v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeight:I

    .restart local v4    # "minHeight":I
    goto :goto_2

    .line 437
    .restart local v2    # "headsUpCustom":Z
    :cond_7
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUseIncreasedHeadsUpHeight:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    if-ne p1, v5, :cond_8

    .line 438
    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxHeadsUpHeightIncreased:I

    .restart local v3    # "headsUpheight":I
    goto :goto_3

    .line 440
    .end local v3    # "headsUpheight":I
    :cond_8
    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxHeadsUpHeight:I

    .restart local v3    # "headsUpheight":I
    goto :goto_3
.end method

.method private updateMaxHeights()V
    .locals 4

    .prologue
    .line 1751
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v2

    .line 1752
    .local v2, "intrinsicBefore":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v0

    .line 1753
    .local v0, "expandedChild":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1754
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    .line 1756
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    .line 1757
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v1

    .line 1758
    .local v1, "headsUpChild":Landroid/view/View;
    if-nez v1, :cond_1

    .line 1759
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v1

    .line 1761
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpHeight:I

    .line 1762
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1763
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 1750
    :cond_2
    return-void
.end method


# virtual methods
.method public addChildNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "childIndex"    # I

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainerStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V

    .line 511
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onChildrenCountChanged()V

    .line 512
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsChildInGroup(ZLcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->rebuildCollapseButton()V

    .line 506
    return-void
.end method

.method public animateTranslateNotification(F)V
    .locals 2
    .param p1, "leftTarget"    # F

    .prologue
    const/4 v1, 0x0

    .line 1320
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1323
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    .line 1324
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 1325
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1319
    :cond_1
    return-void
.end method

.method public applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z
    .locals 1
    .param p2, "visualStabilityManager"    # Lcom/android/systemui/statusbar/notification/VisualStabilityManager;
    .param p3, "callback"    # Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 608
    .local p1, "childOrder":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public applyChildrenState(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->applyState(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 619
    :cond_0
    return-void
.end method

.method public areChildrenExpanded()Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenExpanded:Z

    return v0
.end method

.method public areGutsExposed()Z
    .locals 1

    .prologue
    .line 1919
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canViewBeDismissed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1874
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitiveHiddenInGeneral:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public closeRemoteInput()V
    .locals 4

    .prologue
    .line 908
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 909
    .local v0, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->closeRemoteInput()V

    .line 908
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 907
    .end local v0    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_0
    return-void
.end method

.method public createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 844
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 845
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->createMenu(Landroid/view/ViewGroup;)V

    .line 846
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setAppName(Ljava/lang/String;)V

    .line 847
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 849
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 851
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-object v1
.end method

.method public createNewViewState(Lcom/android/systemui/statusbar/stack/StackScrollState;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .locals 2
    .param p1, "stackScrollState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 2337
    new-instance v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;)V

    return-object v0
.end method

.method protected disallowSingleClick(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2248
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2249
    .local v2, "y":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 2250
    .local v0, "header":Landroid/view/NotificationHeaderView;
    if-eqz v0, :cond_0

    .line 2251
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v3

    sub-float v3, v1, v3

    invoke-virtual {v0, v3, v2}, Landroid/view/NotificationHeaderView;->isInTouchRect(FF)Z

    move-result v3

    return v3

    .line 2253
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->disallowSingleClick(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3
.end method

.method public getAmbientSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getAmbientSingleLineChild()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundNormal()Lcom/android/systemui/statusbar/NotificationBackgroundView;
    .locals 1

    .prologue
    .line 2484
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    return-object v0
.end method

.method public getChildAfterViewWhenDismissed()Landroid/view/View;
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildAfterViewWhenDismissed:Landroid/view/View;

    return-object v0
.end method

.method public getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    return-object v0
.end method

.method public getChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 2
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 613
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    .line 614
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v0

    .line 615
    .local v0, "parentState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/ExpandableViewState;)V

    .line 612
    .end local v0    # "parentState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_0
    return-void
.end method

.method public getCollapsedHeight()I
    .locals 1

    .prologue
    .line 2030
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v0, :cond_1

    .line 2033
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMinHeight()I

    move-result v0

    return v0

    .line 2031
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getCollapsedHeight()I

    move-result v0

    return v0
.end method

.method public getContentTranslation()F
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getTranslationY()F

    move-result v0

    return v0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1933
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v0, :cond_1

    .line 1936
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    return-object v0

    .line 1934
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    return-object v0
.end method

.method public getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method public getExpandClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 2409
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getExtraBottomPadding()I
    .locals 1

    .prologue
    .line 1958
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1959
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIncreasedPaddingBetweenElements:I

    return v0

    .line 1961
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getExtraClipRightAmount()I
    .locals 1

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1367
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    return v0

    .line 1369
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getExtraPadding()I
    .locals 2

    .prologue
    .line 2472
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getGroupParentWhenDismissed()Landroid/view/View;
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupParentWhenDismissed:Landroid/view/View;

    return-object v0
.end method

.method public getGuts()Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object v0
.end method

.method public getIncreasedPaddingAmount()F
    .locals 1

    .prologue
    .line 2242
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 1612
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1613
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v0

    return v0

    .line 1615
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1616
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 1617
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1620
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHideSensitiveForIntrinsicHeight:Z

    if-eqz v0, :cond_4

    .line 1621
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMinHeight()I

    move-result v0

    return v0

    .line 1619
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v0

    return v0

    .line 1622
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_5

    .line 1624
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v0

    .line 1625
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getIntrinsicHeight()I

    move-result v1

    .line 1624
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1625
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getExtraPadding()I

    move-result v1

    .line 1624
    add-int/2addr v0, v1

    return v0

    .line 1626
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAllowed()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    if-eqz v0, :cond_a

    .line 1628
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    if-eqz v0, :cond_8

    .line 1629
    :cond_7
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPinnedHeadsUpHeight(Z)I

    move-result v0

    return v0

    .line 1630
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1631
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1633
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1635
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1636
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getExtraPadding()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 1638
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getExtraPadding()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getMaxContentHeight()I
    .locals 3

    .prologue
    .line 2005
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v1, :cond_1

    .line 2008
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 2009
    .local v0, "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMaxHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getExtraPadding()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    .line 2006
    .end local v0    # "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxContentHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getExtraPadding()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public getMaxExpandHeight()I
    .locals 1

    .prologue
    .line 1915
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    return v0
.end method

.method public getMinHeight()I
    .locals 2

    .prologue
    .line 2014
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2015
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getIntrinsicHeight()I

    move-result v1

    return v1

    .line 2016
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAllowed()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    if-eqz v1, :cond_2

    .line 2017
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isTrackingHeadsUp()Z

    move-result v1

    .line 2016
    if-eqz v1, :cond_2

    .line 2017
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v1, :cond_6

    .line 2019
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2021
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAllowed()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    if-eqz v1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v1, :cond_8

    .line 2024
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 2025
    .local v0, "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v1

    return v1

    .line 2018
    .end local v0    # "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_6
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPinnedHeadsUpHeight(Z)I

    move-result v1

    return v1

    .line 2019
    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-nez v1, :cond_3

    .line 2020
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMinHeight()I

    move-result v1

    return v1

    .line 2022
    :cond_8
    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpHeight:I

    return v1
.end method

.method public getNotificationChildren()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 587
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 1

    .prologue
    .line 749
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v0

    return-object v0

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationIcon()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1043
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1044
    .local v0, "notificationHeader":Landroid/view/NotificationHeaderView;
    if-eqz v0, :cond_0

    .line 1045
    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getHeaderIcon(Landroid/view/NotificationHeaderView;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 1047
    :cond_0
    return-object v1
.end method

.method public getNotificationInflater()Lcom/android/systemui/statusbar/notification/NotificationInflater;
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    return-object v0
.end method

.method public getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-object v0
.end method

.method protected getOutlineRadius()I
    .locals 1

    .prologue
    .line 2419
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2420
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationHeadsUpBgRadius:I

    return v0

    .line 2422
    :cond_1
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getOutlineRadius()I

    move-result v0

    return v0
.end method

.method public getPinnedHeadsUpHeight()I
    .locals 1

    .prologue
    .line 677
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPinnedHeadsUpHeight(Z)I

    move-result v0

    return v0
.end method

.method public getPositionOfChild(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)I
    .locals 1
    .param p1, "childRow"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 2221
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 2222
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v0

    return v0

    .line 2224
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    return-object v0
.end method

.method public getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-object v0
.end method

.method public getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    return-object v0
.end method

.method public getRelativeTopPadding(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1137
    const/4 v0, 0x0

    .line 1138
    .local v0, "topPadding":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 1139
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 1140
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1    # "view":Landroid/view/View;
    check-cast p1, Landroid/view/View;

    .line 1141
    .restart local p1    # "view":Landroid/view/View;
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    .line 1142
    return v0

    .line 1145
    :cond_1
    return v0
.end method

.method public getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;
    .locals 1

    .prologue
    .line 2070
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    goto :goto_0
.end method

.method public getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v0

    return-object v0
.end method

.method public getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    return-object v0
.end method

.method public getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 4
    .param p1, "leftTarget"    # F
    .param p2, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    const/4 v2, 0x0

    .line 1373
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 1374
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 1376
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1378
    return-object v2

    .line 1380
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->TRANSLATE_CONTENT:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    .line 1381
    const/4 v3, 0x0

    aput p1, v2, v3

    .line 1380
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1382
    .local v0, "translateAnim":Landroid/animation/ObjectAnimator;
    if-eqz p2, :cond_2

    .line 1383
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1385
    :cond_2
    new-instance v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow$5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$5;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1401
    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    .line 1402
    return-object v0
.end method

.method public getTranslation()F
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1356
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0

    .line 1360
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTranslationWhenRemoved()F
    .locals 1

    .prologue
    .line 1003
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslationWhenRemoved:F

    return v0
.end method

.method public getViewAtPosition(F)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 638
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenExpanded:Z

    if-eqz v1, :cond_0

    .line 641
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getViewAtPosition(F)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    .line 642
    .local v0, "view":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-nez v0, :cond_1

    .end local p0    # "this":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :goto_0
    return-object p0

    .line 639
    .end local v0    # "view":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local p0    # "this":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    return-object p0

    .restart local v0    # "view":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    move-object p0, v0

    .line 642
    goto :goto_0
.end method

.method public getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 1

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v0, :cond_1

    .line 763
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    return-object v0

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getVisibleHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    return-object v0
.end method

.method protected handleSlideBack()Z
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->animateTranslateNotification(F)V

    .line 566
    const/4 v0, 0x1

    return v0

    .line 568
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasExtraBottomPadding()Z
    .locals 1

    .prologue
    .line 2480
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasExtraBottomPadding:Z

    return v0
.end method

.method public hasExtraTopPadding()Z
    .locals 1

    .prologue
    .line 2476
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasExtraTopPadding:Z

    return v0
.end method

.method public hasLowPriorityStateUpdated()Z
    .locals 1

    .prologue
    .line 1167
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLowPriorityStateUpdated:Z

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 2497
    const/4 v0, 0x0

    return v0
.end method

.method public hasUserChangedExpansion()Z
    .locals 1

    .prologue
    .line 1474
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    return v0
.end method

.method public hideHeadsUpBackground()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2210
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsShowHeadsUpBackground:Z

    .line 2211
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackground()V

    .line 2213
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 2214
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2215
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hideHeadsUpBackground()V

    goto :goto_0

    .line 2209
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "row$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public inflateGuts()V
    .locals 1

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-nez v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1405
    :cond_0
    return-void
.end method

.method public isAboveShelf()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2342
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2343
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPinned:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAboveShelf:Z

    .line 2342
    :cond_0
    :goto_0
    return v0

    .line 2343
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isChildInGroup()Z
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClearable()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1594
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isClearable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1597
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v3, :cond_2

    .line 1599
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    .line 1600
    .local v2, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1601
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1602
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1603
    return v4

    .line 1595
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "i":I
    .end local v2    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_0
    return v4

    .line 1600
    .restart local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v1    # "i":I
    .restart local v2    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1607
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "i":I
    .end local v2    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method public isContentExpandable()Z
    .locals 2

    .prologue
    .line 1924
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v1, :cond_1

    .line 1927
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 1928
    .local v0, "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isContentExpandable()Z

    move-result v1

    return v1

    .line 1925
    .end local v0    # "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public isCustomViewNotification()Z
    .locals 2

    .prologue
    .line 2512
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2513
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->isCustomViewNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    return v0

    .line 2515
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isCustomViewNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    return v0
.end method

.method public isDimmable()Z
    .locals 1

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isDimmable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    const/4 v0, 0x0

    return v0

    .line 409
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isDimmable()Z

    move-result v0

    return v0
.end method

.method public isDismissAllInProgress()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDismissAllInProgress:Z

    return v0
.end method

.method public isDismissed()Z
    .locals 1

    .prologue
    .line 973
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDismissed:Z

    return v0
.end method

.method public isExpandable()Z
    .locals 1

    .prologue
    .line 1453
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v0, :cond_1

    .line 1456
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    return v0

    .line 1454
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenExpanded:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 1692
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isMediaNotification()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v0

    return v0
.end method

.method public isExpanded(Z)Z
    .locals 1
    .param p1, "allowOnKeyguard"    # Z

    .prologue
    .line 1696
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    .line 1697
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasUserChangedExpansion()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSystemExpanded()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSystemChildExpanded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1698
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v0

    .line 1696
    :goto_0
    return v0

    .line 1697
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1696
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpansionChanging()Z
    .locals 1

    .prologue
    .line 2491
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isExpansionChanging()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirstRow()Z
    .locals 1

    .prologue
    .line 2444
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsFirstRow:Z

    return v0
.end method

.method public isGroupExpanded()Z
    .locals 2

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupExpansionChanging()Z
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v0

    return v0

    .line 253
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    return v0
.end method

.method public isHeadsUp()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    return v0
.end method

.method public isHeadsUpAnimatingAway()Z
    .locals 1

    .prologue
    .line 1021
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    return v0
.end method

.method public isIsShowHeadsUpBackground()Z
    .locals 1

    .prologue
    .line 2206
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsShowHeadsUpBackground:Z

    return v0
.end method

.method public isLowPriority()Z
    .locals 1

    .prologue
    .line 1171
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLowPriority:Z

    return v0
.end method

.method public isMediaCustomNotification()Z
    .locals 1

    .prologue
    .line 2508
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isMediaNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isCustomViewNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMediaNotification()Z
    .locals 2

    .prologue
    .line 2501
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2502
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->isMediaNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    return v0

    .line 2504
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isMediaNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    return v0
.end method

.method public isOnKeyguard()Z
    .locals 1

    .prologue
    .line 929
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    return v0
.end method

.method public isPinned()Z
    .locals 1

    .prologue
    .line 672
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPinned:Z

    return v0
.end method

.method public isRemoved()Z
    .locals 1

    .prologue
    .line 985
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRemoved:Z

    return v0
.end method

.method public isShowingAmbient()Z
    .locals 1

    .prologue
    .line 2357
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowAmbient:Z

    return v0
.end method

.method public isShowingIcon()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1054
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1055
    return v0

    .line 1057
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isShowingPublic()Z
    .locals 1

    .prologue
    .line 1860
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    return v0
.end method

.method public isSummaryWithChildren()Z
    .locals 1

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    return v0
.end method

.method public isSystemExpanded()Z
    .locals 1

    .prologue
    .line 1549
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    return v0
.end method

.method public isUserExpanded()Z
    .locals 1

    .prologue
    .line 1478
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    return v0
.end method

.method public isUserLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1529
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mForceUnlocked:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public keepInParent()Z
    .locals 1

    .prologue
    .line 977
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKeepInParent:Z

    return v0
.end method

.method public makeActionsVisibile()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1878
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    .line 1879
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1880
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Landroid/service/notification/StatusBarNotification;Z)V

    .line 1882
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 1877
    return-void
.end method

.method public mustStayOnScreen()Z
    .locals 1

    .prologue
    .line 1865
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    return v0
.end method

.method protected needsOutline()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2414
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBar;->sGameMode:Z

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method public notifyHeightChanged(Z)V
    .locals 2
    .param p1, "needsAnimation"    # Z

    .prologue
    .line 1769
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->notifyHeightChanged(Z)V

    .line 1770
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->requestSelectLayout(Z)V

    .line 1768
    return-void

    .line 1770
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onAppearAnimationFinished(Z)V
    .locals 7
    .param p1, "wasAppearing"    # Z

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1941
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onAppearAnimationFinished(Z)V

    .line 1942
    if-eqz p1, :cond_1

    .line 1945
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v1, :cond_0

    .line 1946
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setAlpha(F)V

    .line 1947
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1, v2, v5}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1949
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 1950
    .local v0, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    .line 1951
    invoke-virtual {v0, v2, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1949
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1940
    .end local v0    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 801
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onAttachedToWindow()V

    .line 802
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    .line 803
    const-class v1, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    const/4 v2, 0x0

    .line 802
    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 800
    return-void
.end method

.method protected onBelowSpeedBumpChanged()V
    .locals 0

    .prologue
    .line 1091
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateIconVisibilities()V

    .line 1090
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onConfigurationChanged()V

    .line 894
    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 859
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->initDimens()V

    .line 862
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v5, :cond_0

    .line 863
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    iget-object v7, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    iget-object v8, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v8, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v5, v7, v8}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->reInflateViews(Landroid/view/View$OnClickListener;Landroid/service/notification/StatusBarNotification;)V

    .line 865
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v5, :cond_2

    .line 866
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 867
    .local v3, "oldGuts":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 868
    .local v0, "index":I
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeView(Landroid/view/View;)V

    .line 869
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 870
    const v7, 0x9040090

    .line 869
    invoke-virtual {v5, v7, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/NotificationGuts;

    iput-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 871
    sget-boolean v5, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-nez v5, :cond_1

    .line 872
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateLargeIconVisibility(Z)V

    .line 874
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    .line 875
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {p0, v5, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->addView(Landroid/view/View;I)V

    .line 877
    .end local v0    # "index":I
    .end local v3    # "oldGuts":Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v5}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v4

    .line 878
    .local v4, "oldMenu":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 879
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 880
    .local v2, "menuIndex":I
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeView(Landroid/view/View;)V

    .line 881
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v5, p0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->createMenu(Landroid/view/ViewGroup;)V

    .line 882
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    iget-object v7, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    invoke-interface {v5, v7}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setAppName(Ljava/lang/String;)V

    .line 883
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v5}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->addView(Landroid/view/View;I)V

    .line 885
    .end local v2    # "menuIndex":I
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    array-length v7, v5

    :goto_1
    if-ge v6, v7, :cond_5

    aget-object v1, v5, v6

    .line 886
    .local v1, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->onDensityOrFontScaleChanged()V

    .line 887
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->reInflateViews()V

    .line 885
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v1    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v4    # "oldMenu":Landroid/view/View;
    .restart local v0    # "index":I
    .restart local v3    # "oldGuts":Landroid/view/View;
    :cond_4
    move v5, v6

    .line 872
    goto :goto_0

    .line 889
    .end local v0    # "index":I
    .end local v3    # "oldGuts":Landroid/view/View;
    .restart local v4    # "oldMenu":Landroid/view/View;
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->onDensityOrFontScaleChanged()V

    .line 890
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onNotificationUpdated()V

    .line 858
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 808
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onDetachedFromWindow()V

    .line 809
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 807
    return-void
.end method

.method public onExpandedByGesture(Z)V
    .locals 3
    .param p1, "userExpanded"    # Z

    .prologue
    .line 2233
    const/16 v0, 0x199

    .line 2234
    .local v0, "event":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2235
    const/16 v0, 0x19a

    .line 2237
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 2232
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1258
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onFinishInflate()V

    .line 1260
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setContainingRow(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1261
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setContainingRow(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1262
    const v2, 0x91202e0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationContentView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    .line 1263
    const v2, 0x91202df

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationContentView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    .line 1264
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/systemui/statusbar/NotificationContentView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    aput-object v4, v2, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v5, 0x1

    aput-object v4, v2, v5

    iput-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    .line 1266
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    .line 1267
    .local v1, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    .line 1268
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/NotificationContentView;->setContainingNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1266
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1270
    .end local v1    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_0
    const v2, 0x91202e4

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    .line 1271
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    new-instance v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 1280
    const v2, 0x91202e2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainerStub:Landroid/view/ViewStub;

    .line 1281
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainerStub:Landroid/view/ViewStub;

    new-instance v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 1297
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    .line 1298
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1299
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1302
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainerStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1303
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1257
    return-void
.end method

.method public onFinishedExpansionChange()V
    .locals 1

    .prologue
    .line 2097
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    .line 2098
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 2096
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2283
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2284
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2285
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2287
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    .line 2288
    .local v0, "expandable":Z
    const/4 v1, 0x0

    .line 2289
    .local v1, "isExpanded":Z
    if-nez v0, :cond_2

    .line 2290
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v2, :cond_4

    .line 2291
    const/4 v0, 0x1

    .line 2292
    .local v0, "expandable":Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLowPriority:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2293
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v1

    .line 2300
    .end local v0    # "expandable":Z
    .end local v1    # "isExpanded":Z
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 2301
    if-eqz v1, :cond_5

    .line 2302
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_COLLAPSE:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2282
    :cond_3
    :goto_1
    return-void

    .line 2296
    .local v0, "expandable":Z
    .restart local v1    # "isExpanded":Z
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationContentView;->isContentExpandable()Z

    move-result v0

    .line 2297
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v1

    .local v1, "isExpanded":Z
    goto :goto_0

    .line 2304
    .end local v0    # "expandable":Z
    .end local v1    # "isExpanded":Z
    :cond_5
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v1, 0x0

    .line 1720
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onLayout(ZIIII)V

    .line 1721
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateMaxHeights()V

    .line 1722
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1723
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onHeightUpdate()V

    .line 1725
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateContentShiftHeight()V

    .line 1726
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayoutListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;

    if-eqz v0, :cond_1

    .line 1727
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayoutListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;->onLayout()V

    .line 1730
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setTop(I)V

    .line 1731
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_2

    .line 1732
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->setTop(I)V

    .line 1719
    :cond_2
    return-void
.end method

.method public onNotificationUpdated()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 379
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 380
    .local v0, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->onNotificationUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    .end local v0    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Landroid/app/NotificationCompat;->isColorized(Landroid/app/Notification;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsColorized:Z

    .line 383
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    .line 384
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v1, :cond_1

    .line 385
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onNotificationUpdated()V

    .line 387
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_2

    .line 388
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateNotificationHeader(Landroid/view/View$OnClickListener;)V

    .line 389
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->onNotificationUpdated()V

    .line 391
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconAnimationRunning:Z

    if-eqz v1, :cond_3

    .line 392
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    .line 394
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_4

    .line 395
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateChildrenHeaderAppearance()V

    .line 397
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onChildrenCountChanged()V

    .line 399
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    .line 400
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateLimits()V

    .line 401
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateIconVisibilities()V

    .line 378
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0
    .param p1, "plugin"    # Lcom/android/systemui/plugins/Plugin;
    .param p2, "pluginContext"    # Landroid/content/Context;

    .prologue
    .line 813
    check-cast p1, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .end local p1    # "plugin":Lcom/android/systemui/plugins/Plugin;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onPluginConnected(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;Landroid/content/Context;)V
    .locals 3
    .param p1, "plugin"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .param p2, "pluginContext"    # Landroid/content/Context;

    .prologue
    .line 814
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 815
    .local v0, "existed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 816
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeView(Landroid/view/View;)V

    .line 818
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 819
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->useDefaultMenuItems()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 820
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;>;"
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->createInfoItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    sget-boolean v2, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-eqz v2, :cond_4

    .line 823
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->createSnoozeItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setMenuItems(Ljava/util/ArrayList;)V

    .line 829
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;>;"
    :cond_1
    if-eqz v0, :cond_2

    .line 830
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 813
    :cond_2
    return-void

    .line 814
    .end local v0    # "existed":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 825
    .restart local v0    # "existed":Z
    .restart local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;>;"
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->createFilterItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0
    .param p1, "plugin"    # Lcom/android/systemui/plugins/Plugin;

    .prologue
    .line 835
    check-cast p1, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .end local p1    # "plugin":Lcom/android/systemui/plugins/Plugin;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V
    .locals 3
    .param p1, "plugin"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .prologue
    .line 836
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 837
    .local v0, "existed":Z
    :goto_0
    new-instance v1, Lcom/android/systemui/statusbar/NotificationMenuRow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 838
    if-eqz v0, :cond_0

    .line 839
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 835
    :cond_0
    return-void

    .line 836
    .end local v0    # "existed":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "existed":Z
    goto :goto_0
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1424
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1427
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1428
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1429
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1430
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 1431
    const/4 v1, 0x1

    return v1

    .line 1433
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 554
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    .line 554
    if-eqz v0, :cond_1

    .line 556
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 558
    :cond_1
    return v1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 2311
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2312
    return v1

    .line 2314
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2324
    const/4 v0, 0x0

    return v0

    .line 2316
    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->performDismiss(Landroid/view/View;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Z)V

    .line 2318
    return v1

    .line 2321
    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 2322
    return v1

    .line 2314
    nop

    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_1
        0x80000 -> :sswitch_1
        0x100000 -> :sswitch_0
    .end sparse-switch
.end method

.method public performDismiss()V
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnDismissRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1032
    :cond_0
    return-void
.end method

.method public prepareExpansionChanged(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->prepareExpansionChanged(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 625
    :cond_0
    return-void
.end method

.method public removeAllChildren()V
    .locals 6

    .prologue
    .line 934
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    .line 935
    .local v2, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 936
    .local v0, "clonedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 937
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 938
    .local v3, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->keepInParent()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 936
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 941
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 942
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsChildInGroup(ZLcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    goto :goto_1

    .line 944
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onChildrenCountChanged()V

    .line 932
    return-void
.end method

.method public removeChildNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const/4 v1, 0x0

    .line 517
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 520
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onChildrenCountChanged()V

    .line 521
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsChildInGroup(ZLcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 516
    return-void
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 1715
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayoutListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;

    .line 1714
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 1251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    .line 1252
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onHeightReset()V

    .line 1253
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->requestLayout()V

    .line 1250
    return-void
.end method

.method public resetTranslation()V
    .locals 3

    .prologue
    .line 1307
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 1308
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 1310
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1312
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1315
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->invalidateOutline()V

    .line 1316
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->resetMenu()V

    .line 1306
    return-void
.end method

.method public resetUserExpansion()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1513
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    .line 1514
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isMediaNotification()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1516
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    if-nez v1, :cond_0

    .line 1517
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    .line 1523
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_1

    .line 1524
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->onExpansionChanged()V

    .line 1512
    :cond_1
    return-void

    .line 1520
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    .line 1521
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    goto :goto_0
.end method

.method public setAboveShelf(Z)V
    .locals 0
    .param p1, "aboveShelf"    # Z

    .prologue
    .line 2361
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAboveShelf:Z

    .line 2360
    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 7
    .param p1, "height"    # I
    .param p2, "notifyListeners"    # Z

    .prologue
    .line 1973
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v4

    if-eq p1, v4, :cond_1

    const/4 v0, 0x1

    .line 1974
    .local v0, "changed":Z
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setActualHeight(IZ)V

    .line 1975
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1979
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1980
    .local v3, "parent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 1981
    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    .line 1984
    .end local v3    # "parent":Landroid/view/ViewGroup;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1985
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->setActualHeight(I)V

    .line 1986
    return-void

    .line 1973
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 1988
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMinHeight()I

    move-result v4

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1989
    .local v1, "contentHeight":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v4, 0x0

    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v2, v5, v4

    .line 1990
    .local v2, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContentHeight(I)V

    .line 1989
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1992
    .end local v2    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v4, :cond_4

    .line 1993
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setActualHeight(I)V

    .line 1995
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v4, :cond_5

    .line 1996
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->setActualHeight(I)V

    .line 1998
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1999
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onHeightUpdate()V

    .line 1972
    :cond_6
    return-void
.end method

.method public setActualHeightAnimating(Z)V
    .locals 1
    .param p1, "animating"    # Z

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContentHeightAnimating(Z)V

    .line 271
    :cond_0
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 2
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    .line 487
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setAppName(Ljava/lang/String;)V

    .line 485
    :cond_0
    return-void
.end method

.method protected setChildrenContainer(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;)V
    .locals 0
    .param p1, "childrenContainer"    # Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    .prologue
    .line 2405
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    .line 2404
    return-void
.end method

.method public setChildrenExpanded(ZZ)V
    .locals 3
    .param p1, "expanded"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 1886
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenExpanded:Z

    .line 1887
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1888
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 1890
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_2

    .line 1891
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setChildrenExpanded(Z)V

    .line 1893
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 1894
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateClickAndFocus()V

    .line 1895
    const-class v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSeen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onVisibilityChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 1885
    return-void
.end method

.method public setChronometerRunning(Z)V
    .locals 4
    .param p1, "running"    # Z

    .prologue
    .line 714
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLastChronometerRunning:Z

    .line 715
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V

    .line 716
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V

    .line 717
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v3, :cond_0

    .line 719
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    .line 720
    .local v2, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 721
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 722
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunning(Z)V

    .line 720
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 713
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "i":I
    .end local v2    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_0
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 4
    .param p1, "clipBottomAmount"    # I

    .prologue
    .line 2049
    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mClipBottomAmount:I

    if-eq p1, v1, :cond_1

    .line 2050
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipBottomAmount(I)V

    .line 2051
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 2052
    .local v0, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipBottomAmount(I)V

    .line 2051
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2054
    .end local v0    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v1, :cond_1

    .line 2055
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->setClipBottomAmount(I)V

    .line 2058
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v1, :cond_2

    .line 2061
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setClipBottomAmount(I)V

    .line 2048
    :cond_2
    return-void
.end method

.method public setClipToActualHeight(Z)V
    .locals 2
    .param p1, "clipToActualHeight"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1466
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    :goto_0
    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipToActualHeight(Z)V

    .line 1467
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipToActualHeight(Z)V

    .line 1465
    return-void

    :cond_1
    move v0, v1

    .line 1466
    goto :goto_0
.end method

.method public setClipTopAmount(I)V
    .locals 4
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 2038
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipTopAmount(I)V

    .line 2039
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 2040
    .local v0, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipTopAmount(I)V

    .line 2039
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2042
    .end local v0    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v1, :cond_1

    .line 2043
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->setClipTopAmount(I)V

    .line 2037
    :cond_1
    return-void
.end method

.method public setContentBackground(IZLcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 1
    .param p1, "customBackgroundColor"    # I
    .param p2, "animate"    # Z
    .param p3, "notificationContentView"    # Lcom/android/systemui/statusbar/NotificationContentView;

    .prologue
    .line 902
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    if-ne v0, p3, :cond_0

    .line 903
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTintColor(IZ)V

    .line 901
    :cond_0
    return-void
.end method

.method public setContentTransformationAmount(FZ)V
    .locals 2
    .param p1, "contentTransformationAmount"    # F
    .param p2, "isLastChild"    # Z

    .prologue
    .line 1070
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLastChild:Z

    if-eq p2, v1, :cond_1

    const/4 v0, 0x1

    .line 1071
    .local v0, "changeTransformation":Z
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContentTransformationAmount:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    or-int/2addr v0, v1

    .line 1072
    .local v0, "changeTransformation":Z
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLastChild:Z

    .line 1073
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContentTransformationAmount:F

    .line 1074
    if-eqz v0, :cond_0

    .line 1075
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateContentTransformation()V

    .line 1069
    :cond_0
    return-void

    .line 1070
    .end local v0    # "changeTransformation":Z
    :cond_1
    const/4 v0, 0x0

    .local v0, "changeTransformation":Z
    goto :goto_0

    .line 1071
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setDark(ZZJ)V
    .locals 3
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 1438
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setDark(ZZJ)V

    .line 1439
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-nez v1, :cond_0

    .line 1441
    const/4 p2, 0x0

    .line 1443
    .end local p2    # "fade":Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 1444
    .local v0, "showing":Lcom/android/systemui/statusbar/NotificationContentView;
    if-eqz v0, :cond_1

    .line 1445
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationContentView;->setDark(ZZJ)V

    .line 1447
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_2

    .line 1448
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setDark(ZZJ)V

    .line 1437
    :cond_2
    return-void
.end method

.method public setDismissAllInProgress(Z)V
    .locals 1
    .param p1, "dismissAllInProgress"    # Z

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDismissAllInProgress:Z

    if-eq v0, p1, :cond_0

    .line 266
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDismissAllInProgress:Z

    .line 264
    :cond_0
    return-void
.end method

.method public setDismissed(ZZ)V
    .locals 3
    .param p1, "dismissed"    # Z
    .param p2, "fromAccessibility"    # Z

    .prologue
    .line 958
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDismissed:Z

    .line 959
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupParentWhenDismissed:Landroid/view/View;

    .line 960
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRefocusOnDismiss:Z

    .line 961
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildAfterViewWhenDismissed:Landroid/view/View;

    .line 962
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 964
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v1

    .line 965
    .local v1, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 966
    .local v0, "i":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 967
    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildAfterViewWhenDismissed:Landroid/view/View;

    .line 957
    .end local v0    # "i":I
    .end local v1    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_0
    return-void
.end method

.method public setExpandable(Z)V
    .locals 2
    .param p1, "expandable"    # Z

    .prologue
    .line 1460
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    .line 1461
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    .line 1459
    return-void
.end method

.method public setExpansionLogger(Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 2228
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

    .line 2229
    iput-object p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    .line 2227
    return-void
.end method

.method public setGroupExpansionChanging(Z)V
    .locals 0
    .param p1, "changing"    # Z

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    .line 256
    return-void
.end method

.method public setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 1
    .param p1, "groupManager"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 476
    return-void
.end method

.method public setGutsView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    if-eqz v0, :cond_0

    .line 794
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->setGutsParent(Lcom/android/systemui/statusbar/NotificationGuts;)V

    .line 795
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->setGutsContent(Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;)V

    .line 792
    :cond_0
    return-void
.end method

.method public setHasExtraBottomPadding(Z)V
    .locals 3
    .param p1, "hasExtraBottomPadding"    # Z

    .prologue
    .line 2463
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v2, :cond_0

    .line 2464
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2465
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHasExtraBottomPadding(Z)V

    goto :goto_0

    .line 2468
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "row$iterator":Ljava/util/Iterator;
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasExtraBottomPadding:Z

    .line 2462
    return-void
.end method

.method public setHasExtraTopPadding(Z)V
    .locals 3
    .param p1, "hasExtraTopPadding"    # Z

    .prologue
    .line 2454
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v2, :cond_0

    .line 2455
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2456
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHasExtraTopPadding(Z)V

    goto :goto_0

    .line 2459
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "row$iterator":Ljava/util/Iterator;
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasExtraTopPadding:Z

    .line 2453
    return-void
.end method

.method public setHeadsUp(Z)V
    .locals 2
    .param p1, "isHeadsUp"    # Z

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    .line 460
    .local v0, "intrinsicBefore":I
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    .line 461
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUp(Z)V

    .line 462
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 467
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 469
    :cond_1
    if-eqz p1, :cond_2

    .line 470
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAboveShelf(Z)V

    .line 471
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetTranslation()V

    .line 473
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateOutline()V

    .line 458
    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 1
    .param p1, "headsUpAnimatingAway"    # Z

    .prologue
    .line 1011
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    .line 1012
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUpAnimatingAway(Z)V

    .line 1013
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateOutline()V

    .line 1010
    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0
    .param p1, "headsUpManager"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .prologue
    .line 789
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 788
    return-void
.end method

.method public setHideSensitive(ZZJJ)V
    .locals 9
    .param p1, "hideSensitive"    # Z
    .param p2, "animated"    # Z
    .param p3, "delay"    # J
    .param p5, "duration"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1794
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    .line 1795
    .local v0, "oldShowingPublic":Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->hideSensitiveByAppLock:Z

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    .line 1796
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    .line 1799
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-ne v2, v0, :cond_4

    .line 1800
    return-void

    :cond_2
    move v2, v3

    .line 1795
    goto :goto_0

    .line 1797
    :cond_3
    const-string/jumbo v2, "ExpandableNotificationRow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "show public, hideSensitive="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",mSensitive="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1804
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_5

    return-void

    .line 1806
    :cond_5
    if-nez p2, :cond_8

    .line 1807
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationContentView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1808
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationContentView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1809
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v2, :cond_6

    .line 1810
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1811
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setAlpha(F)V

    .line 1813
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    .line 1814
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    .line 1815
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v2, :cond_7

    move v2, v4

    :goto_2
    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisibility(I)V

    .line 1816
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateChildrenVisibility()V

    .line 1820
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v1

    .line 1821
    .local v1, "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    .line 1822
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    .line 1823
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDark()Z

    move-result v2

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v2, v4, v6, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setDark(ZZJ)V

    .line 1824
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    .line 1793
    return-void

    .line 1815
    .end local v1    # "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_7
    const/4 v2, 0x4

    goto :goto_2

    .line 1818
    :cond_8
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->animateShowingPublic(JJ)V

    goto :goto_3
.end method

.method public setHideSensitiveForIntrinsicHeight(Z)V
    .locals 4
    .param p1, "hideSensitive"    # Z

    .prologue
    .line 1780
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHideSensitiveForIntrinsicHeight:Z

    .line 1781
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v3, :cond_0

    .line 1783
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    .line 1784
    .local v2, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1785
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1786
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHideSensitiveForIntrinsicHeight(Z)V

    .line 1784
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1779
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "i":I
    .end local v2    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_0
    return-void
.end method

.method public setIconAnimationRunning(Z)V
    .locals 7
    .param p1, "running"    # Z

    .prologue
    .line 286
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v5, v4

    .line 287
    .local v2, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V

    .line 286
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 289
    .end local v2    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v4, :cond_1

    .line 290
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 291
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getLowPriorityHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 293
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v3

    .line 294
    .local v3, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 295
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 296
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 299
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "i":I
    .end local v3    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconAnimationRunning:Z

    .line 285
    return-void
.end method

.method public setIconsVisible(Z)V
    .locals 1
    .param p1, "iconsVisible"    # Z

    .prologue
    .line 1083
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconsVisible:Z

    if-eq p1, v0, :cond_0

    .line 1084
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconsVisible:Z

    .line 1085
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateIconVisibilities()V

    .line 1082
    :cond_0
    return-void
.end method

.method public setInCallCallback(Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V
    .locals 1
    .param p1, "inCallCallback"    # Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->setInCallCallback(Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V

    .line 1192
    return-void
.end method

.method public setInflationCallback(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->setInflationCallback(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V

    .line 1188
    return-void
.end method

.method public setIsChildInGroup(ZLcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 4
    .param p1, "isChildInGroup"    # Z
    .param p2, "parent"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 538
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    if-eqz v3, :cond_1

    move v0, p1

    .line 539
    .local v0, "childInGroup":Z
    :goto_0
    if-eqz v0, :cond_2

    .end local p2    # "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :goto_1
    iput-object p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 540
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setIsChildInGroup(Z)V

    .line 541
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->setIsChildInGroup(Z)V

    .line 542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetBackgroundAlpha()V

    .line 543
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 544
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateClickAndFocus()V

    .line 545
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    .line 546
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOverrideTintColor(IF)V

    .line 547
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 549
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateIconVisibilities()V

    .line 537
    return-void

    .end local v0    # "childInGroup":Z
    .restart local p2    # "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    move v0, v2

    .line 538
    goto :goto_0

    .restart local v0    # "childInGroup":Z
    :cond_2
    move-object p2, v1

    .line 539
    goto :goto_1
.end method

.method public setIsFirstRow(Z)V
    .locals 3
    .param p1, "isFirstRow"    # Z

    .prologue
    .line 2435
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v2, :cond_0

    .line 2436
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2437
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsFirstRow(Z)V

    goto :goto_0

    .line 2440
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "row$iterator":Ljava/util/Iterator;
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsFirstRow:Z

    .line 2434
    return-void
.end method

.method public setIsLowPriority(Z)V
    .locals 2
    .param p1, "isLowPriority"    # Z

    .prologue
    .line 1153
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLowPriority:Z

    .line 1154
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setIsLowPriority(Z)V

    .line 1155
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLowPriority:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->setIsLowPriority(Z)V

    .line 1156
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setIsLowPriority(Z)V

    .line 1152
    :cond_0
    return-void
.end method

.method public setJustClicked(Z)V
    .locals 0
    .param p1, "justClicked"    # Z

    .prologue
    .line 703
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mJustClicked:Z

    .line 702
    return-void
.end method

.method public setKeepInParent(Z)V
    .locals 0
    .param p1, "keepInParent"    # Z

    .prologue
    .line 981
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKeepInParent:Z

    .line 980
    return-void
.end method

.method public setLayoutListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;

    .prologue
    .line 1711
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayoutListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;

    .line 1710
    return-void
.end method

.method public setLegacy(Z)V
    .locals 4
    .param p1, "legacy"    # Z

    .prologue
    .line 2074
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 2075
    .local v0, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setLegacy(Z)V

    .line 2074
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2073
    .end local v0    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_0
    return-void
.end method

.method public setLowPriorityStateUpdated(Z)V
    .locals 0
    .param p1, "lowPriorityStateUpdated"    # Z

    .prologue
    .line 1163
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLowPriorityStateUpdated:Z

    .line 1162
    return-void
.end method

.method public setNeedDrawBgDivider(ZZ)V
    .locals 0
    .param p1, "needDrawBgTopDivider"    # Z
    .param p2, "needDrawBgBottomDivider"    # Z

    .prologue
    .line 2448
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNeedDrawBgTopDivider:Z

    .line 2449
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNeedDrawBgBottomDivider:Z

    .line 2450
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackground()V

    .line 2447
    return-void
.end method

.method public setNeedsRedaction(Z)V
    .locals 1
    .param p1, "needsRedaction"    # Z

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->setRedactAmbient(Z)V

    .line 1196
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 772
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 773
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 774
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateClickAndFocus()V

    .line 771
    return-void
.end method

.method public setOnDismissRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onDismissRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnDismissRunnable:Ljava/lang/Runnable;

    .line 1038
    return-void
.end method

.method public setOnExpandClickListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;)V
    .locals 0
    .param p1, "onExpandClickListener"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;

    .prologue
    .line 767
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnExpandClickListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;

    .line 766
    return-void
.end method

.method public setOnKeyguard(Z)V
    .locals 3
    .param p1, "onKeyguard"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1573
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    if-eq p1, v1, :cond_2

    .line 1574
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 1575
    .local v0, "wasExpanded":Z
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    .line 1576
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onExpansionChanged(ZZ)V

    .line 1577
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1578
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    .line 1579
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 1581
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 1583
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateOutline()V

    .line 1584
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackground()V

    .line 1572
    .end local v0    # "wasExpanded":Z
    :cond_2
    return-void
.end method

.method public setPinned(Z)V
    .locals 4
    .param p1, "pinned"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 657
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    .line 658
    .local v0, "intrinsicHeight":I
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPinned:Z

    .line 659
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 660
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 662
    :cond_0
    if-eqz p1, :cond_2

    .line 663
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    .line 664
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    .line 668
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLastChronometerRunning:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunning(Z)V

    .line 656
    return-void

    .line 665
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    if-eqz v1, :cond_1

    .line 666
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    goto :goto_0
.end method

.method public setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V
    .locals 1
    .param p1, "r"    # Lcom/android/systemui/statusbar/RemoteInputController;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V

    .line 481
    return-void
.end method

.method public setRemoteViewClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "remoteViewClickHandler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->setRemoteViewClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 1184
    return-void
.end method

.method public setRemoved()V
    .locals 2

    .prologue
    .line 989
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRemoved:Z

    .line 990
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslationWhenRemoved:F

    .line 991
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mWasChildInGroupWhenRemoved:Z

    .line 992
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslationWhenRemoved:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslationWhenRemoved:F

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setRemoved()V

    .line 988
    return-void
.end method

.method public setSensitive(ZZ)V
    .locals 0
    .param p1, "sensitive"    # Z
    .param p2, "hideSensitive"    # Z

    .prologue
    .line 1774
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    .line 1775
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitiveHiddenInGeneral:Z

    .line 1773
    return-void
.end method

.method public setShowAmbient(Z)V
    .locals 1
    .param p1, "showAmbient"    # Z

    .prologue
    .line 2347
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowAmbient:Z

    if-eq p1, v0, :cond_1

    .line 2348
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowAmbient:Z

    .line 2349
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    .line 2350
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->notifyShowAmbientChanged()V

    .line 2352
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 2346
    :cond_1
    return-void
.end method

.method public setSingleLineWidthIndention(I)V
    .locals 1
    .param p1, "indention"    # I

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setSingleLineWidthIndention(I)V

    .line 916
    return-void
.end method

.method public setSystemChildExpanded(Z)V
    .locals 0
    .param p1, "expanded"    # Z

    .prologue
    .line 1707
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemChildExpanded:Z

    .line 1706
    return-void
.end method

.method public setSystemExpanded(Z)V
    .locals 3
    .param p1, "expand"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1558
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    if-eq p1, v1, :cond_0

    .line 1559
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 1560
    .local v0, "wasExpanded":Z
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    .line 1561
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 1562
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onExpansionChanged(ZZ)V

    .line 1563
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    .line 1564
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 1557
    .end local v0    # "wasExpanded":Z
    :cond_0
    return-void
.end method

.method public setTranslation(F)V
    .locals 2
    .param p1, "translationX"    # F

    .prologue
    .line 1331
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1333
    return-void

    .line 1336
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1337
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1338
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 1336
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1341
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->invalidateOutline()V

    .line 1342
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1343
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onTranslationUpdate(F)V

    .line 1345
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1346
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1348
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    if-eqz v1, :cond_5

    .line 1349
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundNormal()Lcom/android/systemui/statusbar/NotificationBackgroundView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    .line 1351
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateClipping()V

    .line 1330
    return-void
.end method

.method public setUseIncreasedCollapsedHeight(Z)V
    .locals 1
    .param p1, "use"    # Z

    .prologue
    .line 1175
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUseIncreasedCollapsedHeight:Z

    .line 1176
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->setUsesIncreasedHeight(Z)V

    .line 1174
    return-void
.end method

.method public setUseIncreasedHeadsUpHeight(Z)V
    .locals 1
    .param p1, "use"    # Z

    .prologue
    .line 1180
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUseIncreasedHeadsUpHeight:Z

    .line 1181
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->setUsesIncreasedHeadsUpHeight(Z)V

    .line 1179
    return-void
.end method

.method public setUserExpanded(Z)V
    .locals 1
    .param p1, "userExpanded"    # Z

    .prologue
    .line 1487
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    .line 1486
    return-void
.end method

.method public setUserExpanded(ZZ)V
    .locals 4
    .param p1, "userExpanded"    # Z
    .param p2, "allowChildExpansion"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1497
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->setNotificationExpanded()V

    .line 1498
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v1, :cond_2

    .line 1505
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    if-eqz v1, :cond_3

    .line 1506
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 1507
    .local v0, "wasExpanded":Z
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    .line 1508
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    .line 1509
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onExpansionChanged(ZZ)V

    .line 1496
    return-void

    .line 1498
    .end local v0    # "wasExpanded":Z
    :cond_2
    if-eqz p2, :cond_0

    .line 1499
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1500
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    .line 1501
    .restart local v0    # "wasExpanded":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Landroid/service/notification/StatusBarNotification;Z)V

    .line 1502
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onExpansionChanged(ZZ)V

    .line 1503
    return-void

    .line 1505
    .end local v0    # "wasExpanded":Z
    :cond_3
    return-void
.end method

.method public setUserLocked(Z)V
    .locals 1
    .param p1, "userLocked"    # Z

    .prologue
    .line 1533
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    .line 1534
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setUserExpanding(Z)V

    .line 1537
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    .line 1538
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setUserLocked(Z)V

    .line 1539
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1532
    :cond_0
    :goto_0
    return-void

    .line 1540
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    goto :goto_0
.end method

.method protected shouldHideBackground()Z
    .locals 1

    .prologue
    .line 573
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowNoBackground:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldRefocusOnDismiss()Z
    .locals 1

    .prologue
    .line 2328
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRefocusOnDismiss:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAccessibilityFocused()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showHeadsUpBackground()V
    .locals 1

    .prologue
    .line 2201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsShowHeadsUpBackground:Z

    .line 2202
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackground()V

    .line 2200
    return-void
.end method

.method public startChildAnimation(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 1
    .param p1, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->startAnimationToState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 631
    :cond_0
    return-void
.end method

.method protected updateBackground()V
    .locals 7

    .prologue
    const v6, 0x90202a1

    const/4 v2, 0x4

    const v5, 0x90202a8

    const v3, 0x90202a4

    const/4 v4, 0x0

    .line 2125
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    .line 2126
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 2127
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsShowHeadsUpBackground:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    if-eqz v0, :cond_4

    .line 2137
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isMediaNotification()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2139
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 2140
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isMediaCustomNotification()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2144
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    .line 2145
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNeedDrawBgTopDivider:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNeedDrawBgBottomDivider:Z

    .line 2144
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(IZZ)V

    .line 2188
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2124
    :cond_3
    :goto_1
    return-void

    .line 2127
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2129
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 2130
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v0, v1}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isInCallNotification(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2131
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    goto :goto_0

    .line 2132
    :cond_5
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->sGameMode:Z

    if-eqz v0, :cond_6

    .line 2133
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v1, 0x90202bf

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    goto :goto_0

    .line 2135
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    goto :goto_0

    .line 2141
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    .line 2142
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNeedDrawBgTopDivider:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNeedDrawBgBottomDivider:Z

    .line 2141
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(IZZ)V

    goto :goto_0

    .line 2147
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isCustomViewNotification()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2148
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    goto :goto_0

    .line 2149
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2152
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 2153
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    .line 2154
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNeedDrawBgTopDivider:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNeedDrawBgBottomDivider:Z

    .line 2153
    const v3, 0x90202ab

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(IZZ)V

    goto :goto_0

    .line 2156
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2158
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2159
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 2160
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    goto/16 :goto_0

    .line 2163
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2166
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2168
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2169
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 2170
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    .line 2171
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNeedDrawBgTopDivider:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNeedDrawBgBottomDivider:Z

    .line 2170
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(IZZ)V

    goto/16 :goto_0

    .line 2173
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 2174
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    goto/16 :goto_0

    .line 2178
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isContentExpandable()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSystemExpanded()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2184
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 2185
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    goto/16 :goto_0

    .line 2179
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isShowMiuiAction()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2180
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 2181
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    .line 2182
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNeedDrawBgTopDivider:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNeedDrawBgBottomDivider:Z

    .line 2181
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(IZZ)V

    goto/16 :goto_0

    .line 2189
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v1, 0x90202b1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    .line 2190
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public updateBackgroundForGroupState()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2105
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v4, :cond_2

    .line 2107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowNoBackground:Z

    .line 2108
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v0

    .line 2109
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2110
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 2109
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2107
    .end local v0    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 2112
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2114
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowNoBackground:Z

    .line 2119
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateOutline()V

    .line 2120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackground()V

    .line 2104
    return-void

    .line 2117
    :cond_4
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowNoBackground:Z

    goto :goto_2
.end method

.method protected updateBackgroundTint()V
    .locals 4

    .prologue
    .line 2081
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    .line 2082
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 2083
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v3, :cond_0

    .line 2085
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    .line 2086
    .local v2, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2087
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2088
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 2086
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2080
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "i":I
    .end local v2    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_0
    return-void
.end method

.method public updateChildrenHeaderAppearance()V
    .locals 1

    .prologue
    .line 1677
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 1678
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateChildrenHeaderAppearance()V

    .line 1676
    :cond_0
    return-void
.end method

.method public updateContentHeight()V
    .locals 5

    .prologue
    .line 1965
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMinHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1966
    .local v0, "contentHeight":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 1967
    .local v1, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setContentHeight(I)V

    .line 1966
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1964
    .end local v1    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_0
    return-void
.end method

.method public updateLargeIconVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLargeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 374
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLargeIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 372
    :cond_0
    return-void

    .line 374
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 345
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 346
    .local v0, "isNew":Z
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 347
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .line 348
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews()V

    .line 349
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isMediaNotification()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetUserExpansion()V

    .line 344
    :cond_0
    return-void

    .line 345
    .end local v0    # "isNew":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isNew":Z
    goto :goto_0
.end method

.method protected updateOutlineAlpha()V
    .locals 1

    .prologue
    .line 2427
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2428
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOutlineAlpha(F)V

    .line 2426
    :goto_0
    return-void

    .line 2430
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateOutlineAlpha()V

    goto :goto_0
.end method

.method public wasChildInGroupWhenRemoved()Z
    .locals 1

    .prologue
    .line 999
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mWasChildInGroupWhenRemoved:Z

    return v0
.end method

.method public wasJustClicked()Z
    .locals 1

    .prologue
    .line 710
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mJustClicked:Z

    return v0
.end method
