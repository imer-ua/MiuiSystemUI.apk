.class public abstract Lcom/android/systemui/statusbar/ExpandableView;
.super Landroid/widget/FrameLayout;
.source "ExpandableView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;
    }
.end annotation


# static fields
.field private static mClipRect:Landroid/graphics/Rect;


# instance fields
.field private mActualHeight:I

.field private mChangingPosition:Z

.field protected mClipBottomAmount:I

.field private mClipToActualHeight:Z

.field protected mClipTopAmount:I

.field private mDark:Z

.field private mInShelf:Z

.field private mMatchParentViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMinClipTopAmount:I

.field protected mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

.field private mTransformingInShelf:Z

.field private mTransientContainer:Landroid/view/ViewGroup;

.field protected mViewType:I

.field private mWillBeGone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    .line 53
    iput v1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mMinClipTopAmount:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipToActualHeight:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mChangingPosition:Z

    .line 60
    return-void
.end method


# virtual methods
.method public areChildrenExpanded()Z
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public createNewViewState(Lcom/android/systemui/statusbar/stack/StackScrollState;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .locals 1
    .param p1, "stackScrollState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 501
    new-instance v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;-><init>()V

    return-object v0
.end method

.method public getActualHeight()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeight:I

    return v0
.end method

.method public getBoundsOnScreen(Landroid/graphics/Rect;Z)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "clipToParent"    # Z

    .prologue
    .line 357
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 358
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 360
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 362
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 363
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 356
    return-void
.end method

.method public getClipBottomAmount()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipBottomAmount:I

    return v0
.end method

.method public getClipTopAmount()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipTopAmount:I

    return v0
.end method

.method public getCollapsedHeight()I
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 348
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 349
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 350
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 351
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 352
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 347
    return-void
.end method

.method public getExtraBottomPadding()I
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method protected getExtraClipRightAmount()I
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public getIncreasedPaddingAmount()F
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMaxContentHeight()I
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getOutlineAlpha()F
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method public getOutlineTranslation()I
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public getPinnedHeadsUpHeight()I
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getShadowAlpha()F
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public getTransientContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mTransientContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getTranslation()F
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mViewType:I

    return v0
.end method

.method public hasNoContentHeight()Z
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 425
    invoke-super {p0}, Landroid/widget/FrameLayout;->hasOverlappingRendering()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isAboveShelf()Z
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public isChangingPosition()Z
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mChangingPosition:Z

    return v0
.end method

.method public isChildInGroup()Z
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x0

    return v0
.end method

.method public isContentExpandable()Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public isDark()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mDark:Z

    return v0
.end method

.method public isGroupExpanded()Z
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x0

    return v0
.end method

.method public isGroupExpansionChanging()Z
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    return v0
.end method

.method public isInShelf()Z
    .locals 1

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mInShelf:Z

    return v0
.end method

.method public isSummaryWithChildren()Z
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public isTransformingIntoShelf()Z
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mTransformingInShelf:Z

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public mustStayOnScreen()Z
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public notifyHeightChanged(Z)V
    .locals 1
    .param p1, "needsAnimation"    # Z

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 279
    :cond_0
    return-void
.end method

.method public onHeightReset()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;->onReset(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 331
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 123
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->updateClipping()V

    .line 122
    return-void
.end method

.method protected onMeasure(II)V
    .locals 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 76
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 77
    .local v8, "givenSize":I
    const v15, 0x7fffffff

    .line 78
    .local v15, "ownMaxHeight":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 79
    .local v9, "heightMode":I
    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    .line 80
    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 82
    :cond_0
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 83
    .local v13, "newHeightSpec":I
    const/4 v12, 0x0

    .line 84
    .local v12, "maxChildHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/ExpandableView;->getChildCount()I

    move-result v5

    .line 85
    .local v5, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v5, :cond_5

    .line 86
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/ExpandableView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 87
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 85
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 90
    :cond_1
    move v7, v13

    .line 91
    .local v7, "childHeightSpec":I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 92
    .local v11, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 93
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    if-ltz v17, :cond_2

    .line 95
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v15, :cond_3

    .line 96
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 100
    :cond_2
    :goto_2
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->getChildMeasureSpec(III)I

    move-result v17

    .line 99
    move/from16 v0, v17

    invoke-virtual {v3, v0, v7}, Landroid/view/View;->measure(II)V

    .line 102
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 103
    .local v6, "childHeight":I
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_1

    .line 97
    .end local v6    # "childHeight":I
    :cond_3
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_2

    .line 105
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 108
    .end local v3    # "child":Landroid/view/View;
    .end local v7    # "childHeightSpec":I
    .end local v11    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    if-ne v9, v0, :cond_6

    move v14, v8

    .line 110
    .local v14, "ownHeight":I
    :goto_3
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "child$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 113
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    const/16 v18, 0x0

    .line 112
    move/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->getChildMeasureSpec(III)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v3, v0, v13}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 109
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "child$iterator":Ljava/util/Iterator;
    .end local v14    # "ownHeight":I
    :cond_6
    invoke-static {v15, v12}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_3

    .line 116
    .restart local v4    # "child$iterator":Ljava/util/Iterator;
    .restart local v14    # "ownHeight":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 117
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 118
    .local v16, "width":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setMeasuredDimension(II)V

    .line 75
    return-void
.end method

.method public abstract performAddAnimation(JJLandroid/animation/AnimatorListenerAdapter;)V
.end method

.method public abstract performRemoveAnimation(JFLandroid/animation/AnimatorListenerAdapter;Ljava/lang/Runnable;)V
.end method

.method public pointInView(FFF)Z
    .locals 5
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .prologue
    const/4 v2, 0x0

    .line 129
    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipTopAmount:I

    int-to-float v1, v3

    .line 130
    .local v1, "top":F
    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeight:I

    int-to-float v0, v3

    .line 132
    .local v0, "bottom":F
    neg-float v3, p3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_0

    .line 133
    sub-float v3, v1, p3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_0

    .line 134
    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableView;->mRight:I

    iget v4, p0, Lcom/android/systemui/statusbar/ExpandableView;->mLeft:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v3, p3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    .line 135
    add-float v3, v0, p3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_0

    const/4 v2, 0x1

    .line 132
    :cond_0
    return v2
.end method

.method public setActualHeight(I)V
    .locals 1
    .param p1, "actualHeight"    # I

    .prologue
    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 153
    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 1
    .param p1, "actualHeight"    # I
    .param p2, "notifyListeners"    # Z

    .prologue
    .line 146
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeight:I

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->updateClipping()V

    .line 148
    if-eqz p2, :cond_0

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableView;->notifyHeightChanged(Z)V

    .line 145
    :cond_0
    return-void
.end method

.method public setActualHeightAnimating(Z)V
    .locals 0
    .param p1, "animating"    # Z

    .prologue
    .line 498
    return-void
.end method

.method public setBelowSpeedBump(Z)V
    .locals 0
    .param p1, "below"    # Z

    .prologue
    .line 309
    return-void
.end method

.method public setChangingPosition(Z)V
    .locals 0
    .param p1, "changingPosition"    # Z

    .prologue
    .line 461
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mChangingPosition:Z

    .line 460
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0
    .param p1, "clipBottomAmount"    # I

    .prologue
    .line 256
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipBottomAmount:I

    .line 257
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->updateClipping()V

    .line 255
    return-void
.end method

.method public setClipToActualHeight(Z)V
    .locals 0
    .param p1, "clipToActualHeight"    # Z

    .prologue
    .line 395
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipToActualHeight:Z

    .line 396
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->updateClipping()V

    .line 394
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 244
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipTopAmount:I

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->updateClipping()V

    .line 243
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 0
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mDark:Z

    .line 205
    return-void
.end method

.method public setDimmed(ZZ)V
    .locals 0
    .param p1, "dimmed"    # Z
    .param p2, "fade"    # Z

    .prologue
    .line 195
    return-void
.end method

.method public setFakeShadowIntensity(FFII)V
    .locals 0
    .param p1, "shadowIntensity"    # F
    .param p2, "outlineAlpha"    # F
    .param p3, "shadowYEnd"    # I
    .param p4, "outlineTranslation"    # I

    .prologue
    .line 449
    return-void
.end method

.method public setHideSensitive(ZZJJ)V
    .locals 0
    .param p1, "hideSensitive"    # Z
    .param p2, "animated"    # Z
    .param p3, "delay"    # J
    .param p5, "duration"    # J

    .prologue
    .line 227
    return-void
.end method

.method public setHideSensitiveForIntrinsicHeight(Z)V
    .locals 0
    .param p1, "hideSensitive"    # Z

    .prologue
    .line 220
    return-void
.end method

.method public setInShelf(Z)V
    .locals 0
    .param p1, "inShelf"    # Z

    .prologue
    .line 517
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mInShelf:Z

    .line 516
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 416
    :cond_0
    return-void
.end method

.method public setMinClipTopAmount(I)V
    .locals 0
    .param p1, "minClipTopAmount"    # I

    .prologue
    .line 412
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mMinClipTopAmount:I

    .line 411
    return-void
.end method

.method public setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    .line 268
    return-void
.end method

.method public setShadowAlpha(F)V
    .locals 0
    .param p1, "shadowAlpha"    # F

    .prologue
    .line 432
    return-void
.end method

.method public setTransformingInShelf(Z)V
    .locals 0
    .param p1, "transformingInShelf"    # Z

    .prologue
    .line 529
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mTransformingInShelf:Z

    .line 528
    return-void
.end method

.method public setTransientContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "transientContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mTransientContainer:Landroid/view/ViewGroup;

    .line 468
    return-void
.end method

.method public setTranslation(F)V
    .locals 0
    .param p1, "translation"    # F

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationX(F)V

    .line 320
    return-void
.end method

.method public setViewType(I)V
    .locals 0
    .param p1, "viewType"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mViewType:I

    .line 66
    return-void
.end method

.method public setWillBeGone(Z)V
    .locals 0
    .param p1, "willBeGone"    # Z

    .prologue
    .line 404
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mWillBeGone:Z

    .line 403
    return-void
.end method

.method protected updateClipping()V
    .locals 6

    .prologue
    .line 375
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipToActualHeight:Z

    if-eqz v3, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslation()F

    move-result v3

    float-to-int v0, v3

    .line 377
    .local v0, "left":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getExtraClipRightAmount()I

    move-result v4

    add-int v1, v3, v4

    .line 378
    .local v1, "right":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v2

    .line 379
    .local v2, "top":I
    sget-object v3, Lcom/android/systemui/statusbar/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getExtraBottomPadding()I

    move-result v5

    add-int/2addr v4, v5

    .line 380
    iget v5, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipBottomAmount:I

    .line 379
    sub-int/2addr v4, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3, v0, v2, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 381
    sget-object v3, Lcom/android/systemui/statusbar/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 374
    .end local v0    # "left":I
    .end local v1    # "right":I
    .end local v2    # "top":I
    :goto_0
    return-void

    .line 383
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public willBeGone()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mWillBeGone:Z

    return v0
.end method
