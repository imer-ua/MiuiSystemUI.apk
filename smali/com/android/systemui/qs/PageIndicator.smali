.class public Lcom/android/systemui/qs/PageIndicator;
.super Landroid/view/ViewGroup;
.source "PageIndicator.java"


# instance fields
.field private final mPageDotSize:I

.field private final mPageDotSpace:I

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    .line 27
    iget-object v1, p0, Lcom/android/systemui/qs/PageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 28
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x90f0118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotSize:I

    .line 29
    const v1, 0x90f0119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotSpace:I

    .line 25
    return-void
.end method

.method private animate(II)V
    .locals 0
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 87
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/PageIndicator;->setIndex(I)V

    .line 82
    return-void
.end method

.method private getAlpha(Z)F
    .locals 1
    .param p1, "isMajor"    # Z

    .prologue
    .line 91
    if-eqz p1, :cond_0

    const v0, 0x3f333333    # 0.7f

    :goto_0
    return v0

    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0
.end method

.method private setIndex(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v0

    .line 74
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 75
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 77
    .local v2, "v":Landroid/widget/ImageView;
    const v3, 0x90202df

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/PageIndicator;->getAlpha(Z)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 72
    .end local v2    # "v":Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method private setPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 63
    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/PageIndicator;->animate(II)V

    .line 69
    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    .line 61
    return-void

    .line 67
    :cond_0
    shr-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/PageIndicator;->setIndex(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v6, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v0

    .line 115
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 119
    iget v3, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotSize:I

    iget v4, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotSpace:I

    add-int/2addr v3, v4

    mul-int v2, v3, v1

    .line 120
    .local v2, "left":I
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotSize:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotSize:I

    invoke-virtual {v3, v2, v6, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v2    # "left":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v0

    .line 97
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 98
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 99
    return-void

    .line 101
    :cond_0
    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotSize:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 103
    .local v4, "widthChildSpec":I
    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotSize:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 105
    .local v1, "heightChildSpec":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 106
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/view/View;->measure(II)V

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_1
    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotSize:I

    iget v6, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotSpace:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v0

    iget v6, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotSpace:I

    sub-int v3, v5, v6

    .line 109
    .local v3, "width":I
    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotSize:I

    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/qs/PageIndicator;->setMeasuredDimension(II)V

    .line 95
    return-void
.end method

.method public setLocation(F)V
    .locals 6
    .param p1, "location"    # F

    .prologue
    .line 48
    float-to-int v1, p1

    .line 49
    .local v1, "position":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 50
    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 49
    const v4, 0x91002e6

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54
    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    .line 55
    .local v0, "lastPosition":I
    if-eq v1, v0, :cond_0

    if-le v0, v1, :cond_1

    int-to-float v2, v1

    sub-float v2, p1, v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 56
    :cond_0
    return-void

    .line 58
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->setPosition(I)V

    .line 47
    return-void
.end method

.method public setNumPages(I)V
    .locals 2
    .param p1, "numPages"    # I

    .prologue
    .line 33
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->setVisibility(I)V

    .line 34
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->removeViewAt(I)V

    goto :goto_1

    .line 33
    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    .line 38
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v1

    if-le p1, v1, :cond_2

    .line 39
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/PageIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, "v":Landroid/widget/ImageView;
    const v1, 0x90202df

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PageIndicator;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 44
    .end local v0    # "v":Landroid/widget/ImageView;
    :cond_2
    iget v1, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    shr-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->setIndex(I)V

    .line 32
    return-void
.end method
