.class public Lcom/android/systemui/recents/views/RecentsView;
.super Landroid/widget/FrameLayout;
.source "RecentsView.java"


# instance fields
.field private mAwaitingFirstLayout:Z

.field private mBackgroundScrim:Landroid/graphics/drawable/Drawable;

.field private mBackgroundScrimAnimator:Landroid/animation/Animator;

.field private mDividerSize:I

.field private mEmptyView:Landroid/widget/TextView;

.field private final mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mLastTaskLaunchedWasFreeform:Z

.field private mRecentBackground:Landroid/graphics/drawable/Drawable;

.field private mRecentMenuView:Lcom/android/systemui/recents/views/RecentMenuView;

.field private mStack:Lcom/android/systemui/recents/model/TaskStack;

.field private mStackActionButton:Landroid/widget/TextView;

.field private mSystemInsets:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field private mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "touch_"
    .end annotation
.end field

.field private mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/RecentsView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/views/TaskStackView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/views/RecentsTransitionHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/views/RecentsView;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStackActionButtonBoundsFromStackLayout()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 156
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 123
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    .line 127
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    .line 130
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 131
    const/16 v3, 0x1e

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 130
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    .line 157
    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/RecentsView;->setWillNotDraw(Z)V

    .line 159
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 160
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    new-instance v2, Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    .line 161
    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedDividerSize(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mDividerSize:I

    .line 162
    new-instance v2, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    .line 163
    new-instance v2, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v2, p1, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 165
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 186
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x90400d3

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    .line 187
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    new-instance v3, Lcom/android/systemui/recents/views/RecentsView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/RecentsView$1;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 195
    const v2, 0x90400d1

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/RecentMenuView;

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentMenuView:Lcom/android/systemui/recents/views/RecentMenuView;

    .line 196
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentMenuView:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-virtual {p0, v2, v5, v5}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;II)V

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x90202ee

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentBackground:Landroid/graphics/drawable/Drawable;

    .line 155
    return-void
.end method

