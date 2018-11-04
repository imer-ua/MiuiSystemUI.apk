.class public Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;
.super Landroid/view/ViewGroup;
.source "NotificationChildrenContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$1;
    }
.end annotation


# static fields
.field private static final ALPHA_FADE_IN:Lcom/android/systemui/statusbar/stack/AnimationProperties;


# instance fields
.field private mActualHeight:I

.field private mChildTopMargin:I

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenExpanded:Z

.field private mClipBottomAmount:I

.field private mCollapseButtonViewState:Lcom/android/systemui/statusbar/stack/ViewState;

.field private mCollapsedBottomMargin:F

.field private mCollapsedButton:Landroid/widget/TextView;

.field private mCollapsedButtonPadding:I

.field private mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mContentMarginStart:I

.field private mCurrentHeader:Landroid/view/ViewGroup;

.field private mDividerHeight:I

.field private mExpandedBottomMargin:I

.field private mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

.field private mHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mHeaderHeight:I

.field private mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

.field private mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

.field private final mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

.field private mIsLowPriority:Z

.field private mMaxNotificationHeight:I

.field private mNeverAppliedGroupState:Z

.field private mNotificationHeader:Landroid/view/NotificationHeaderView;

.field private mNotificationHeaderAmbient:Landroid/view/ViewGroup;

.field private mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

.field private mNotificationHeaderMargin:I

.field private mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mNotificationHeaderWrapperAmbient:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mNotificationTopPadding:I

.field private mOverflowNumber:Landroid/widget/TextView;

.field private mOverflowNumberBottomPadding:I

.field private mOverflowNumberTopMargin:I

.field private mOverflowNumberTopPadding:I

.field private mRealHeight:I

.field private mUserLocked:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$1;-><init>()V

    .line 65
    const-wide/16 v2, 0xc8

    .line 58
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->ALPHA_FADE_IN:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->initDimens()V

    .line 122
    new-instance v0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    .line 119
    return-void
.end method

.method private calculateDesiredHeader()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 975
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 976
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    .line 982
    .local v0, "desiredHeader":Landroid/view/ViewGroup;
    :goto_0
    return-object v0

    .line 977
    .end local v0    # "desiredHeader":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 978
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .restart local v0    # "desiredHeader":Landroid/view/ViewGroup;
    goto :goto_0

    .line 980
    .end local v0    # "desiredHeader":Landroid/view/ViewGroup;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .restart local v0    # "desiredHeader":Landroid/view/ViewGroup;
    goto :goto_0
.end method

