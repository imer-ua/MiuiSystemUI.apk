.class public Lcom/android/systemui/recents/views/FixedSizeFrameLayout;
.super Landroid/widget/FrameLayout;
.source "FixedSizeFrameLayout.java"


# instance fields
.field mHeight:I

.field private final mLayoutBounds:Landroid/graphics/Rect;

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    .line 49
    return-void
.end method


# virtual methods
.method protected layoutContents(Landroid/graphics/Rect;Z)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "changed"    # Z

    .prologue
    .line 101
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move v1, p2

    invoke-super/range {v0 .. v5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 102
    iget v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mWidth:I

    iget v1, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mHeight:I

    iget v2, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mWidth:I

    iget v3, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mHeight:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->onSizeChanged(IIII)V

    .line 100
    return-void
.end method

.method protected measureContents(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 93
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 94
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 93
    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 92
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 62
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mWidth:I

    .line 63
    sub-int v0, p5, p3

    iput v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mHeight:I

    .line 64
    iget-object v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->layoutContents(Landroid/graphics/Rect;Z)V

    .line 60
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 55
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 56
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->measureContents(II)V

    .line 54
    return-void
.end method

.method public final requestLayout()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 75
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->measureContents(II)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->layoutContents(Landroid/graphics/Rect;Z)V

    goto :goto_0
.end method

.method public setLeftTopRightBottom(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 69
    sub-int v0, p3, p1

    iput v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mWidth:I

    .line 70
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mHeight:I

    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setLeftTopRightBottom(IIII)V

    .line 68
    return-void
.end method
