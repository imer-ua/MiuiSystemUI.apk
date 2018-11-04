.class public Lcom/android/settingslib/graph/UsageGraph;
.super Landroid/view/View;
.source "UsageGraph.java"


# instance fields
.field private mAccentColor:I

.field private final mCornerRadius:I

.field private final mDividerSize:I

.field private final mDottedPaint:Landroid/graphics/Paint;

.field private final mFillPaint:Landroid/graphics/Paint;

.field private final mLinePaint:Landroid/graphics/Paint;

.field private final mLocalPaths:Landroid/util/SparseIntArray;

.field private mMaxX:F

.field private mMaxY:F

.field private mMiddleDividerLoc:F

.field private mMiddleDividerTint:I

.field private final mPath:Landroid/graphics/Path;

.field private final mPaths:Landroid/util/SparseIntArray;

.field private mProjectUp:Z

.field private mShowProjection:Z

.field private mTopDividerTint:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x1

    const/4 v5, -0x1

    const/high16 v4, 0x42c80000    # 100.0f

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    .line 54
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    .line 56
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    .line 63
    iput v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mMaxX:F

    .line 64
    iput v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mMaxY:F

    .line 66
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mMiddleDividerLoc:F

    .line 67
    iput v5, p0, Lcom/android/settingslib/graph/UsageGraph;->mMiddleDividerTint:I

    .line 68
    iput v5, p0, Lcom/android/settingslib/graph/UsageGraph;->mTopDividerTint:I

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 74
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    .line 75
    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 77
    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 78
    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    sget v3, Lcom/android/settingslib/R$dimen;->usage_graph_line_corner_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mCornerRadius:I

    .line 80
    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/CornerPathEffect;

    iget v5, p0, Lcom/android/settingslib/graph/UsageGraph;->mCornerRadius:I

    int-to-float v5, v5

    invoke-direct {v4, v5}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 81
    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    sget v4, Lcom/android/settingslib/R$dimen;->usage_graph_line_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    new-instance v3, Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    .line 84
    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    new-instance v3, Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    .line 87
    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    sget v3, Lcom/android/settingslib/R$dimen;->usage_graph_dot_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v0, v3

    .line 89
    .local v0, "dots":F
    sget v3, Lcom/android/settingslib/R$dimen;->usage_graph_dot_interval:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v1, v3

    .line 90
    .local v1, "interval":F
    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/DashPathEffect;

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    aput v1, v5, v7

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 92
    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    sget v4, Lcom/android/settingslib/R$color;->usage_graph_dots:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    sget v3, Lcom/android/settingslib/R$dimen;->usage_graph_divider_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mDividerSize:I

    .line 70
    return-void
.end method

.method private calculateLocalPaths()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    .line 151
    invoke-virtual {p0}, Lcom/android/settingslib/graph/UsageGraph;->getWidth()I

    move-result v9

    if-nez v9, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v9, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->clear()V

    .line 153
    const/4 v5, 0x0

    .line 154
    .local v5, "pendingXLoc":I
    const/4 v6, -0x1

    .line 155
    .local v6, "pendingYLoc":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/settingslib/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v0, v9, :cond_5

    .line 156
    iget-object v9, p0, Lcom/android/settingslib/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 157
    .local v7, "x":I
    iget-object v9, p0, Lcom/android/settingslib/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 158
    .local v8, "y":I
    if-ne v8, v11, :cond_2

    .line 159
    iget-object v9, p0, Lcom/android/settingslib/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v0, v9, :cond_1

    if-eq v6, v11, :cond_1

    .line 161
    iget-object v9, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 164
    :cond_1
    const/4 v6, -0x1

    .line 165
    iget-object v9, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 155
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_2
    int-to-float v9, v7

    invoke-direct {p0, v9}, Lcom/android/settingslib/graph/UsageGraph;->getX(F)I

    move-result v3

    .line 168
    .local v3, "lx":I
    int-to-float v9, v8

    invoke-direct {p0, v9}, Lcom/android/settingslib/graph/UsageGraph;->getY(F)I

    move-result v4

    .line 169
    .local v4, "ly":I
    move v5, v3

    .line 170
    iget-object v9, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 171
    iget-object v9, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    iget-object v10, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 172
    .local v1, "lastX":I
    iget-object v9, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    iget-object v10, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 173
    .local v2, "lastY":I
    if-eq v2, v11, :cond_3

    invoke-direct {p0, v1, v3}, Lcom/android/settingslib/graph/UsageGraph;->hasDiff(II)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 178
    .end local v1    # "lastX":I
    .end local v2    # "lastY":I
    :cond_3
    iget-object v9, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 173
    .restart local v1    # "lastX":I
    .restart local v2    # "lastY":I
    :cond_4
    invoke-direct {p0, v2, v4}, Lcom/android/settingslib/graph/UsageGraph;->hasDiff(II)Z

    move-result v9

    if-nez v9, :cond_3

    .line 174
    move v6, v4

    .line 175
    goto :goto_1

    .line 150
    .end local v1    # "lastX":I
    .end local v2    # "lastY":I
    .end local v3    # "lx":I
    .end local v4    # "ly":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_5
    return-void
.end method