.method private animateBackgroundScrim(FI)V
    .locals 6
    .param p1, "alpha"    # F
    .param p2, "duration"    # I

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 875
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 877
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x41f4cccc    # 30.599998f

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v0, v2

    .line 878
    .local v0, "fromAlpha":I
    mul-float v2, p1, v4

    float-to-int v1, v2

    .line 879
    .local v1, "toAlpha":I
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/android/systemui/recents/misc/Utilities;->DRAWABLE_ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 880
    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    .line 879
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    .line 881
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    int-to-long v4, p2

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 882
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    if-le v1, v0, :cond_0

    .line 883
    sget-object v2, Lcom/android/systemui/Interpolators;->MIUI_ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 882
    :goto_0
    invoke-virtual {v3, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 885
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 874
    return-void

    .line 884
    :cond_0
    sget-object v2, Lcom/android/systemui/Interpolators;->MIUI_ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method private getStackActionButtonBoundsFromStackLayout()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 892
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 893
    .local v0, "actionButtonRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 894
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    sub-int v1, v3, v4

    .line 897
    .local v1, "left":I
    :goto_0
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 898
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 897
    add-int v2, v3, v4

    .line 899
    .local v2, "top":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 900
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 899
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 901
    return-object v0

    .line 895
    .end local v1    # "left":I
    .end local v2    # "top":I
    :cond_0
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 896
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    .line 895
    sub-int v1, v3, v4

    .restart local v1    # "left":I
    goto :goto_0
.end method

.method private getTaskRect(Lcom/android/systemui/recents/views/TaskView;)Landroid/graphics/Rect;
    .locals 8
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 655
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLocationOnScreen()[I

    move-result-object v0

    .line 656
    .local v0, "location":[I
    const/4 v3, 0x0

    aget v1, v0, v3

    .line 657
    .local v1, "viewX":I
    const/4 v3, 0x1

    aget v2, v0, v3

    .line 658
    .local v2, "viewY":I
    new-instance v3, Landroid/graphics/Rect;

    .line 659
    int-to-float v4, v1

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 660
    int-to-float v5, v2

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 658
    invoke-direct {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method private hideStackActionButton(IZ)V
    .locals 0
    .param p1, "duration"    # I
    .param p2, "translate"    # Z

    .prologue
    .line 793
    return-void
.end method

.method private hideStackActionButton(IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 0
    .param p1, "duration"    # I
    .param p2, "translate"    # Z
    .param p3, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 807
    return-void
.end method

.method private showStackActionButton(IZ)V
    .locals 0
    .param p1, "duration"    # I
    .param p2, "translate"    # Z

    .prologue
    .line 758
    return-void
.end method

.method private updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V
    .locals 16
    .param p1, "newDockStates"    # [Lcom/android/systemui/recents/model/TaskStack$DockState;
    .param p2, "isDefaultDockState"    # Z
    .param p3, "overrideAreaAlpha"    # I
    .param p4, "overrideHintAlpha"    # I
    .param p5, "animateAlpha"    # Z
    .param p6, "animateBounds"    # Z

    .prologue
    .line 839
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 838
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/systemui/recents/misc/Utilities;->arrayToSet([Ljava/lang/Object;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v14

    .line 840
    .local v14, "newDockStatesSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/systemui/recents/model/TaskStack$DockState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleDockStates()Ljava/util/ArrayList;

    move-result-object v15

    .line 841
    .local v15, "visDockStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack$DockState;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v13, v3, -0x1

    .local v13, "i":I
    :goto_0
    if-ltz v13, :cond_5

    .line 842
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 843
    .local v2, "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    iget-object v1, v2, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    .line 844
    .local v1, "viewState":Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;
    if-eqz p1, :cond_1

    invoke-virtual {v14, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 850
    const/4 v3, -0x1

    move/from16 v0, p3

    if-eq v0, v3, :cond_2

    .line 851
    move/from16 v11, p3

    .line 853
    .local v11, "areaAlpha":I
    :goto_1
    const/4 v3, -0x1

    move/from16 v0, p4

    if-eq v0, v3, :cond_3

    .line 854
    move/from16 v12, p4

    .line 856
    .local v12, "hintAlpha":I
    :goto_2
    if-eqz p2, :cond_4

    .line 857
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/recents/model/TaskStack$DockState;->getPreDockedBounds(II)Landroid/graphics/Rect;

    move-result-object v4

    .line 860
    .local v4, "bounds":Landroid/graphics/Rect;
    :goto_3
    iget-object v3, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    move-object/from16 v0, p0

    if-eq v3, v0, :cond_0

    .line 861
    iget-object v3, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/ColorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 862
    iget-object v3, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 865
    :cond_0
    sget-object v8, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v7, 0xfa

    move-object v3, v1

    move v5, v11

    move v6, v12

    move/from16 v9, p5

    move/from16 v10, p6

    .line 864
    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->startAnimation(Landroid/graphics/Rect;IIILandroid/view/animation/Interpolator;ZZ)V

    .line 841
    .end local v2    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .end local v4    # "bounds":Landroid/graphics/Rect;
    .end local v11    # "areaAlpha":I
    .end local v12    # "hintAlpha":I
    :goto_4
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 847
    .restart local v2    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    :cond_1
    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 846
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xfa

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->startAnimation(Landroid/graphics/Rect;IIILandroid/view/animation/Interpolator;ZZ)V

    goto :goto_4

    .line 852
    :cond_2
    iget v11, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaAlpha:I

    .restart local v11    # "areaAlpha":I
    goto :goto_1

    .line 855
    :cond_3
    iget v12, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->hintTextAlpha:I

    .restart local v12    # "hintAlpha":I
    goto :goto_2

    .line 858
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v4

    .line 859
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/views/RecentsView;->mDividerSize:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 858
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recents/model/TaskStack$DockState;->getDockedBounds(IIILandroid/graphics/Rect;Landroid/content/res/Resources;)Landroid/graphics/Rect;

    move-result-object v4

    .restart local v4    # "bounds":Landroid/graphics/Rect;
    goto :goto_3

    .line 836
    .end local v1    # "viewState":Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;
    .end local v2    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .end local v4    # "bounds":Landroid/graphics/Rect;
    .end local v11    # "areaAlpha":I
    .end local v12    # "hintAlpha":I
    :cond_5
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 986
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 987
    .local v1, "innerPrefix":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 989
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "RecentsView"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 990
    const-string/jumbo v2, " awaitingFirstLayout="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Y"

    :goto_0
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 991
    const-string/jumbo v2, " insets="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 992
    const-string/jumbo v2, " [0x"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "]"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 993
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 995
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    if-eqz v2, :cond_0

    .line 996
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2, v1, p2}, Lcom/android/systemui/recents/model/TaskStack;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 998
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v2, :cond_1

    .line 999
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 985
    :cond_1
    return-void

    .line 990
    :cond_2
    const-string/jumbo v2, "N"

    goto :goto_0
.end method

.method public getBackgroundScrim()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 273
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentBackground:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentBackground:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 275
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 276
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 280
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentBackground:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method public getMenuView()Lcom/android/systemui/recents/views/RecentMenuView;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentMenuView:Lcom/android/systemui/recents/views/RecentMenuView;

    return-object v0
.end method

.method public getStack()Lcom/android/systemui/recents/model/TaskStack;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method public getTaskViewPaddingView()I
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mPaddingTop:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mVerticalGap:I

    add-int/2addr v0, v1

    return v0
.end method

.method public hideDockRegionsAnim()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 980
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->setupVisibleDockStates()V

    .line 981
    const/4 v1, 0x0

    .line 982
    const/4 v6, 0x0

    move-object v0, p0

    move v4, v3

    move v5, v2

    .line 981
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    .line 978
    return-void
.end method

.method public hideEmptyView()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->bringToFront()V

    .line 357
    return-void
.end method

.method public isLastTaskLaunchedFreeform()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mLastTaskLaunchedWasFreeform:Z

    return v0
.end method

.method public launchPreviousTask()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 312
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    .line 314
    .local v6, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    .line 315
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v2, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 317
    .local v1, "taskView":Lcom/android/systemui/recents/views/TaskView;
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v7

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    .line 318
    const/4 v4, -0x1

    .line 317
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 319
    const/4 v0, 0x1

    return v0

    .line 322
    .end local v1    # "taskView":Lcom/android/systemui/recents/views/TaskView;
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v6    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_0
    return v5
.end method

.method public launchTargetTask(I)Z
    .locals 7
    .param p1, "logEvent"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 292
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    .line 295
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v2, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 297
    .local v1, "taskView":Lcom/android/systemui/recents/views/TaskView;
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v6

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    .line 298
    const/4 v4, -0x1

    .line 297
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 300
    if-eqz p1, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 302
    iget-object v3, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    .line 301
    invoke-static {v0, p1, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 304
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 307
    .end local v1    # "taskView":Lcom/android/systemui/recents/views/TaskView;
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    return v5
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 467
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setSystemInsets(Landroid/graphics/Rect;)V

    .line 468
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->requestLayout()V

    .line 469
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 368
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->register(Ljava/lang/Object;I)V

    .line 369
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/events/RecentsEventBus;->register(Ljava/lang/Object;I)V

    .line 370
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 367
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    .prologue
    const/4 v6, 0x0

    .line 731
    iget-boolean v3, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v3, :cond_1

    .line 732
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->hideDockRegionsAnim()V

    .line 733
    sget-boolean v3, Lcom/android/systemui/recents/RecentsConfiguration;->sCanMultiWindow:Z

    if-eqz v3, :cond_0

    .line 734
    new-instance v3, Lcom/android/systemui/recents/views/RecentsView$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/RecentsView$6;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    .line 739
    const-wide/16 v4, 0x64

    .line 734
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/recents/views/RecentsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 741
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 742
    .local v0, "newDeviceConfiguration":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 743
    .local v2, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    .line 744
    .local v1, "wallpaperInfo":Landroid/app/WallpaperInfo;
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    if-eqz v1, :cond_2

    .line 745
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    const/high16 v5, -0x1000000

    invoke-virtual {v3, v5, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 749
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentMenuView:Lcom/android/systemui/recents/views/RecentMenuView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentMenuView;->removeMenu(Z)Z

    .line 730
    .end local v0    # "newDeviceConfiguration":Landroid/content/res/Configuration;
    .end local v1    # "wallpaperInfo":Landroid/app/WallpaperInfo;
    .end local v2    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_1
    return-void

    .line 747
    .restart local v0    # "newDeviceConfiguration":Landroid/content/res/Configuration;
    .restart local v1    # "wallpaperInfo":Landroid/app/WallpaperInfo;
    .restart local v2    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    .prologue
    .line 519
    const/16 v0, 0x15e

    .line 524
    .local v0, "taskViewExitToHomeDuration":I
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/RecentsView;->animateBackgroundScrim(FI)V

    .line 518
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    .prologue
    .line 689
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 690
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v1, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    if-nez v1, :cond_0

    .line 691
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 692
    const/high16 v1, 0x3f800000    # 1.0f

    .line 693
    const/16 v2, 0x12c

    .line 692
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->animateBackgroundScrim(FI)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;

    .prologue
    .line 720
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    .prologue
    .line 509
    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mLastTaskLaunchedWasFreeform:Z

    .line 510
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v0, :cond_0

    .line 512
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    const-string/jumbo v1, "com.miui.home"

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->changeAlphaScaleForFsGesture(Ljava/lang/String;FF)V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v4, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    .line 515
    iget-boolean v5, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->screenPinningRequested:Z

    iget-object v6, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->targetTaskBounds:Landroid/graphics/Rect;

    iget v7, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->targetTaskStack:I

    .line 514
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->launchTaskFromRecents(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;ZLandroid/graphics/Rect;I)V

    .line 508
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    .prologue
    .line 727
    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->updateStack(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 726
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;

    .prologue
    .line 712
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    .prologue
    .line 698
    const/16 v0, 0x64

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->hideStackActionButton(IZ)V

    .line 697
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;

    .prologue
    .line 702
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 703
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v1

    if-nez v1, :cond_0

    .line 701
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;

    .prologue
    const/4 v4, 0x0

    .line 670
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 671
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    iget v1, p1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;->velocity:F

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 672
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 673
    new-instance v1, Lcom/android/systemui/recents/views/RecentsView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/RecentsView$5;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 679
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTranslationY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;->velocity:F

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/view/ViewPropertyAnimator;FFF)V

    .line 685
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 669
    return-void

    .line 681
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 682
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 683
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTranslationY()F

    move-result v2

    iget v3, p1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;->velocity:F

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/view/ViewPropertyAnimator;FFF)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;

    .prologue
    const/4 v2, 0x0

    .line 664
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 665
    iget v1, p1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;->distanceFromTop:F

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getY()F

    move-result v0

    sub-float v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->setTranslationY(F)V

    .line 663
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;)V
    .locals 11
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x1

    .line 546
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-eqz v0, :cond_1

    .line 552
    iget-object v10, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    check-cast v10, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 553
    .local v10, "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    new-array v4, v2, [Lcom/android/systemui/recents/model/TaskStack$DockState;

    aput-object v10, v4, v5

    move-object v3, p0

    move v7, v6

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    .line 557
    .end local v10    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 558
    new-instance v0, Lcom/android/systemui/recents/views/RecentsView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/RecentsView$2;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 545
    :cond_0
    return-void

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$DockState;

    move-result-object v1

    .line 548
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget v3, v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaAlpha:I

    .line 549
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget v4, v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->hintTextAlpha:I

    move-object v0, p0

    move v5, v2

    move v6, v2

    .line 547
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;

    .prologue
    .line 646
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 13
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v12, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 572
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-eqz v0, :cond_1

    .line 573
    iget-object v7, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    check-cast v7, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .local v7, "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    move-object v0, p0

    move v4, v3

    move v5, v2

    move v6, v2

    .line 576
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    .line 578
    sput-boolean v2, Lcom/android/systemui/recents/RecentsConfiguration;->sCanMultiWindow:Z

    .line 582
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->setViewFrameFromTranslation(Landroid/view/View;)V

    .line 585
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v9

    .line 586
    .local v9, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget v1, v7, Lcom/android/systemui/recents/model/TaskStack$DockState;->createMode:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startTaskInDockedMode(Lcom/android/systemui/recents/model/Task;ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 587
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iput-boolean v12, v0, Lcom/android/systemui/recents/views/TaskStackView;->mIsMultiStateChanging:Z

    .line 588
    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->isAndroidNorNewer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setVisibility(I)V

    .line 593
    :cond_0
    new-instance v10, Lcom/android/systemui/recents/views/RecentsView$3;

    invoke-direct {v10, p0, p1}, Lcom/android/systemui/recents/views/RecentsView$3;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V

    .line 607
    .local v10, "startedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskRect(Lcom/android/systemui/recents/views/TaskView;)Landroid/graphics/Rect;

    move-result-object v11

    .line 609
    .local v11, "taskRect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    .line 610
    new-instance v1, Lcom/android/systemui/recents/views/RecentsView$4;

    invoke-direct {v1, p0, p1, v11}, Lcom/android/systemui/recents/views/RecentsView$4;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;Landroid/graphics/Rect;)V

    .line 616
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 609
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->getAppTransitionFuture(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;Landroid/os/Handler;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v8

    .line 618
    .local v8, "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-virtual {v0, v10}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->wrapStartedListener(Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/os/IRemoteCallback;

    move-result-object v0

    .line 617
    invoke-virtual {v9, v8, v0, v12}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    .line 621
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    .line 622
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 621
    const/16 v2, 0x10e

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 623
    const-string/jumbo v0, "enterMultiWindow"

    const-string/jumbo v1, "in recents"

    invoke-static {v0, v1}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendMultiWindowEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    .end local v7    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .end local v8    # "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    .end local v9    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .end local v10    # "startedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .end local v11    # "taskRect":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 638
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 639
    const/high16 v1, 0x3f800000    # 1.0f

    .line 638
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 640
    const-wide/16 v2, 0x86

    .line 638
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 641
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 638
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 570
    :cond_2
    return-void

    .line 625
    .restart local v7    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .restart local v9    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_3
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    .line 626
    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    .line 625
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;-><init>(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;

    .prologue
    .line 527
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 375
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 376
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/RecentsEventBus;->unregister(Ljava/lang/Object;)V

    .line 377
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->unregister(Ljava/lang/Object;)V

    .line 374
    return-void
.end method

.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 484
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDrawForeground(Landroid/graphics/Canvas;)V

    .line 488
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleDockStates()Ljava/util/ArrayList;

    move-result-object v1

    .line 489
    .local v1, "visDockStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack$DockState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 490
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v2, v2, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->draw(Landroid/graphics/Canvas;)V

    .line 489
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 483
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 420
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    .line 421
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, p2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, p3

    invoke-virtual {v7, p2, p3, v8, v9}, Lcom/android/systemui/recents/views/TaskStackView;->layout(IIII)V

    .line 425
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_1

    .line 426
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int v5, v7, v8

    .line 427
    .local v5, "leftRightInsets":I
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int v6, v7, v8

    .line 428
    .local v6, "topBottomInsets":I
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 429
    .local v3, "childWidth":I
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 430
    .local v0, "childHeight":I
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, p2

    .line 431
    sub-int v8, p4, p2

    sub-int/2addr v8, v5

    sub-int/2addr v8, v3

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    .line 430
    add-int v1, v7, v8

    .line 432
    .local v1, "childLeft":I
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, p3

    .line 433
    sub-int v8, p5, p3

    sub-int/2addr v8, v6

    sub-int/2addr v8, v0

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    .line 432
    add-int v2, v7, v8

    .line 434
    .local v2, "childTop":I
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    add-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v7, v1, v2, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 438
    .end local v0    # "childHeight":I
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v3    # "childWidth":I
    .end local v5    # "leftRightInsets":I
    .end local v6    # "topBottomInsets":I
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentMenuView:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/RecentMenuView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_2

    .line 439
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentMenuView:Lcom/android/systemui/recents/views/RecentMenuView;

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentMenuView:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/RecentMenuView;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentMenuView:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/RecentMenuView;->getMeasuredHeight()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11, v8, v9}, Lcom/android/systemui/recents/views/RecentMenuView;->layout(IIII)V

    .line 450
    :cond_2
    iget-boolean v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    if-eqz v7, :cond_3

    .line 451
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    .line 455
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v4

    .line 456
    .local v4, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v7, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    if-eqz v7, :cond_4

    .line 457
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/views/RecentsView;->setTranslationY(F)V

    .line 419
    .end local v4    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_3
    :goto_0
    return-void

    .line 459
    .restart local v4    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/views/RecentsView;->setTranslationY(F)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v6, 0x8

    const/high16 v5, 0x40000000    # 2.0f

    .line 385
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 386
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 388
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getVisibility()I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 389
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->measure(II)V

    .line 393
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v2, v6, :cond_1

    .line 394
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 395
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 394
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->measureChild(Landroid/view/View;II)V

    .line 399
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentMenuView:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentMenuView;->getVisibility()I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 400
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentMenuView:Lcom/android/systemui/recents/views/RecentMenuView;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 401
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 400
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->measureChild(Landroid/view/View;II)V

    .line 412
    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/recents/views/RecentsView;->setMeasuredDimension(II)V

    .line 384
    return-void
.end method

.method public onReload(ZZ)V
    .locals 6
    .param p1, "isResumingFromVisible"    # Z
    .param p2, "isTaskStackEmpty"    # Z

    .prologue
    const/16 v5, 0xff

    const/4 v3, 0x0

    .line 205
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 206
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 208
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-nez v2, :cond_0

    .line 209
    const/4 p1, 0x0

    .line 210
    .local p1, "isResumingFromVisible":Z
    new-instance v2, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 211
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setSystemInsets(Landroid/graphics/Rect;)V

    .line 212
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 213
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentMenuView:Lcom/android/systemui/recents/views/RecentMenuView;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/views/RecentMenuView;->setTaskStackView(Lcom/android/systemui/recents/views/TaskStackView;)V

    .line 217
    .end local p1    # "isResumingFromVisible":Z
    :cond_0
    if-eqz p1, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    .line 218
    iput-boolean v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mLastTaskLaunchedWasFreeform:Z

    .line 221
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskStackView;->onReload(Z)V

    .line 223
    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    if-nez v2, :cond_5

    .line 224
    if-eqz p1, :cond_2

    .line 226
    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0xc8

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->animateBackgroundScrim(FI)V

    .line 204
    :goto_1
    return-void

    .line 217
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 231
    :cond_2
    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-nez v2, :cond_3

    if-eqz p2, :cond_4

    .line 233
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 235
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 239
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public requstLayoutTaskStackView()V
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    .line 1026
    :cond_0
    return-void
.end method

.method public showDockRegionsAnim()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 971
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->setupVisibleDockStates()V

    .line 972
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$DockState;

    move-result-object v1

    .line 973
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget v3, v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaAlpha:I

    .line 974
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget v4, v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->hintTextAlpha:I

    .line 975
    const/4 v6, 0x0

    move-object v0, p0

    move v5, v2

    .line 972
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    .line 970
    return-void
.end method

.method public showEmptyView(I)V
    .locals 2
    .param p1, "msgResId"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    return-void
.end method

.method public updateBlurRatio(F)V
    .locals 6
    .param p1, "ratio"    # F

    .prologue
    .line 1009
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 1010
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_0

    .line 1011
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 1012
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v2

    .line 1013
    .local v2, "sGlobal":Landroid/view/WindowManagerGlobal;
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1014
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->blurRatio:F

    .line 1015
    invoke-virtual {v2, v3, v1}, Landroid/view/WindowManagerGlobal;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "sGlobal":Landroid/view/WindowManagerGlobal;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "RecentsView"

    const-string/jumbo v5, "updateBlurRatio error."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateStack(Lcom/android/systemui/recents/model/TaskStack;Z)V
    .locals 2
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "setStackViewTasks"    # Z

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 248
    if-eqz p2, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 253
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->hideEmptyView()V

    .line 246
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    const v0, 0x9100179

    .line 256
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->showEmptyView(I)V

    goto :goto_0

    .line 258
    :cond_2
    const v0, 0x9100177

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 4
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 496
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleDockStates()Ljava/util/ArrayList;

    move-result-object v2

    .line 497
    .local v2, "visDockStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack$DockState;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 498
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v3, v3, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget-object v0, v3, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 499
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-ne v0, p1, :cond_0

    .line 500
    const/4 v3, 0x1

    return v3

    .line 497
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 503
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    return v3
.end method
