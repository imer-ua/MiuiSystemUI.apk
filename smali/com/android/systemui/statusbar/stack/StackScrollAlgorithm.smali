.class public Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;
.super Ljava/lang/Object;
.source "StackScrollAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$OnAnimationRequestedListener;,
        Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    }
.end annotation


# instance fields
.field private mCollapsedSize:I

.field private mHeadsUpMarginTop:I

.field private mIncreasedPaddingBetweenElements:I

.field private mIsExpanded:Z

.field private mIsExpandedBecauseOfHeadsUp:Z

.field private mOnAnimationRequestedListener:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$OnAnimationRequestedListener;

.field private mPaddingBetweenElements:I

.field private mStatusBarHeight:I

.field private mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method private applyCommonHeadsUpChildState(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "childState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 458
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    iget v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    .line 460
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    .line 457
    return-void
.end method

.method public static canChildBeDismissed(Landroid/view/View;)Z
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 189
    instance-of v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v1, :cond_0

    .line 190
    return v2

    :cond_0
    move-object v0, p0

    .line 192
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 193
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    return v2

    .line 196
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v1

    return v1
.end method

.method private clampPositionToShelf(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 4
    .param p1, "childViewState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .param p2, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    const/4 v3, 0x1

    .line 472
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 473
    .local v0, "shelfStart":I
    iget v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    int-to-float v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 474
    iget v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 475
    iput-boolean v3, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    .line 476
    iput-boolean v3, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    .line 478
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 480
    const/4 v1, 0x0

    iput v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 471
    :cond_1
    return-void
.end method

.method private getNotificationChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 13
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 104
    iget-object v0, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 105
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 106
    iget-object v0, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/ExpandableView;

    .line 107
    .local v12, "v":Lcom/android/systemui/statusbar/ExpandableView;
    instance-of v0, v12, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    move-object v11, v12

    .line 108
    check-cast v11, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 109
    .local v11, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v11, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 111
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    .end local v11    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 116
    .restart local v11    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    invoke-virtual {p1, v11}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v10

    .line 117
    .local v10, "parentState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 119
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .local v6, "child":Landroid/view/View;
    move-object v1, v6

    .line 120
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    add-int v2, v8, v9

    .line 121
    invoke-virtual {p1, v6}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v3

    .line 123
    iget v0, v10, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v4

    sub-float/2addr v0, v4

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v4

    sub-float v5, v0, v4

    move-object v0, p0

    move-object/from16 v4, p3

    .line 120
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateNotificationFullyShown(Lcom/android/systemui/statusbar/ExpandableView;ILcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/AmbientState;F)V

    .line 118
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 103
    .end local v6    # "child":Landroid/view/View;
    .end local v9    # "j":I
    .end local v10    # "parentState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v11    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v12    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_2
    return-void
.end method

.method private getPaddingForValue(Ljava/lang/Float;)F
    .locals 4
    .param p1, "increasedPadding"    # Ljava/lang/Float;

    .prologue
    const/4 v3, 0x0

    .line 334
    if-nez p1, :cond_0

    .line 335
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v0, v0

    return v0

    .line 336
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    .line 338
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v0, v0

    .line 339
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIncreasedPaddingBetweenElements:I

    int-to-float v1, v1

    .line 340
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 337
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    return v0

    .line 344
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v0, v0

    .line 345
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    .line 342
    invoke-static {v3, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    return v0
.end method

.method private handleDraggedViews(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 9
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    const/4 v8, 0x0

    .line 231
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getDraggedViews()Ljava/util/ArrayList;

    move-result-object v3

    .line 232
    .local v3, "draggedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "draggedView$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 233
    .local v1, "draggedView":Landroid/view/View;
    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 234
    .local v0, "childIndex":I
    if-ltz v0, :cond_0

    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    .line 235
    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 236
    .local v4, "nextChild":Landroid/view/View;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 239
    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v5

    .line 242
    .local v5, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 243
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    .line 244
    iput-boolean v8, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    .line 249
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_1
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v5

    .line 251
    .restart local v5    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v6

    iput v6, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    goto :goto_0

    .line 230
    .end local v0    # "childIndex":I
    .end local v1    # "draggedView":Landroid/view/View;
    .end local v4    # "nextChild":Landroid/view/View;
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_2
    return-void
.end method

.method private initAlgorithmState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 23
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 261
    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result v4

    .line 263
    .local v4, "bottomOverScroll":F
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getScrollY()I

    move-result v19

    .line 267
    .local v19, "scrollY":I
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 268
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v4

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    .line 271
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getHostView()Landroid/view/ViewGroup;

    move-result-object v10

    .line 272
    .local v10, "hostView":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 273
    .local v5, "childCount":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 274
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 275
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->clear()V

    .line 276
    const/4 v15, 0x0

    .line 277
    .local v15, "notGoneIndex":I
    const/4 v13, 0x0

    .line 278
    .local v13, "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    const/4 v11, 0x0

    .end local v13    # "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    .local v11, "i":I
    :goto_0
    if-ge v11, v5, :cond_8

    .line 279
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/statusbar/ExpandableView;

    .line 280
    .local v20, "v":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 281
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 278
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 284
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateNotGoneIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILcom/android/systemui/statusbar/ExpandableView;)I

    move-result v15

    .line 285
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v12

    .line 286
    .local v12, "increasedPadding":F
    const/16 v21, 0x0

    cmpl-float v21, v12, v21

    if-eqz v21, :cond_6

    .line 287
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    if-eqz v13, :cond_3

    .line 289
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    .line 290
    .local v17, "prevValue":Ljava/lang/Float;
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingForValue(Ljava/lang/Float;)F

    move-result v14

    .line 291
    .local v14, "newValue":F
    if-eqz v17, :cond_2

    .line 292
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingForValue(Ljava/lang/Float;)F

    move-result v16

    .line 293
    .local v16, "prevPadding":F
    const/16 v21, 0x0

    cmpl-float v21, v12, v21

    if-lez v21, :cond_5

    .line 294
    move/from16 v0, v16

    invoke-static {v0, v14, v12}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v14

    .line 305
    .end local v16    # "prevPadding":F
    :cond_2
    :goto_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .end local v14    # "newValue":F
    .end local v17    # "prevValue":Ljava/lang/Float;
    :cond_3
    :goto_3
    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v21, v0

    if-eqz v21, :cond_7

    move-object/from16 v18, v20

    .line 312
    check-cast v18, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 316
    .local v18, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v9

    .line 317
    .local v9, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v21

    if-eqz v21, :cond_7

    if-eqz v9, :cond_7

    .line 318
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "childRow$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 319
    .local v6, "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 321
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v8

    .line 322
    .local v8, "childState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iput v15, v8, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    .line 323
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 298
    .end local v6    # "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v7    # "childRow$iterator":Ljava/util/Iterator;
    .end local v8    # "childState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v9    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v18    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v14    # "newValue":F
    .restart local v16    # "prevPadding":F
    .restart local v17    # "prevValue":Ljava/lang/Float;
    :cond_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_2

    .line 302
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v21

    .line 299
    move/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v14, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v14

    goto :goto_2

    .line 307
    .end local v14    # "newValue":F
    .end local v16    # "prevPadding":F
    .end local v17    # "prevValue":Ljava/lang/Float;
    :cond_6
    if-eqz v13, :cond_3

    .line 308
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Float;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingForValue(Ljava/lang/Float;)F

    move-result v14

    .line 309
    .restart local v14    # "newValue":F
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 328
    .end local v14    # "newValue":F
    :cond_7
    move-object/from16 v13, v20

    .local v13, "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    goto/16 :goto_1

    .line 260
    .end local v12    # "increasedPadding":F
    .end local v13    # "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v20    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_8
    return-void
.end method

.method private initConstants(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    const v1, 0x90f014d

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    const v1, 0x90f014f

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIncreasedPaddingBetweenElements:I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    const v1, 0x90f00a0

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f02ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mStatusBarHeight:I

    .line 71
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpTopMargin(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mHeadsUpMarginTop:I

    .line 63
    return-void
.end method

.method private updateClipping(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 16
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 151
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isOnKeyguard()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v14

    .line 152
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v15

    .line 151
    add-float v3, v14, v15

    .line 153
    .local v3, "drawStart":F
    :goto_0
    const/4 v11, 0x0

    .line 154
    .local v11, "previousNotificationEnd":F
    const/4 v12, 0x0

    .line 155
    .local v12, "previousNotificationStart":F
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 156
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_8

    .line 157
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 158
    .local v1, "child":Lcom/android/systemui/statusbar/ExpandableView;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v13

    .line 159
    .local v13, "state":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->mustStayOnScreen()Z

    move-result v14

    if-nez v14, :cond_0

    .line 160
    invoke-static {v3, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 161
    invoke-static {v3, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 163
    :cond_0
    iget v9, v13, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 164
    .local v9, "newYTranslation":F
    iget v14, v13, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v7, v14

    .line 165
    .local v7, "newHeight":F
    add-float v8, v9, v7

    .line 166
    .local v8, "newNotificationEnd":F
    instance-of v14, v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v14, :cond_5

    move-object v14, v1

    .line 167
    check-cast v14, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v5

    .line 168
    :goto_2
    instance-of v14, v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v14, :cond_6

    move-object v14, v1

    .line 169
    check-cast v14, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v6

    .line 170
    :goto_3
    iget-boolean v14, v13, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    if-nez v14, :cond_7

    cmpg-float v14, v9, v11

    if-gez v14, :cond_7

    .line 171
    if-nez v5, :cond_1

    if-eqz v6, :cond_2

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v14

    .line 170
    if-eqz v14, :cond_7

    .line 173
    :cond_2
    sub-float v10, v11, v9

    .line 174
    .local v10, "overlapAmount":F
    float-to-int v14, v10

    iput v14, v13, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    .line 179
    .end local v10    # "overlapAmount":F
    :goto_4
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->isTransparent()Z

    move-result v14

    if-nez v14, :cond_3

    .line 182
    move v11, v8

    .line 183
    move v12, v9

    .line 156
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 152
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v2    # "childCount":I
    .end local v3    # "drawStart":F
    .end local v4    # "i":I
    .end local v7    # "newHeight":F
    .end local v8    # "newNotificationEnd":F
    .end local v9    # "newYTranslation":F
    .end local v11    # "previousNotificationEnd":F
    .end local v12    # "previousNotificationStart":F
    .end local v13    # "state":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "drawStart":F
    goto :goto_0

    .line 166
    .restart local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .restart local v2    # "childCount":I
    .restart local v4    # "i":I
    .restart local v7    # "newHeight":F
    .restart local v8    # "newNotificationEnd":F
    .restart local v9    # "newYTranslation":F
    .restart local v11    # "previousNotificationEnd":F
    .restart local v12    # "previousNotificationStart":F
    .restart local v13    # "state":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_5
    const/4 v5, 0x0

    .local v5, "isHeadsUp":Z
    goto :goto_2

    .line 168
    .end local v5    # "isHeadsUp":Z
    :cond_6
    const/4 v6, 0x0

    .local v6, "isHeadsUpAnimatingAway":Z
    goto :goto_3

    .line 176
    .end local v6    # "isHeadsUpAnimatingAway":Z
    :cond_7
    const/4 v14, 0x0

    iput v14, v13, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    goto :goto_4

    .line 150
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v7    # "newHeight":F
    .end local v8    # "newNotificationEnd":F
    .end local v9    # "newYTranslation":F
    .end local v13    # "state":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_8
    return-void
.end method

.method private updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 14
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    .line 204
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDimmed()Z

    move-result v6

    .line 205
    .local v6, "dimmed":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v5

    .line 206
    .local v5, "dark":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isHideSensitive()Z

    move-result v7

    .line 207
    .local v7, "hideSensitive":Z
    const/4 v8, 0x0

    .line 208
    .local v8, "hideSensitiveByAppLock":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v1

    .line 209
    .local v1, "activatedChild":Landroid/view/View;
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 210
    .local v3, "childCount":I
    const/4 v9, 0x0

    .end local v8    # "hideSensitiveByAppLock":Z
    .local v9, "i":I
    :goto_0
    if-ge v9, v3, :cond_4

    .line 211
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 212
    .local v2, "child":Landroid/view/View;
    instance-of v11, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v11, :cond_0

    move-object v11, v2

    .line 213
    check-cast v11, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v11

    iget-boolean v8, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->hideSensitiveByAppLock:Z

    .line 215
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v4

    .line 216
    .local v4, "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iput-boolean v6, v4, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    .line 217
    iput-boolean v5, v4, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    .line 218
    if-nez v7, :cond_2

    move v11, v8

    :goto_1
    iput-boolean v11, v4, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    .line 219
    if-ne v1, v2, :cond_3

    const/4 v10, 0x1

    .line 220
    .local v10, "isActivatedChild":Z
    :goto_2
    if-eqz v6, :cond_1

    if-eqz v10, :cond_1

    .line 221
    iget v11, v4, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getZDistanceBetweenElements()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    iput v11, v4, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    .line 210
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 218
    .end local v10    # "isActivatedChild":Z
    :cond_2
    const/4 v11, 0x1

    goto :goto_1

    .line 219
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "isActivatedChild":Z
    goto :goto_2

    .line 203
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v10    # "isActivatedChild":Z
    :cond_4
    return-void
.end method

.method private updateHeadsUpStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 8
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 423
    iget-object v6, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 424
    .local v1, "childCount":I
    const/4 v5, 0x0

    .line 425
    .local v5, "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v3, 0x0

    .end local v5    # "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_6

    .line 426
    iget-object v6, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 427
    .local v0, "child":Landroid/view/View;
    instance-of v6, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v6, :cond_1

    .line 425
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v0

    .line 430
    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 431
    .local v4, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 434
    :cond_2
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v2

    .line 435
    .local v2, "childState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-nez v5, :cond_3

    .line 436
    move-object v5, v4

    .line 437
    .local v5, "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v6, 0x1

    iput v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    .line 439
    .end local v5    # "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 440
    invoke-direct {p0, v2, v4}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->applyCommonHeadsUpChildState(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 441
    if-ne v4, v5, :cond_4

    .line 443
    iget v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    neg-int v6, v6

    int-to-float v6, v6

    iput v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 444
    iput v7, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    goto :goto_1

    .line 447
    :cond_4
    const/4 v6, 0x0

    iput v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    goto :goto_1

    .line 449
    :cond_5
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 450
    invoke-direct {p0, v2, v4}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->applyCommonHeadsUpChildState(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 451
    iget v6, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mHeadsUpMarginTop:I

    int-to-float v6, v6

    iput v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 452
    iput v7, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    goto :goto_1

    .line 422
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v4    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_6
    return-void
.end method

.method private updateNotGoneIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILcom/android/systemui/statusbar/ExpandableView;)I
    .locals 2
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "notGoneIndex"    # I
    .param p4, "v"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 352
    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v0

    .line 353
    .local v0, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iput p3, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    .line 354
    iget-object v1, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    add-int/lit8 p3, p3, 0x1

    .line 356
    return p3
.end method

.method private updateNotificationFullyShown(Lcom/android/systemui/statusbar/ExpandableView;ILcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/AmbientState;F)V
    .locals 14
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "index"    # I
    .param p3, "childViewState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .param p4, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p5, "parentY"    # F

    .prologue
    .line 491
    instance-of v12, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v12, :cond_5

    move-object v12, p1

    .line 492
    check-cast v12, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isFirstRow()Z

    move-result v6

    .line 493
    :goto_0
    instance-of v12, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v12, :cond_0

    .line 494
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->areChildrenExpanded()Z

    move-result v12

    .line 493
    if-eqz v12, :cond_0

    .line 494
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->isChildInGroup()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 493
    :cond_0
    const/4 v10, 0x0

    .line 498
    .local v10, "isExpandedGroupRow":Z
    :goto_1
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v8, v12

    .line 500
    .local v8, "height":F
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    add-float v11, p5, v12

    .line 501
    .local v11, "y":F
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->isExpansionChanging()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 502
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v12

    int-to-float v4, v12

    .line 506
    .local v4, "contentHeight":F
    :goto_2
    if-eqz v10, :cond_1

    move-object v12, p1

    .line 507
    check-cast v12, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v12

    .line 508
    const/4 v13, 0x0

    .line 507
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 509
    .local v5, "firstChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v12

    int-to-float v8, v12

    .line 513
    .end local v5    # "firstChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    if-eqz p2, :cond_2

    if-eqz v6, :cond_9

    :cond_2
    const/4 v3, 0x0

    .line 515
    .local v3, "considerState":Z
    :goto_3
    if-eqz v3, :cond_a

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v12

    int-to-float v12, v12

    cmpg-float v12, v11, v12

    if-gtz v12, :cond_a

    const/4 v2, 0x1

    .line 516
    .local v2, "considerAnimation":Z
    :goto_4
    add-float v12, v11, v8

    cmpg-float v12, v12, v4

    if-gtz v12, :cond_b

    const/4 v7, 0x1

    .line 517
    .local v7, "fullyShown":Z
    :goto_5
    if-eqz v3, :cond_3

    if-eqz v7, :cond_c

    :cond_3
    const/4 v9, 0x0

    .line 518
    .local v9, "hideInTracking":Z
    :goto_6
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getViewType()I

    move-result v12

    if-nez v12, :cond_e

    .line 519
    if-eqz v10, :cond_d

    const/4 v1, 0x0

    .line 521
    .local v1, "animateScale":Z
    :goto_7
    if-eqz v9, :cond_f

    const/4 v12, 0x0

    :goto_8
    move-object/from16 v0, p3

    iput v12, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    .line 522
    if-eqz v1, :cond_10

    if-eqz v9, :cond_10

    const v12, 0x3f6b851f    # 0.92f

    :goto_9
    move-object/from16 v0, p3

    iput v12, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->scaleX:F

    .line 523
    if-eqz v1, :cond_11

    if-eqz v9, :cond_11

    const v12, 0x3f6b851f    # 0.92f

    :goto_a
    move-object/from16 v0, p3

    iput v12, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->scaleY:F

    .line 526
    if-eqz v2, :cond_4

    .line 527
    move-object/from16 v0, p3

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->fullyShown:Z

    if-eq v12, v7, :cond_4

    .line 528
    iget-object v12, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mOnAnimationRequestedListener:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$OnAnimationRequestedListener;

    if-eqz v12, :cond_4

    .line 529
    if-eqz v7, :cond_12

    .line 530
    iget-object v12, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mOnAnimationRequestedListener:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$OnAnimationRequestedListener;

    invoke-interface {v12, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$OnAnimationRequestedListener;->onPopupAnimationRequested(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 535
    :cond_4
    :goto_b
    move-object/from16 v0, p3

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->fullyShown:Z

    .line 490
    return-void

    .line 491
    .end local v1    # "animateScale":Z
    .end local v2    # "considerAnimation":Z
    .end local v3    # "considerState":Z
    .end local v4    # "contentHeight":F
    .end local v7    # "fullyShown":Z
    .end local v8    # "height":F
    .end local v9    # "hideInTracking":Z
    .end local v10    # "isExpandedGroupRow":Z
    .end local v11    # "y":F
    :cond_5
    const/4 v6, 0x0

    .local v6, "firstRowNotification":Z
    goto/16 :goto_0

    .end local v6    # "firstRowNotification":Z
    :cond_6
    move-object v12, p1

    .line 495
    check-cast v12, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object v12, p1

    .line 496
    check-cast v12, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_7

    const/4 v10, 0x1

    .restart local v10    # "isExpandedGroupRow":Z
    goto/16 :goto_1

    .end local v10    # "isExpandedGroupRow":Z
    :cond_7
    const/4 v10, 0x0

    .restart local v10    # "isExpandedGroupRow":Z
    goto/16 :goto_1

    .line 503
    .restart local v8    # "height":F
    .restart local v11    # "y":F
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getMaxLayoutHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v13

    sub-float v4, v12, v13

    .restart local v4    # "contentHeight":F
    goto/16 :goto_2

    .line 513
    :cond_9
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 515
    .restart local v3    # "considerState":Z
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "considerAnimation":Z
    goto :goto_4

    .line 516
    :cond_b
    const/4 v7, 0x0

    .restart local v7    # "fullyShown":Z
    goto :goto_5

    .line 517
    :cond_c
    const/4 v9, 0x1

    .restart local v9    # "hideInTracking":Z
    goto :goto_6

    .line 519
    :cond_d
    const/4 v1, 0x1

    .restart local v1    # "animateScale":Z
    goto :goto_7

    .line 518
    .end local v1    # "animateScale":Z
    :cond_e
    const/4 v1, 0x0

    .restart local v1    # "animateScale":Z
    goto :goto_7

    .line 521
    :cond_f
    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_8

    .line 522
    :cond_10
    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_9

    .line 523
    :cond_11
    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_a

    .line 532
    :cond_12
    iget-object v12, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mOnAnimationRequestedListener:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$OnAnimationRequestedListener;

    invoke-interface {v12, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$OnAnimationRequestedListener;->onDismissAnimationRequested(Lcom/android/systemui/statusbar/ExpandableView;)V

    goto :goto_b
.end method

.method private updatePositionsForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 7
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 370
    iget v0, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    neg-int v0, v0

    int-to-float v5, v0

    .line 371
    .local v5, "currentYPosition":F
    iget-object v0, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 372
    .local v6, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 373
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateChild(ILcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;F)F

    move-result v5

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    :cond_0
    return-void
.end method

.method private updateShelfState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 1
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 145
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v0

    .line 146
    .local v0, "shelf":Lcom/android/systemui/statusbar/NotificationShelf;
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationShelf;->updateState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 144
    return-void
.end method

.method private updateSpeedBumpState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 6
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 132
    iget-object v5, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 133
    .local v2, "childCount":I
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v0

    .line 134
    .local v0, "belowSpeedBump":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 135
    iget-object v5, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 136
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v3

    .line 140
    .local v3, "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-lt v4, v0, :cond_0

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 134
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 140
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 131
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_1
    return-void
.end method

.method private updateZValuesForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 7
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 555
    iget-object v0, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 556
    .local v6, "childCount":I
    const/4 v2, 0x0

    .line 557
    .local v2, "childrenOnTop":F
    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 558
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateChildZValue(IFLcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)F

    move-result v2

    .line 557
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 554
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMaxAllowedChildHeight(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 539
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 540
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 541
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    return v1

    .line 543
    .end local v0    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    if-nez p1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method protected getPaddingAfterChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/ExpandableView;)I
    .locals 1
    .param p1, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p2, "child"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 419
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->getPaddingAfterChild(Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v0

    return v0
.end method

.method public getStackScrollState(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 1
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 84
    .local v0, "algorithmState":Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->resetViewStates()V

    .line 86
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initAlgorithmState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 88
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updatePositionsForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 90
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateZValuesForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 92
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateHeadsUpStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 94
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->handleDraggedViews(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 95
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 96
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateClipping(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 97
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateSpeedBumpState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 98
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateShelfState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 99
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getNotificationChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 78
    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initConstants(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public setExpandedBecauseOfHeadsUp(Z)V
    .locals 0
    .param p1, "isExpandedBecauseOfHeadsUp"    # Z

    .prologue
    .line 611
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpandedBecauseOfHeadsUp:Z

    .line 610
    return-void
.end method

.method public setIsExpanded(Z)V
    .locals 0
    .param p1, "isExpanded"    # Z

    .prologue
    .line 607
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    .line 606
    return-void
.end method

.method public setOnAnimationRequestedListener(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$OnAnimationRequestedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$OnAnimationRequestedListener;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mOnAnimationRequestedListener:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$OnAnimationRequestedListener;

    .line 74
    return-void
.end method

.method protected updateChild(ILcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;F)F
    .locals 10
    .param p1, "i"    # I
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p4, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p5, "currentYPosition"    # F

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 381
    iget-object v0, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 382
    .local v1, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v3

    .line 383
    .local v3, "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iput v2, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    .line 384
    invoke-virtual {p0, p3, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingAfterChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v7

    .line 385
    .local v7, "paddingAfterChild":I
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v6

    .line 386
    .local v6, "childHeight":I
    iput p5, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 387
    const/4 v0, 0x4

    iput v0, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    .line 388
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getViewType()I

    move-result v8

    .line 389
    .local v8, "viewType":I
    if-ne v8, v9, :cond_5

    .line 390
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v0

    sub-int/2addr v0, v6

    int-to-float v0, v0

    .line 391
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v2

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v2, v4

    .line 390
    add-float/2addr v0, v2

    iput v0, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 398
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpandedBecauseOfHeadsUp:Z

    if-nez v0, :cond_2

    if-eqz v8, :cond_1

    .line 399
    const/16 v0, 0xd

    if-ne v8, v0, :cond_2

    .line 400
    :cond_1
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 404
    :cond_2
    :goto_1
    iget v0, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    int-to-float v2, v6

    add-float/2addr v0, v2

    int-to-float v2, v7

    add-float p5, v0, v2

    .line 405
    cmpg-float v0, p5, v5

    if-gtz v0, :cond_3

    .line 406
    iput v9, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    .line 408
    :cond_3
    iget v0, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    if-nez v0, :cond_4

    .line 409
    const-string/jumbo v0, "StackScrollAlgorithm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to assign location for child "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_4
    iget v0, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v2

    .line 413
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v4

    .line 412
    add-float/2addr v2, v4

    add-float/2addr v0, v2

    iput v0, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 414
    return p5

    .line 392
    :cond_5
    if-eqz v8, :cond_6

    .line 393
    const/4 v0, 0x1

    if-ne v8, v0, :cond_0

    .line 394
    :cond_6
    invoke-direct {p0, v3, p4}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToShelf(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    goto :goto_0

    :cond_7
    move-object v0, p0

    move v2, p1

    move-object v4, p4

    .line 401
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateNotificationFullyShown(Lcom/android/systemui/statusbar/ExpandableView;ILcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/AmbientState;F)V

    goto :goto_1
.end method

.method protected updateChildZValue(IFLcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)F
    .locals 13
    .param p1, "i"    # I
    .param p2, "childrenOnTop"    # F
    .param p3, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p4, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p5, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 566
    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 567
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableView;
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v3

    .line 568
    .local v3, "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getZDistanceBetweenElements()I

    move-result v9

    .line 569
    .local v9, "zDistanceBetweenElements":I
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getBaseZHeight()I

    move-result v10

    int-to-float v1, v10

    .line 570
    .local v1, "baseZ":F
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->mustStayOnScreen()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 571
    iget v10, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v11

    .line 572
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v12

    .line 571
    add-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 573
    const/4 v10, 0x0

    cmpl-float v10, p2, v10

    if-eqz v10, :cond_0

    .line 574
    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr p2, v10

    .line 581
    :goto_0
    int-to-float v10, v9

    mul-float/2addr v10, p2

    .line 580
    add-float/2addr v10, v1

    iput v10, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    .line 603
    :goto_1
    return p2

    .line 576
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v10

    .line 577
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v11

    .line 576
    add-float/2addr v10, v11

    .line 577
    iget v11, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 576
    sub-float v6, v10, v11

    .line 578
    .local v6, "overlap":F
    iget v10, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v10, v10

    div-float v10, v6, v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    add-float/2addr p2, v10

    goto :goto_0

    .line 582
    .end local v6    # "overlap":F
    :cond_1
    if-nez p1, :cond_4

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->isAboveShelf()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 585
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v7

    .line 586
    .local v7, "shelfHeight":I
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v10

    sub-int/2addr v10, v7

    int-to-float v10, v10

    .line 587
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v11

    .line 586
    add-float/2addr v10, v11

    .line 588
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v11

    .line 586
    add-float v8, v10, v11

    .line 589
    .local v8, "shelfStart":F
    iget v10, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getPinnedHeadsUpHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 590
    iget v11, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v11, v11

    .line 589
    add-float v5, v10, v11

    .line 591
    .local v5, "notificationEnd":F
    cmpl-float v10, v8, v5

    if-lez v10, :cond_2

    .line 592
    iput v1, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    goto :goto_1

    .line 594
    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    .line 595
    .local v4, "factor":F
    if-eqz v7, :cond_3

    .line 596
    sub-float v10, v5, v8

    int-to-float v11, v7

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 598
    :cond_3
    int-to-float v10, v9

    mul-float/2addr v10, v4

    add-float/2addr v10, v1

    iput v10, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    goto :goto_1

    .line 601
    .end local v4    # "factor":F
    .end local v5    # "notificationEnd":F
    .end local v7    # "shelfHeight":I
    .end local v8    # "shelfStart":F
    :cond_4
    iput v1, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    goto :goto_1
.end method
