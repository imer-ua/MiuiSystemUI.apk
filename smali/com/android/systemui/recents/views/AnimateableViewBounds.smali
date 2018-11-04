.class public Lcom/android/systemui/recents/views/AnimateableViewBounds;
.super Landroid/view/ViewOutlineProvider;
.source "AnimateableViewBounds.java"


# instance fields
.field mAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mClipBounds:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mClipRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mCornerRadius:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mLastClipBounds:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mSourceView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .param p1, "source"    # Landroid/view/View;
    .param p2, "cornerRadius"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mLastClipBounds:Landroid/graphics/Rect;

    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mAlpha:F

    .line 47
    iput-object p1, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    .line 48
    iput p2, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mCornerRadius:I

    .line 46
    return-void
.end method

.method private updateClipBounds()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 116
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 117
    iget-object v3, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v3, v4

    .line 118
    iget-object v4, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v4, v5

    .line 116
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mLastClipBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mLastClipBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mAlpha:F

    return v0
.end method

.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 63
    iget v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mCornerRadius:I

    if-lez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 65
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v3, v0, v3

    .line 66
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v0, v4

    .line 67
    iget v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mCornerRadius:I

    int-to-float v5, v0

    move-object v0, p2

    .line 64
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 60
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 70
    iget-object v2, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 71
    iget-object v3, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 69
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Outline;->setRect(IIII)V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 55
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->updateClipBounds()V

    .line 54
    return-void
.end method

.method setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 79
    iget v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mAlpha:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iput p1, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mAlpha:F

    .line 82
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    .line 78
    :cond_0
    return-void
.end method

.method public setClipRight(I)V
    .locals 1
    .param p1, "right"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->updateClipBounds()V

    .line 105
    return-void
.end method