.method private drawDivider(ILandroid/graphics/Canvas;I)V
    .locals 0
    .param p1, "y"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "tintColor"    # I

    .prologue
    .line 272
    return-void
.end method

.method private drawFilledPath(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 251
    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 252
    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    int-to-float v1, v4

    .line 253
    .local v1, "lastStartX":F
    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 254
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 255
    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 256
    .local v2, "x":I
    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 257
    .local v3, "y":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 258
    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/settingslib/graph/UsageGraph;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 259
    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/settingslib/graph/UsageGraph;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 260
    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 261
    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 262
    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    int-to-float v1, v4

    .line 263
    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 254
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_1
    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 269
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/settingslib/graph/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 250
    return-void
.end method

.method private drawLinePath(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 234
    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 235
    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 236
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 237
    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 238
    .local v1, "x":I
    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 239
    .local v2, "y":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 240
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 236
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_1
    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 247
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_2
    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settingslib/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 233
    return-void
.end method

.method private drawProjection(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 225
    iget-object v2, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 226
    iget-object v2, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 227
    .local v0, "x":I
    iget-object v2, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 228
    .local v1, "y":I
    iget-object v2, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 229
    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v4, v2

    iget-boolean v2, p0, Lcom/android/settingslib/graph/UsageGraph;->mProjectUp:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    int-to-float v2, v2

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 230
    iget-object v2, p0, Lcom/android/settingslib/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settingslib/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 224
    return-void

    .line 229
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    goto :goto_0
.end method

.method private getColor(IF)I
    .locals 2
    .param p1, "color"    # I
    .param p2, "alphaScale"    # F

    .prologue
    .line 201
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xffffff

    or-int/2addr v0, v1

    and-int/2addr v0, p1

    return v0
.end method

.method private getX(F)I
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 188
    iget v0, p0, Lcom/android/settingslib/graph/UsageGraph;->mMaxX:F

    div-float v0, p1, v0

    invoke-virtual {p0}, Lcom/android/settingslib/graph/UsageGraph;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getY(F)I
    .locals 3
    .param p1, "y"    # F

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/settingslib/graph/UsageGraph;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settingslib/graph/UsageGraph;->mMaxY:F

    div-float v1, p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private hasDiff(II)Z
    .locals 2
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 184
    sub-int v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/settingslib/graph/UsageGraph;->mCornerRadius:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateGradient()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 196
    iget-object v8, p0, Lcom/android/settingslib/graph/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/android/settingslib/graph/UsageGraph;->getHeight()I

    move-result v2

    int-to-float v4, v2

    .line 197
    iget v2, p0, Lcom/android/settingslib/graph/UsageGraph;->mAccentColor:I

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {p0, v2, v3}, Lcom/android/settingslib/graph/UsageGraph;->getColor(IF)I

    move-result v5

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    .line 196
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 195
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 207
    iget v0, p0, Lcom/android/settingslib/graph/UsageGraph;->mMiddleDividerLoc:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 208
    iget v0, p0, Lcom/android/settingslib/graph/UsageGraph;->mTopDividerTint:I

    invoke-direct {p0, v2, p1, v0}, Lcom/android/settingslib/graph/UsageGraph;->drawDivider(ILandroid/graphics/Canvas;I)V

    .line 210
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/settingslib/graph/UsageGraph;->mDividerSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settingslib/graph/UsageGraph;->mMiddleDividerLoc:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 211
    iget v1, p0, Lcom/android/settingslib/graph/UsageGraph;->mMiddleDividerTint:I

    .line 210
    invoke-direct {p0, v0, p1, v1}, Lcom/android/settingslib/graph/UsageGraph;->drawDivider(ILandroid/graphics/Canvas;I)V

    .line 212
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/settingslib/graph/UsageGraph;->mDividerSize:I

    sub-int/2addr v0, v1

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settingslib/graph/UsageGraph;->drawDivider(ILandroid/graphics/Canvas;I)V

    .line 214
    iget-object v0, p0, Lcom/android/settingslib/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 215
    return-void

    .line 217
    :cond_1
    iget-boolean v0, p0, Lcom/android/settingslib/graph/UsageGraph;->mShowProjection:Z

    if-eqz v0, :cond_2

    .line 218
    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/UsageGraph;->drawProjection(Landroid/graphics/Canvas;)V

    .line 220
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/UsageGraph;->drawFilledPath(Landroid/graphics/Canvas;)V

    .line 221
    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/UsageGraph;->drawLinePath(Landroid/graphics/Canvas;)V

    .line 205
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 146
    invoke-direct {p0}, Lcom/android/settingslib/graph/UsageGraph;->updateGradient()V

    .line 147
    invoke-direct {p0}, Lcom/android/settingslib/graph/UsageGraph;->calculateLocalPaths()V

    .line 144
    return-void
.end method

.method setAccentColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/android/settingslib/graph/UsageGraph;->mAccentColor:I

    .line 132
    iget-object v0, p0, Lcom/android/settingslib/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settingslib/graph/UsageGraph;->mAccentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    invoke-direct {p0}, Lcom/android/settingslib/graph/UsageGraph;->updateGradient()V

    .line 134
    invoke-virtual {p0}, Lcom/android/settingslib/graph/UsageGraph;->postInvalidate()V

    .line 130
    return-void
.end method