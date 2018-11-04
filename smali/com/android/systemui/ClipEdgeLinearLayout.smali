.class public Lcom/android/systemui/ClipEdgeLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ClipEdgeLinearLayout.java"


# instance fields
.field private mClipEdge:Z

.field private mClipRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/ClipEdgeLinearLayout;->mClipEdge:Z

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/ClipEdgeLinearLayout;->mClipEdge:Z

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/ClipEdgeLinearLayout;->mClipEdge:Z

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    .line 24
    return-void
.end method

.method private getClipRect()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 42
    iget-object v1, p0, Lcom/android/systemui/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 43
    iget-object v1, p0, Lcom/android/systemui/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 44
    iget-object v1, p0, Lcom/android/systemui/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/ClipEdgeLinearLayout;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 45
    iget-object v1, p0, Lcom/android/systemui/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/ClipEdgeLinearLayout;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/ClipEdgeLinearLayout;->getWidth()I

    move-result v0

    .line 46
    :cond_0
    invoke-direct {p0, v0, p0}, Lcom/android/systemui/ClipEdgeLinearLayout;->setClipRectRight(ILandroid/view/ViewGroup;)V

    .line 41
    return-void
.end method

.method private setClipRectRight(ILandroid/view/ViewGroup;)V
    .locals 5
    .param p1, "pos"    # I
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 52
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ge v2, p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 54
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, p1, v2

    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/ClipEdgeLinearLayout;->setClipRectRight(ILandroid/view/ViewGroup;)V

    .line 51
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/ClipEdgeLinearLayout;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    iget-object v2, p0, Lcom/android/systemui/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/ClipEdgeLinearLayout;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v4, p1, v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 60
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, p1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 61
    iget-object v2, p0, Lcom/android/systemui/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/ClipEdgeLinearLayout;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 50
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v0, 0x0

    .line 70
    iget-boolean v1, p0, Lcom/android/systemui/ClipEdgeLinearLayout;->mClipEdge:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/systemui/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 71
    .local v0, "clip":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 73
    iget-object v1, p0, Lcom/android/systemui/ClipEdgeLinearLayout;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 75
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 76
    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 69
    :cond_2
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/systemui/ClipEdgeLinearLayout;->mClipEdge:Z

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 29
    return-void

    :cond_0
    move v3, p3

    .line 30
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 35
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 36
    iget-boolean v0, p0, Lcom/android/systemui/ClipEdgeLinearLayout;->mClipEdge:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/ClipEdgeLinearLayout;->getClipRect()V

    .line 34
    :cond_0
    return-void
.end method

.method public setClipEdge(Z)V
    .locals 0
    .param p1, "clipEdge"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/ClipEdgeLinearLayout;->mClipEdge:Z

    .line 81
    return-void
.end method