.method private getIntrinsicHeight(F)I
    .locals 12
    .param p1, "maxAllowedVisibleChildren"    # F

    .prologue
    const/4 v11, 0x0

    .line 490
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 491
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {v8}, Landroid/view/NotificationHeaderView;->getHeight()I

    move-result v8

    return v8

    .line 493
    :cond_0
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 494
    .local v6, "intrinsicHeight":I
    const/4 v7, 0x0

    .line 495
    .local v7, "visibleChildren":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    .line 496
    .local v1, "childCount":I
    const/4 v4, 0x1

    .line 497
    .local v4, "firstChild":Z
    const/4 v3, 0x0

    .line 498
    .local v3, "expandFactor":F
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v8, :cond_1

    .line 499
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v3

    .line 501
    :cond_1
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v2

    .line 502
    :goto_0
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v8, :cond_6

    .line 503
    int-to-float v8, v6

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    int-to-float v9, v9

    invoke-static {v9, v11, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v9

    add-float/2addr v8, v9

    float-to-int v6, v8

    .line 508
    :cond_2
    :goto_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v1, :cond_3

    .line 509
    int-to-float v8, v7

    cmpl-float v8, v8, p1

    if-ltz v8, :cond_7

    .line 534
    :cond_3
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v8, :cond_d

    .line 535
    int-to-float v8, v6

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedBottomMargin:F

    iget v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mExpandedBottomMargin:I

    int-to-float v10, v10

    invoke-static {v9, v10, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v9

    add-float/2addr v8, v9

    float-to-int v6, v8

    .line 542
    :goto_3
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v8, :cond_f

    .line 543
    int-to-float v8, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getCollapsedButtonHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v11, v9, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v9

    add-float/2addr v8, v9

    float-to-int v6, v8

    .line 549
    :cond_4
    :goto_4
    return v6

    .line 501
    .end local v5    # "i":I
    :cond_5
    const/4 v2, 0x1

    .local v2, "childrenExpanded":Z
    goto :goto_0

    .line 505
    .end local v2    # "childrenExpanded":Z
    :cond_6
    if-nez v2, :cond_2

    .line 506
    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    add-int/2addr v6, v8

    goto :goto_1

    .line 512
    .restart local v5    # "i":I
    :cond_7
    if-nez v4, :cond_a

    .line 513
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v8, :cond_8

    .line 514
    int-to-float v8, v6

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildTopMargin:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v10, v10

    invoke-static {v9, v10, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v9

    add-float/2addr v8, v9

    float-to-int v6, v8

    .line 530
    :goto_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 531
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v6, v8

    .line 532
    add-int/lit8 v7, v7, 0x1

    .line 508
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 517
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_8
    if-eqz v2, :cond_9

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    :goto_6
    add-int/2addr v6, v8

    goto :goto_5

    :cond_9
    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildTopMargin:I

    goto :goto_6

    .line 520
    :cond_a
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v8, :cond_b

    .line 521
    int-to-float v8, v6

    .line 523
    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v9, v9

    .line 521
    invoke-static {v11, v9, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v9

    add-float/2addr v8, v9

    float-to-int v6, v8

    .line 528
    :goto_7
    const/4 v4, 0x0

    goto :goto_5

    .line 526
    :cond_b
    if-eqz v2, :cond_c

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    :goto_8
    add-int/2addr v6, v8

    goto :goto_7

    :cond_c
    const/4 v8, 0x0

    goto :goto_8

    .line 537
    :cond_d
    if-eqz v2, :cond_e

    .line 538
    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mExpandedBottomMargin:I

    add-int/2addr v6, v8

    goto :goto_3

    .line 540
    :cond_e
    int-to-float v8, v6

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedBottomMargin:F

    add-float/2addr v8, v9

    float-to-int v6, v8

    goto :goto_3

    .line 545
    :cond_f
    if-eqz v2, :cond_4

    .line 546
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getCollapsedButtonHeight()I

    move-result v8

    add-int/2addr v6, v8

    goto :goto_4
.end method

.method private getMaxAllowedVisibleChildren()I
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v0

    return v0
.end method

.method private getMaxAllowedVisibleChildren(Z)I
    .locals 2
    .param p1, "likeCollapsed"    # Z

    .prologue
    const/4 v1, 0x3

    .line 716
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    return v1

    .line 719
    :cond_0
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 720
    :cond_1
    const/16 v0, 0x8

    return v0

    .line 722
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_4

    .line 723
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v0

    .line 722
    if-eqz v0, :cond_4

    .line 724
    :cond_3
    const/4 v0, 0x5

    return v0

    .line 726
    :cond_4
    return v1
.end method

.method private getMinHeight(IZ)I
    .locals 8
    .param p1, "maxAllowedVisibleChildren"    # I
    .param p2, "likeHighPriority"    # Z

    .prologue
    .line 1128
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1129
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {v6}, Landroid/view/NotificationHeaderView;->getHeight()I

    move-result v6

    return v6

    .line 1131
    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 1132
    .local v4, "minExpandHeight":I
    const/4 v5, 0x0

    .line 1133
    .local v5, "visibleChildren":I
    const/4 v2, 0x1

    .line 1134
    .local v2, "firstChild":Z
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 1135
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1136
    if-lt v5, p1, :cond_2

    .line 1148
    :cond_1
    int-to-float v6, v4

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedBottomMargin:F

    add-float/2addr v6, v7

    float-to-int v4, v6

    .line 1149
    return v4

    .line 1139
    :cond_2
    if-nez v2, :cond_3

    .line 1140
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildTopMargin:I

    add-int/2addr v4, v6

    .line 1144
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1145
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    .line 1146
    add-int/lit8 v5, v5, 0x1

    .line 1135
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1142
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getVisibleChildrenExpandHeight()I
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1092
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int v4, v7, v8

    .line 1093
    .local v4, "intrinsicHeight":I
    const/4 v6, 0x0

    .line 1094
    .local v6, "visibleChildren":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 1095
    .local v1, "childCount":I
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v5

    .line 1096
    .local v5, "maxAllowedVisibleChildren":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1097
    if-lt v6, v5, :cond_1

    .line 1107
    :cond_0
    return v4

    .line 1100
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1101
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1102
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v7

    .line 1101
    :goto_1
    int-to-float v2, v7

    .line 1104
    .local v2, "childHeight":F
    int-to-float v7, v4

    add-float/2addr v7, v2

    float-to-int v4, v7

    .line 1105
    add-int/lit8 v6, v6, 0x1

    .line 1096
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1103
    .end local v2    # "childHeight":F
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v7

    goto :goto_1
.end method

.method private getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .locals 1
    .param p1, "visibleHeader"    # Landroid/view/View;

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-ne p1, v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_1

    .line 1020
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperAmbient:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1022
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0
.end method

.method private initDimens()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f0163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildTopMargin:I

    .line 127
    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderHeight:I

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 130
    const v1, 0x90f00a3

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mMaxNotificationHeight:I

    .line 131
    sget-boolean v0, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 133
    const v1, 0x90f0467

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 134
    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    .line 135
    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mExpandedBottomMargin:I

    .line 143
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 144
    const v1, 0x1050049

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedBottomMargin:F

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 146
    const v1, 0x90f0459

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButtonPadding:I

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f042b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContentMarginStart:I

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 149
    const v1, 0x90f042d

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumberTopPadding:I

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 151
    const v1, 0x90f042e

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumberBottomPadding:I

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 153
    const v1, 0x90f042f

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumberTopMargin:I

    .line 125
    return-void

    .line 137
    :cond_0
    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 139
    const v1, 0x1050048

    .line 138
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    const v1, 0x90f045a

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mExpandedBottomMargin:I

    goto :goto_0
.end method

.method private recreateAmbientHeader(Landroid/app/Notification$Builder;)V
    .locals 5
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 332
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v1

    .line 333
    .local v1, "notification":Landroid/service/notification/StatusBarNotification;
    if-nez p1, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 335
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 334
    invoke-static {v2, v3}, Landroid/app/NotificationCompat;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 337
    :cond_0
    const/4 v2, 0x1

    invoke-static {p1, v2}, Landroid/app/NotificationCompat;->makeNotificationHeader(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 338
    .local v0, "header":Landroid/widget/RemoteViews;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 339
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    .line 340
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 341
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 340
    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperAmbient:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 342
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperAmbient:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 343
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;I)V

    .line 344
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->invalidate()V

    .line 348
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->calculateDesiredHeader()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 349
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperAmbient:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 330
    return-void

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method private recreateLowPriorityHeader(Landroid/app/Notification$Builder;)V
    .locals 7
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 359
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v2

    .line 360
    .local v2, "notification":Landroid/service/notification/StatusBarNotification;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    if-eqz v3, :cond_2

    .line 361
    if-nez p1, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 363
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 362
    invoke-static {v3, v4}, Landroid/app/NotificationCompat;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 365
    :cond_0
    const/4 v3, 0x1

    invoke-static {p1, v3}, Landroid/app/NotificationCompat;->makeLowPriorityContentView(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 366
    .local v1, "header":Landroid/widget/RemoteViews;
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    if-nez v3, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/NotificationHeaderView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 369
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;->findExpandButtonView(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v0

    .line 370
    .local v0, "expandButton":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 373
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 372
    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 374
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v3, v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;I)V

    .line 375
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->invalidate()V

    .line 379
    .end local v0    # "expandButton":Landroid/view/View;
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 380
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->calculateDesiredHeader()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 357
    .end local v1    # "header":Landroid/widget/RemoteViews;
    :goto_1
    return-void

    .line 377
    .restart local v1    # "header":Landroid/widget/RemoteViews;
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 382
    .end local v1    # "header":Landroid/widget/RemoteViews;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 383
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 384
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    goto :goto_1
.end method

.method private resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "header"    # Landroid/view/View;
    .param p2, "desiredHeader"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 955
    if-nez p1, :cond_0

    .line 956
    return-void

    .line 958
    :cond_0
    sget-boolean v0, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-nez v0, :cond_1

    .line 959
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    .line 960
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 961
    return-void

    .line 963
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    if-eq p1, v0, :cond_2

    if-eq p1, p2, :cond_2

    .line 964
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    .line 965
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 967
    :cond_2
    if-ne p1, p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 968
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    .line 969
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 954
    :cond_3
    return-void
.end method

.method private startChildAlphaAnimations(Z)V
    .locals 10
    .param p1, "toVisible"    # Z

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 986
    if-eqz p1, :cond_1

    move v4, v6

    .line 987
    .local v4, "target":F
    :goto_0
    sub-float v3, v6, v4

    .line 988
    .local v3, "start":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 989
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 990
    const/4 v6, 0x5

    if-lt v2, v6, :cond_2

    .line 985
    :cond_0
    return-void

    .line 986
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "start":F
    .end local v4    # "target":F
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 993
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    .restart local v3    # "start":F
    .restart local v4    # "target":F
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 994
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAlpha(F)V

    .line 995
    new-instance v5, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct {v5}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    .line 996
    .local v5, "viewState":Lcom/android/systemui/statusbar/stack/ViewState;
    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 997
    iput v4, v5, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 998
    sget-object v6, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->ALPHA_FADE_IN:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    mul-int/lit8 v7, v2, 0x32

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 999
    sget-object v6, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->ALPHA_FADE_IN:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-virtual {v5, v0, v6}, Lcom/android/systemui/statusbar/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 989
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private updateChildrenClipping()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 754
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    .line 755
    .local v2, "childCount":I
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v9

    iget v11, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mClipBottomAmount:I

    sub-int v7, v9, v11

    .line 756
    .local v7, "layoutEnd":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_7

    .line 757
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 758
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v9

    const/16 v11, 0x8

    if-ne v9, v11, :cond_0

    .line 756
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 761
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v3

    .line 762
    .local v3, "childTop":F
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v9

    int-to-float v9, v9

    add-float v1, v3, v9

    .line 763
    .local v1, "childBottom":F
    const/4 v8, 0x1

    .line 764
    .local v8, "visible":Z
    const/4 v4, 0x0

    .line 765
    .local v4, "clipBottomAmount":I
    int-to-float v9, v7

    cmpl-float v9, v3, v9

    if-lez v9, :cond_3

    .line 766
    const/4 v8, 0x0

    .line 771
    :cond_1
    :goto_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v9

    if-nez v9, :cond_4

    const/4 v6, 0x1

    .line 772
    .local v6, "isVisible":Z
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    move-result v9

    if-ge v5, v9, :cond_5

    const/4 v9, 0x1

    :goto_4
    and-int/2addr v8, v9

    .line 773
    .local v8, "visible":Z
    if-eq v8, v6, :cond_2

    .line 774
    if-eqz v8, :cond_6

    move v9, v10

    :goto_5
    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 777
    :cond_2
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipBottomAmount(I)V

    goto :goto_1

    .line 767
    .end local v6    # "isVisible":Z
    .local v8, "visible":Z
    :cond_3
    int-to-float v9, v7

    cmpl-float v9, v1, v9

    if-lez v9, :cond_1

    .line 768
    int-to-float v9, v7

    sub-float v9, v1, v9

    float-to-int v4, v9

    goto :goto_2

    .line 771
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "isVisible":Z
    goto :goto_3

    :cond_5
    move v9, v10

    .line 772
    goto :goto_4

    .line 774
    .local v8, "visible":Z
    :cond_6
    const/4 v9, 0x4

    goto :goto_5

    .line 753
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "childBottom":F
    .end local v3    # "childTop":F
    .end local v4    # "clipBottomAmount":I
    .end local v6    # "isVisible":Z
    .end local v8    # "visible":Z
    :cond_7
    return-void
.end method

.method private updateExpansionStates()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 465
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v3, :cond_1

    .line 467
    :cond_0
    return-void

    .line 469
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 470
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 471
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 472
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-nez v1, :cond_2

    if-ne v2, v4, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemChildExpanded(Z)V

    .line 470
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v3, v5

    .line 472
    goto :goto_1

    .line 464
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    return-void
.end method

.method private updateHeaderTransformation()V
    .locals 3

    .prologue
    .line 1005
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1006
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v0

    .line 1007
    .local v0, "fraction":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 1009
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/NotificationHeaderView;->setVisibility(I)V

    .line 1010
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 1004
    .end local v0    # "fraction":F
    :cond_0
    return-void
.end method

.method private updateHeaderVisibility(Z)V
    .locals 8
    .param p1, "animate"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 898
    sget-boolean v5, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-nez v5, :cond_0

    .line 899
    return-void

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    .line 904
    .local v0, "currentHeader":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->calculateDesiredHeader()Landroid/view/ViewGroup;

    move-result-object v1

    .line 905
    .local v1, "desiredHeader":Landroid/view/ViewGroup;
    if-ne v0, v1, :cond_1

    .line 906
    return-void

    .line 908
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-eq v1, v5, :cond_2

    .line 909
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-ne v0, v5, :cond_3

    .line 910
    :cond_2
    const/4 p1, 0x0

    .line 913
    .end local p1    # "animate":Z
    :cond_3
    if-eqz p1, :cond_4

    .line 914
    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    .line 915
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 916
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 917
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v3

    .line 918
    .local v3, "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v2

    .line 919
    .local v2, "hiddenWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    .line 920
    new-instance v5, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$3;-><init>(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;)V

    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    .line 926
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-ne v1, v5, :cond_8

    move v5, v6

    :goto_0
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->startChildAlphaAnimations(Z)V

    .line 931
    .end local v2    # "hiddenWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .end local v3    # "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    :cond_4
    :goto_1
    if-nez p1, :cond_7

    .line 932
    if-eqz v1, :cond_5

    .line 933
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    .line 934
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 936
    :cond_5
    if-eqz v0, :cond_7

    .line 939
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v4

    .line 940
    .local v4, "wrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-eqz v4, :cond_6

    .line 941
    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    .line 943
    :cond_6
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 947
    .end local v4    # "wrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-direct {p0, v5, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 948
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    invoke-direct {p0, v5, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 949
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-direct {p0, v5, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 951
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    .line 897
    return-void

    .restart local v2    # "hiddenWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .restart local v3    # "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    :cond_8
    move v5, v7

    .line 926
    goto :goto_0

    .line 928
    .end local v2    # "hiddenWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .end local v3    # "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    :cond_9
    const/4 p1, 0x0

    .local p1, "animate":Z
    goto :goto_1
.end method


# virtual methods
.method public addNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "childIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 265
    if-gez p2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 266
    .local v0, "newIndex":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 267
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;)V

    .line 268
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 270
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 271
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setContentTransformationAmount(FZ)V

    .line 264
    return-void

    .line 265
    .end local v0    # "newIndex":I
    :cond_0
    move v0, p2

    .restart local v0    # "newIndex":I
    goto :goto_0
.end method

.method public applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z
    .locals 5
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
    .line 443
    .local p1, "childOrder":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    if-nez p1, :cond_0

    .line 444
    const/4 v4, 0x0

    return v4

    .line 446
    :cond_0
    const/4 v3, 0x0

    .line 447
    .local v3, "result":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 448
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 449
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 450
    .local v1, "desiredChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eq v0, v1, :cond_1

    .line 451
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->canReorderNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 452
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 453
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 454
    const/4 v3, 0x1

    .line 447
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 456
    :cond_2
    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)V

    goto :goto_1

    .line 460
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "desiredChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateExpansionStates()V

    .line 461
    return v3
.end method

.method public applyState(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 8
    .param p1, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 730
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 731
    .local v1, "childCount":I
    new-instance v3, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    .line 732
    .local v3, "tmpState":Lcom/android/systemui/statusbar/stack/ViewState;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 733
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 734
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v4

    .line 735
    .local v4, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 738
    invoke-virtual {v0, v6, v6, v7, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setFakeShadowIntensity(FFII)V

    .line 732
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 740
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v4    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    if-eqz v5, :cond_1

    .line 741
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 742
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    .line 744
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    if-eqz v5, :cond_2

    .line 745
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 747
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    if-eqz v5, :cond_3

    .line 748
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 750
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateChildrenClipping()V

    .line 729
    return-void
.end method

.method public getCollapsedButton()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCollapsedButtonHeight()I
    .locals 1

    .prologue
    .line 1274
    sget-boolean v0, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getCollapsedHeight()I
    .locals 2

    .prologue
    .line 1117
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v0

    .line 1118
    const/4 v1, 0x0

    .line 1117
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMinHeight(IZ)I

    move-result v0

    return v0
.end method

.method public getCurrentHeaderView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getExpandedBottomMargin()I
    .locals 1

    .prologue
    .line 1282
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mExpandedBottomMargin:I

    return v0
.end method

.method public getGroupExpandFraction()F
    .locals 5

    .prologue
    .line 1083
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxContentHeight()I

    move-result v2

    .line 1085
    .local v2, "visibleChildrenExpandedHeight":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getCollapsedHeight()I

    move-result v1

    .line 1086
    .local v1, "minExpandHeight":I
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mActualHeight:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    .line 1087
    sub-int v4, v2, v1

    int-to-float v4, v4

    .line 1086
    div-float v0, v3, v4

    .line 1088
    .local v0, "factor":F
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    return v3

    .line 1084
    .end local v0    # "factor":F
    .end local v1    # "minExpandHeight":I
    .end local v2    # "visibleChildrenExpandedHeight":I
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getVisibleChildrenExpandHeight()I

    move-result v2

    .restart local v2    # "visibleChildrenExpandedHeight":I
    goto :goto_0
.end method

.method public getHeaderView()Landroid/view/NotificationHeaderView;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    move-result v0

    .line 482
    .local v0, "maxAllowedVisibleChildren":I
    int-to-float v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getIntrinsicHeight(F)I

    move-result v1

    return v1
.end method

.method public getLowPriorityHeaderView()Landroid/view/NotificationHeaderView;
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    return-object v0
.end method

.method public getMaxContentHeight()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1026
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1027
    const/4 v6, 0x5

    invoke-direct {p0, v6, v8}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMinHeight(IZ)I

    move-result v6

    return v6

    .line 1030
    :cond_0
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    add-int v4, v6, v7

    .line 1031
    .local v4, "maxContentHeight":I
    const/4 v5, 0x0

    .line 1032
    .local v5, "visibleChildren":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 1033
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1034
    const/16 v6, 0x8

    if-lt v5, v6, :cond_3

    .line 1044
    :cond_1
    if-lez v5, :cond_2

    .line 1045
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    mul-int/2addr v6, v5

    add-int/2addr v4, v6

    .line 1047
    :cond_2
    return v4

    .line 1037
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1038
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1039
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v6

    .line 1038
    :goto_1
    int-to-float v2, v6

    .line 1041
    .local v2, "childHeight":F
    int-to-float v6, v4

    add-float/2addr v6, v2

    float-to-int v4, v6

    .line 1042
    add-int/lit8 v5, v5, 0x1

    .line 1033
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1040
    .end local v2    # "childHeight":F
    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v6

    goto :goto_1
.end method

.method public getMinHeight()I
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1111
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    :cond_0
    const/4 v0, 0x0

    .line 1111
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMinHeight(IZ)I

    move-result v0

    return v0
.end method

.method public getNotificationChildCount()I
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNotificationChildren()Ljava/util/List;
    .locals 1
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
    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public getPositionInLinearLayout(Landroid/view/View;)I
    .locals 7
    .param p1, "childInGroup"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1203
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    add-int v3, v5, v6

    .line 1205
    .local v3, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 1206
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1207
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    const/4 v2, 0x1

    .line 1208
    .local v2, "notGone":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 1209
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v3, v5

    .line 1211
    :cond_0
    if-ne v0, p1, :cond_2

    .line 1212
    return v3

    .end local v2    # "notGone":Z
    :cond_1
    move v2, v4

    .line 1207
    goto :goto_1

    .line 1214
    .restart local v2    # "notGone":Z
    :cond_2
    if-eqz v2, :cond_3

    .line 1215
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v3, v5

    .line 1205
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1218
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "notGone":Z
    :cond_4
    return v4
.end method

.method public getState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/ExpandableViewState;)V
    .locals 25
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "parentState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    .prologue
    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v5

    .line 561
    .local v5, "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    move/from16 v20, v0

    .line 562
    .local v20, "yPosition":I
    move/from16 v11, v20

    .line 563
    .local v11, "firstOverflowChildYPosition":I
    const/4 v10, 0x1

    .line 564
    .local v10, "firstChild":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    move-result v16

    .line 565
    .local v16, "maxAllowedVisibleChildren":I
    add-int/lit8 v15, v16, -0x1

    .line 566
    .local v15, "lastVisibleIndex":I
    add-int/lit8 v12, v15, 0x1

    .line 567
    .local v12, "firstOverflowIndex":I
    const/4 v8, 0x0

    .line 568
    .local v8, "expandFactor":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v21

    if-eqz v21, :cond_3

    :cond_0
    const/4 v9, 0x0

    .line 569
    .local v9, "expandingToExpandedGroup":Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v8

    .line 571
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v12

    .line 574
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v21

    if-eqz v21, :cond_4

    const/4 v7, 0x0

    .line 576
    .local v7, "childrenExpandedAndNotAnimating":Z
    :goto_1
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v5, :cond_f

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 578
    .local v4, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-nez v10, :cond_8

    .line 579
    if-eqz v9, :cond_6

    .line 580
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildTopMargin:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v1, v8}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v22

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    .line 597
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v6

    .line 598
    .local v6, "childState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v14

    .line 599
    .local v14, "intrinsicHeight":I
    iput v14, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 600
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 601
    const/16 v21, 0x0

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    .line 604
    if-eqz v7, :cond_b

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationZ()F

    move-result v21

    .line 604
    :goto_4
    move/from16 v0, v21

    iput v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    .line 607
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    move/from16 v21, v0

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    .line 608
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    move/from16 v21, v0

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    .line 609
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    move/from16 v21, v0

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    .line 610
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    move/from16 v21, v0

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 611
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    .line 612
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    .line 613
    if-ge v13, v12, :cond_d

    .line 614
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v21

    if-eqz v21, :cond_c

    move/from16 v21, v8

    :goto_5
    move/from16 v0, v21

    iput v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    .line 623
    :goto_6
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    .line 624
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    move/from16 v21, v0

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    .line 625
    add-int v20, v20, v14

    .line 626
    if-ge v13, v12, :cond_2

    .line 627
    move/from16 v11, v20

    .line 576
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 568
    .end local v4    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v6    # "childState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v7    # "childrenExpandedAndNotAnimating":Z
    .end local v9    # "expandingToExpandedGroup":Z
    .end local v13    # "i":I
    .end local v14    # "intrinsicHeight":I
    :cond_3
    const/4 v9, 0x1

    .restart local v9    # "expandingToExpandedGroup":Z
    goto/16 :goto_0

    .line 575
    :cond_4
    const/4 v7, 0x1

    .restart local v7    # "childrenExpandedAndNotAnimating":Z
    goto/16 :goto_1

    .line 574
    .end local v7    # "childrenExpandedAndNotAnimating":Z
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "childrenExpandedAndNotAnimating":Z
    goto/16 :goto_1

    .line 583
    .restart local v4    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v13    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v21, v0

    :goto_7
    add-int v20, v20, v21

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildTopMargin:I

    move/from16 v21, v0

    goto :goto_7

    .line 586
    :cond_8
    if-eqz v9, :cond_9

    .line 587
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    .line 588
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    .line 589
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    .line 587
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v1, v8}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v22

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    .line 594
    :goto_8
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 592
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v21, v0

    :goto_9
    add-int v20, v20, v21

    goto :goto_8

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    move/from16 v21, v0

    goto :goto_9

    .line 606
    .restart local v6    # "childState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .restart local v14    # "intrinsicHeight":I
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 614
    :cond_c
    const/high16 v21, 0x3f800000    # 1.0f

    goto/16 :goto_5

    .line 615
    :cond_d
    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v21, v8, v21

    if-nez v21, :cond_e

    if-gt v13, v15, :cond_e

    .line 616
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mActualHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    iget v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    .line 617
    iget v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    move/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v21

    move/from16 v0, v21

    iput v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    goto/16 :goto_6

    .line 620
    :cond_e
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getIntrinsicHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    goto/16 :goto_6

    .line 631
    .end local v4    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v6    # "childState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v14    # "intrinsicHeight":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_10

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move-object/from16 v21, v0

    .line 633
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v22

    .line 632
    move/from16 v0, v22

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 634
    .local v19, "overflowView":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/stack/ViewState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumberTopPadding:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->paddingTop:I

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumberBottomPadding:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->paddingBottom:I

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v18

    .line 638
    .local v18, "overflowNumberHeight":I
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getMeasuredHeight()I

    move-result v3

    .line 640
    .local v3, "alignViewHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    move/from16 v22, v0

    sub-int v23, v3, v18

    div-int/lit8 v23, v23, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumberTopMargin:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v21

    if-nez v21, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    move/from16 v21, v0

    if-eqz v21, :cond_15

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 666
    .end local v3    # "alignViewHeight":I
    .end local v18    # "overflowNumberHeight":I
    .end local v19    # "overflowView":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_10
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_12

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    if-nez v21, :cond_11

    .line 668
    new-instance v21, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct/range {v21 .. v21}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    .line 670
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v22, v0

    if-eqz v7, :cond_1a

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationZ()F

    move-result v21

    .line 671
    :goto_b
    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    .line 675
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_14

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    if-nez v21, :cond_13

    .line 677
    new-instance v21, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct/range {v21 .. v21}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    .line 679
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    sget-boolean v22, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    int-to-float v0, v11

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1b

    const/16 v21, 0x1

    :goto_c
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 559
    :cond_14
    return-void

    .line 643
    .restart local v3    # "alignViewHeight":I
    .restart local v18    # "overflowNumberHeight":I
    .restart local v19    # "overflowView":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_15
    const/4 v2, 0x0

    .line 644
    .local v2, "alignView":Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v21

    if-eqz v21, :cond_19

    .line 645
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getAmbientSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v2

    .line 649
    .end local v2    # "alignView":Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    :cond_16
    :goto_d
    if-eqz v2, :cond_10

    .line 650
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getTextView()Landroid/widget/TextView;

    move-result-object v17

    .line 651
    .local v17, "mirrorView":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    .line 652
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getTitleView()Landroid/widget/TextView;

    move-result-object v17

    .line 654
    :cond_17
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_18

    .line 655
    move-object/from16 v17, v2

    .line 657
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    move/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getRelativeYOffset(Landroid/view/View;Landroid/view/View;)F

    move-result v23

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getAlpha()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    goto/16 :goto_a

    .line 646
    .end local v17    # "mirrorView":Landroid/view/View;
    .restart local v2    # "alignView":Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    move/from16 v21, v0

    if-eqz v21, :cond_16

    .line 647
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v2

    .local v2, "alignView":Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    goto :goto_d

    .line 673
    .end local v2    # "alignView":Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .end local v3    # "alignViewHeight":I
    .end local v18    # "overflowNumberHeight":I
    .end local v19    # "overflowView":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1a
    const/16 v21, 0x0

    goto/16 :goto_b

    .line 682
    :cond_1b
    const/16 v21, 0x0

    goto/16 :goto_c
.end method

.method public getViewAtPosition(F)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 7
    .param p1, "y"    # F

    .prologue
    .line 827
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 828
    .local v3, "count":I
    const/4 v1, 0x0

    .local v1, "childIdx":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 829
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 830
    .local v4, "slidingChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v2

    .line 831
    .local v2, "childTop":F
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getClipTopAmount()I

    move-result v6

    int-to-float v6, v6

    add-float v5, v2, v6

    .line 832
    .local v5, "top":F
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v6

    int-to-float v6, v6

    add-float v0, v2, v6

    .line 833
    .local v0, "bottom":F
    cmpl-float v6, p1, v5

    if-ltz v6, :cond_0

    cmpg-float v6, p1, v0

    if-gtz v6, :cond_0

    .line 834
    return-object v4

    .line 828
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 837
    .end local v0    # "bottom":F
    .end local v2    # "childTop":F
    .end local v4    # "slidingChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v5    # "top":F
    :cond_1
    const/4 v6, 0x0

    return-object v6
.end method

.method public getVisibleHeader()Landroid/view/NotificationHeaderView;
    .locals 2

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 1251
    .local v0, "header":Landroid/view/NotificationHeaderView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 1254
    :cond_0
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public isUserLocked()Z
    .locals 1

    .prologue
    .line 1287
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    return v0
.end method

.method public notifyShowAmbientChanged()V
    .locals 1

    .prologue
    .line 894
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 893
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 424
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 425
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 423
    return-void
.end method

.method public onExpansionChanged()V
    .locals 1

    .prologue
    .line 1258
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    if-eqz v0, :cond_1

    .line 1259
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v0, :cond_0

    .line 1260
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setUserLocked(Z)V

    .line 1262
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 1257
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 885
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 158
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0x8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 159
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 160
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 163
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v7, :cond_1

    .line 166
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->getOverflowNumberPadding()I

    move-result v5

    .line 167
    .local v5, "marginEnd":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getLayoutDirection()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    const/4 v3, 0x1

    .line 168
    .local v3, "isRtl":Z
    :goto_1
    if-eqz v3, :cond_7

    move v4, v5

    .line 169
    .local v4, "left":I
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int v6, v4, v7

    .line 170
    .local v6, "right":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v4, v9, v6, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 172
    .end local v3    # "isRtl":Z
    .end local v4    # "left":I
    .end local v5    # "marginEnd":I
    .end local v6    # "right":I
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v7, :cond_2

    .line 173
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v8}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v8

    .line 174
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v9}, Landroid/view/NotificationHeaderView;->getMeasuredHeight()I

    move-result v9

    .line 173
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11, v8, v9}, Landroid/view/NotificationHeaderView;->layout(IIII)V

    .line 176
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    if-eqz v7, :cond_3

    .line 177
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 178
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {v8}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v8

    .line 179
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {v9}, Landroid/view/NotificationHeaderView;->getMeasuredHeight()I

    move-result v9

    .line 177
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11, v8, v9}, Landroid/view/NotificationHeaderView;->layout(IIII)V

    .line 181
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-eqz v7, :cond_4

    .line 182
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    .line 183
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    .line 184
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v9

    .line 182
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11, v8, v9}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 187
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    if-eqz v7, :cond_5

    .line 188
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContentMarginStart:I

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButtonPadding:I

    sub-int/2addr v8, v9

    .line 189
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    iget v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContentMarginStart:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButtonPadding:I

    sub-int/2addr v9, v10

    .line 190
    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    .line 188
    const/4 v11, 0x0

    invoke-virtual {v7, v8, v11, v9, v10}, Landroid/widget/TextView;->layout(IIII)V

    .line 157
    :cond_5
    return-void

    .line 167
    .restart local v5    # "marginEnd":I
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 168
    .restart local v3    # "isRtl":Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v4, v7, v5

    .restart local v4    # "left":I
    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 196
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 197
    .local v7, "heightMode":I
    const/high16 v15, 0x40000000    # 2.0f

    if-ne v7, v15, :cond_4

    const/4 v4, 0x1

    .line 198
    .local v4, "hasFixedHeight":Z
    :goto_0
    const/high16 v15, -0x80000000

    if-ne v7, v15, :cond_5

    const/4 v9, 0x1

    .line 199
    .local v9, "isHeightLimited":Z
    :goto_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 200
    .local v13, "size":I
    move/from16 v11, p2

    .line 201
    .local v11, "newHeightSpec":I
    if-nez v4, :cond_0

    if-eqz v9, :cond_1

    .line 202
    :cond_0
    const/high16 v15, -0x80000000

    invoke-static {v13, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 204
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 205
    .local v14, "width":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v15, :cond_2

    .line 206
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    const/high16 v16, -0x80000000

    move/from16 v0, v16

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Landroid/widget/TextView;->measure(II)V

    .line 209
    :cond_2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 210
    .local v6, "height":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x8

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 211
    .local v2, "childCount":I
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v3

    .line 212
    .local v3, "collapsedChildren":I
    if-le v2, v3, :cond_6

    add-int/lit8 v12, v3, -0x1

    .line 213
    .local v12, "overflowIndex":I
    :goto_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v2, :cond_9

    .line 214
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 217
    .local v1, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-ne v8, v12, :cond_7

    const/4 v10, 0x1

    .line 218
    .local v10, "isOverflow":Z
    :goto_4
    if-eqz v10, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v15, :cond_8

    .line 219
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->getOverflowNumberPadding()I

    move-result v16

    add-int v15, v15, v16

    .line 218
    :goto_5
    invoke-virtual {v1, v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSingleLineWidthIndention(I)V

    .line 221
    move/from16 v0, p1

    invoke-virtual {v1, v0, v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->measure(II)V

    .line 223
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    .line 224
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v15

    add-int/2addr v6, v15

    .line 213
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 197
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "childCount":I
    .end local v3    # "collapsedChildren":I
    .end local v4    # "hasFixedHeight":Z
    .end local v6    # "height":I
    .end local v8    # "i":I
    .end local v9    # "isHeightLimited":Z
    .end local v10    # "isOverflow":Z
    .end local v11    # "newHeightSpec":I
    .end local v12    # "overflowIndex":I
    .end local v13    # "size":I
    .end local v14    # "width":I
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "hasFixedHeight":Z
    goto/16 :goto_0

    .line 198
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "isHeightLimited":Z
    goto/16 :goto_1

    .line 212
    .restart local v2    # "childCount":I
    .restart local v3    # "collapsedChildren":I
    .restart local v6    # "height":I
    .restart local v11    # "newHeightSpec":I
    .restart local v13    # "size":I
    .restart local v14    # "width":I
    :cond_6
    const/4 v12, -0x1

    .restart local v12    # "overflowIndex":I
    goto :goto_2

    .line 217
    .restart local v1    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v8    # "i":I
    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .line 220
    .restart local v10    # "isOverflow":Z
    :cond_8
    const/4 v15, 0x0

    goto :goto_5

    .line 227
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v10    # "isOverflow":Z
    :cond_9
    if-eqz v7, :cond_a

    .line 228
    invoke-static {v6, v13}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 231
    :cond_a
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderHeight:I

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 232
    .local v5, "headerHeightSpec":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v15, :cond_b

    .line 233
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    move/from16 v0, p1

    invoke-virtual {v15, v0, v5}, Landroid/view/NotificationHeaderView;->measure(II)V

    .line 235
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    if-eqz v15, :cond_c

    .line 236
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderHeight:I

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 237
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    move/from16 v0, p1

    invoke-virtual {v15, v0, v5}, Landroid/view/NotificationHeaderView;->measure(II)V

    .line 239
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-eqz v15, :cond_d

    .line 240
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderHeight:I

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 241
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    move/from16 v0, p1

    invoke-virtual {v15, v0, v5}, Landroid/view/ViewGroup;->measure(II)V

    .line 243
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    if-eqz v15, :cond_e

    .line 244
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    const/high16 v16, -0x80000000

    move/from16 v0, v16

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Landroid/widget/TextView;->measure(II)V

    .line 246
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v6, v15

    .line 248
    :cond_e
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mRealHeight:I

    .line 250
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setMeasuredDimension(II)V

    .line 195
    return-void
.end method

.method public onNotificationUpdated()V
    .locals 5

    .prologue
    const v4, 0x90c017f

    .line 1197
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 1198
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 1199
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 1197
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->setOverflowNumberColor(Landroid/widget/TextView;II)V

    .line 1196
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 880
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public prepareExpansionChanged(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 789
    return-void
.end method

.method public reInflateViews(Landroid/view/View$OnClickListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v1, 0x0

    .line 1164
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 1166
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 1168
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_1

    .line 1169
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 1170
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 1172
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1173
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 1174
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    .line 1176
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateNotificationHeader(Landroid/view/View$OnClickListener;)V

    .line 1177
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->initDimens()V

    .line 1178
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 1179
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 1180
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    .line 1181
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 1163
    return-void
.end method

.method public rebuildCollapseButton()V
    .locals 3

    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 290
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x904008f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    .line 291
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;)V

    .line 292
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getExpandClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method

.method public recreateNotificationHeader(Landroid/view/View$OnClickListener;)V
    .locals 8
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v7, 0x0

    .line 306
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 307
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v3

    .line 308
    .local v3, "notification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 309
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 308
    invoke-static {v4, v5}, Landroid/app/NotificationCompat;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 310
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-static {v0, v7}, Landroid/app/NotificationCompat;->makeNotificationHeader(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 311
    .local v2, "header":Landroid/widget/RemoteViews;
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-nez v4, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/NotificationHeaderView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 313
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;->findExpandButtonView(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v1

    .line 314
    .local v1, "expandButton":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 317
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 316
    invoke-static {v4, v5, v6}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 318
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v4, v7}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;I)V

    .line 319
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->invalidate()V

    .line 323
    .end local v1    # "expandButton":Landroid/view/View;
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 324
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateLowPriorityHeader(Landroid/app/Notification$Builder;)V

    .line 325
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateAmbientHeader(Landroid/app/Notification$Builder;)V

    .line 326
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 327
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateChildrenHeaderAppearance()V

    .line 305
    return-void

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v2, v4, v5}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const/4 v2, 0x0

    .line 275
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 276
    .local v0, "childIndex":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 279
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemChildExpanded(Z)V

    .line 280
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 282
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->restoreNotificationHeader(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 274
    :cond_0
    return-void
.end method

.method public setActualHeight(I)V
    .locals 11
    .param p1, "actualHeight"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1051
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-nez v8, :cond_0

    .line 1052
    return-void

    .line 1054
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mActualHeight:I

    .line 1055
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v3

    .line 1056
    .local v3, "fraction":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v6

    .line 1057
    .local v6, "showingLowPriority":Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderTransformation()V

    .line 1058
    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v5

    .line 1059
    .local v5, "maxAllowedVisibleChildren":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    .line 1060
    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 1061
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1063
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v6, :cond_1

    .line 1064
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v8

    int-to-float v2, v8

    .line 1071
    .local v2, "childHeight":F
    :goto_1
    if-ge v4, v5, :cond_3

    .line 1072
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v8

    int-to-float v7, v8

    .line 1074
    .local v7, "singleLineHeight":F
    invoke-static {v7, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v0, v8, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setActualHeight(IZ)V

    .line 1060
    .end local v7    # "singleLineHeight":F
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1065
    .end local v2    # "childHeight":F
    :cond_1
    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1066
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v8

    int-to-float v2, v8

    .restart local v2    # "childHeight":F
    goto :goto_1

    .line 1068
    .end local v2    # "childHeight":F
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v8

    int-to-float v2, v8

    .restart local v2    # "childHeight":F
    goto :goto_1

    .line 1077
    :cond_3
    float-to-int v8, v2

    invoke-virtual {v0, v8, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setActualHeight(IZ)V

    goto :goto_2

    .line 1050
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "childHeight":F
    :cond_4
    return-void
.end method

.method public setChildrenExpanded(Z)V
    .locals 4
    .param p1, "childrenExpanded"    # Z

    .prologue
    .line 841
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 842
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateExpansionStates()V

    .line 843
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v3, :cond_0

    .line 844
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v3, p1}, Landroid/view/NotificationHeaderView;->setExpanded(Z)V

    .line 846
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 847
    .local v2, "count":I
    const/4 v1, 0x0

    .local v1, "childIdx":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 848
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 849
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChildrenExpanded(ZZ)V

    .line 847
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 840
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0
    .param p1, "clipBottomAmount"    # I

    .prologue
    .line 1234
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mClipBottomAmount:I

    .line 1235
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateChildrenClipping()V

    .line 1233
    return-void
.end method

.method public setContainingNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "parent"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 854
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 855
    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    .line 856
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getExpandClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    .line 860
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getExpandClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 853
    :cond_1
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 7
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->setOverflowNumberDark(Landroid/widget/TextView;ZZJ)V

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    .line 1156
    return-void
.end method

.method public setIconsVisible(Z)V
    .locals 4
    .param p1, "iconsVisible"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1222
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v1, :cond_0

    .line 1223
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1224
    .local v0, "header":Landroid/view/NotificationHeaderView;
    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Landroid/view/NotificationHeaderViewCompat;->setIconForceHidden(Landroid/view/NotificationHeaderView;Z)V

    .line 1226
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v1, :cond_1

    .line 1228
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1229
    .restart local v0    # "header":Landroid/view/NotificationHeaderView;
    if-eqz p1, :cond_3

    :goto_1
    invoke-static {v0, v2}, Landroid/view/NotificationHeaderViewCompat;->setIconForceHidden(Landroid/view/NotificationHeaderView;Z)V

    .line 1221
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_1
    return-void

    .restart local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_2
    move v1, v3

    .line 1224
    goto :goto_0

    :cond_3
    move v2, v3

    .line 1229
    goto :goto_1
.end method

.method public setIsLowPriority(Z)V
    .locals 2
    .param p1, "isLowPriority"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1239
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    .line 1240
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 1241
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateLowPriorityHeader(Landroid/app/Notification$Builder;)V

    .line 1242
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 1244
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v0, :cond_1

    .line 1245
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setUserLocked(Z)V

    .line 1238
    :cond_1
    return-void
.end method

.method public setUserLocked(Z)V
    .locals 5
    .param p1, "userLocked"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1185
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 1186
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-nez v3, :cond_0

    .line 1187
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 1189
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1190
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1191
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1192
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 1190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1192
    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .line 1184
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    return-void
.end method

.method public showingAsLowPriority()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1153
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startAnimationToState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 11
    .param p1, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 793
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    .line 794
    .local v2, "childCount":I
    new-instance v6, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    .line 795
    .local v6, "tmpState":Lcom/android/systemui/statusbar/stack/ViewState;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v4

    .line 796
    .local v4, "expandFraction":F
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 797
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v3

    .line 798
    :goto_0
    add-int/lit8 v5, v2, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_2

    .line 799
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 800
    .local v1, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v7

    .line 801
    .local v7, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {v7, v1, p2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 804
    invoke-virtual {v1, v9, v9, v10, v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setFakeShadowIntensity(FFII)V

    .line 798
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 796
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v5    # "i":I
    .end local v7    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_1
    const/4 v3, 0x1

    .local v3, "dividersVisible":Z
    goto :goto_0

    .line 806
    .end local v3    # "dividersVisible":Z
    .restart local v5    # "i":I
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    .line 807
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    if-eqz v8, :cond_3

    .line 808
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget v0, v8, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 809
    .local v0, "alpha":F
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iput v9, v8, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 810
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 811
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iput v0, v8, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 812
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    .line 814
    .end local v0    # "alpha":F
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v8, v9, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 816
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v8, :cond_5

    .line 817
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 819
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    if-eqz v8, :cond_6

    .line 820
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    invoke-virtual {v8, v9, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 822
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateChildrenClipping()V

    .line 792
    return-void
.end method

.method public updateChildrenHeaderAppearance()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->updateChildrenHeaderAppearance()V

    .line 388
    return-void
.end method

.method public updateGroupOverflow()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 393
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 394
    .local v0, "childCount":I
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v1

    .line 395
    .local v1, "maxAllowedVisibleChildren":I
    if-le v0, v1, :cond_2

    .line 396
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    .line 397
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    sub-int v5, v0, v1

    .line 396
    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindOverflowNumber(Landroid/widget/TextView;I)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 398
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    .line 399
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getExpandClickListener()Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    if-nez v3, :cond_1

    .line 402
    new-instance v3, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    .line 403
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    .line 392
    :cond_1
    :goto_0
    return-void

    .line 405
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 406
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 407
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->isShown()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 408
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 409
    .local v2, "removedOverflowNumber":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getTransientViewCount()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addTransientView(Landroid/view/View;I)V

    .line 410
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$2;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$2;-><init>(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;Landroid/view/View;)V

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 417
    .end local v2    # "removedOverflowNumber":Landroid/view/View;
    :cond_3
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 418
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    goto :goto_0
.end method
