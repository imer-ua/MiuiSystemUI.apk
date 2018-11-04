.class public Lcom/android/systemui/qs/TileLayout;
.super Landroid/view/ViewGroup;
.source "TileLayout.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# instance fields
.field protected mCellHeight:I

.field protected mCellWidth:I

.field protected mColumns:I

.field protected mContentHeight:I

.field protected mContentMarginBottom:I

.field protected mContentMarginHorizontal:I

.field protected mContentMarginTop:I

.field private mListening:Z

.field protected final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected mRows:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/TileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TileLayout;->setFocusableInTouchMode(Z)V

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    .line 35
    return-void
.end method

.method private static exactly(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 109
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private getColumnStart(I)I
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 142
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mContentMarginHorizontal:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getRowTop(I)I
    .locals 2
    .param p1, "row"    # I

    .prologue
    .line 138
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mContentMarginTop:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 2
    .param p1, "tile"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v1, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 58
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TileLayout;->addView(Landroid/view/View;)V

    .line 55
    return-void
.end method

.method public getNewDimensionPixelSize()I
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mContext:Landroid/content/Context;

    const-string v1, "set_toggles_columns_row"

    invoke-static {v1, v0}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    const v2, 0x2

    if-eq v1, v2, :cond_0

    const v2, 0x4

    if-eq v1, v2, :cond_1

    const-string v1, "qs_tile_content_height"

    goto :goto_0

    :cond_0
    const-string v1, "qs_tile_content_height_small"

    goto :goto_0

    :cond_1
    const-string v1, "qs_tile_content_height_big"

    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getOffsetTop(Lcom/android/systemui/qs/QSPanel$TileRecord;)I
    .locals 1
    .param p1, "tile"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getTop()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getWidth()I

    move-result v8

    .line 115
    .local v8, "w":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getLayoutDirection()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    const/4 v2, 0x1

    .line 116
    .local v2, "isRtl":Z
    :goto_0
    const/4 v6, 0x0

    .line 117
    .local v6, "row":I
    const/4 v0, 0x0

    .line 118
    .local v0, "column":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_3

    .line 119
    iget v9, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-ne v0, v9, :cond_0

    .line 120
    add-int/lit8 v6, v6, 0x1

    .line 121
    iget v9, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    sub-int/2addr v0, v9

    .line 123
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 124
    .local v4, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/TileLayout;->getColumnStart(I)I

    move-result v3

    .line 125
    .local v3, "left":I
    invoke-direct {p0, v6}, Lcom/android/systemui/qs/TileLayout;->getRowTop(I)I

    move-result v7

    .line 127
    .local v7, "top":I
    if-eqz v2, :cond_2

    .line 128
    sub-int v5, v8, v3

    .line 129
    .local v5, "right":I
    iget v9, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    sub-int v3, v5, v9

    .line 133
    :goto_2
    iget-object v9, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget-object v10, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v10}, Lcom/android/systemui/plugins/qs/QSTileView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v9, v3, v7, v5, v10}, Lcom/android/systemui/plugins/qs/QSTileView;->layout(IIII)V

    .line 118
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    .end local v0    # "column":I
    .end local v1    # "i":I
    .end local v2    # "isRtl":Z
    .end local v3    # "left":I
    .end local v4    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    .end local v5    # "right":I
    .end local v6    # "row":I
    .end local v7    # "top":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isRtl":Z
    goto :goto_0

    .line 131
    .restart local v0    # "column":I
    .restart local v1    # "i":I
    .restart local v3    # "left":I
    .restart local v4    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    .restart local v6    # "row":I
    .restart local v7    # "top":I
    :cond_2
    iget v9, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    add-int v5, v3, v9

    .restart local v5    # "right":I
    goto :goto_2

    .line 113
    .end local v3    # "left":I
    .end local v4    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    .end local v5    # "right":I
    .end local v7    # "top":I
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 96
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 97
    .local v3, "width":I
    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mContentMarginHorizontal:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iget v5, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    .line 98
    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mContentHeight:I

    iget v5, p0, Lcom/android/systemui/qs/TileLayout;->mContentMarginBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/qs/TileLayout;->mContentMarginTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    .line 99
    move-object v0, p0

    .line 100
    .local v0, "previousView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "record$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 101
    .local v1, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v4, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v4}, Lcom/android/systemui/plugins/qs/QSTileView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 102
    iget-object v4, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget v5, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    invoke-static {v5}, Lcom/android/systemui/qs/TileLayout;->exactly(I)I

    move-result v5

    iget v6, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    invoke-static {v6}, Lcom/android/systemui/qs/TileLayout;->exactly(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/plugins/qs/QSTileView;->measure(II)V

    .line 103
    iget-object v4, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/plugins/qs/QSTileView;->updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 105
    .end local v1    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_1
    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mContentHeight:I

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/TileLayout;->setMeasuredDimension(II)V

    .line 95
    return-void
.end method

.method public removeAllViews()V
    .locals 4

    .prologue
    .line 69
    iget-object v2, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 70
    .local v0, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 72
    .end local v0    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 73
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 68
    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 2
    .param p1, "tile"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 65
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TileLayout;->removeView(Landroid/view/View;)V

    .line 62
    return-void
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    .line 48
    iget-boolean v2, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    if-ne v2, p1, :cond_0

    return-void

    .line 49
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    .line 50
    iget-object v2, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 51
    .local v0, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v3, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    invoke-interface {v2, p0, v3}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 47
    .end local v0    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_1
    return-void
.end method

.method public updateResources()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 77
    iget-object v4, p0, Lcom/android/systemui/qs/TileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 78
    .local v2, "res":Landroid/content/res/Resources;
    const v4, 0x90e0013

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v4, "set_toggles_columns_full"

    invoke-static {v4, v1}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x4

    :cond_0
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 79
    .local v0, "columns":I
    const v4, 0x90e0016

    const-string v4, "set_toggles_columns_row"

    invoke-static {v4, v1}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x3

    :cond_1
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 80
    .local v3, "rows":I
    const v4, 0x90f010c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getNewDimensionPixelSize()I

    move-result v1

    .local v1, "height":I
    const v4, 0x90f010e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/TileLayout;->mContentMarginTop:I

    .line 82
    const v4, 0x90f010d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/TileLayout;->mContentMarginHorizontal:I

    .line 83
    const v4, 0x90f010f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/TileLayout;->mContentMarginBottom:I

    .line 84
    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-ne v4, v0, :cond_2

    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    if-eq v4, v3, :cond_3

    .line 85
    :cond_2
    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 86
    iput v3, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 87
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mContentHeight:I

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->requestLayout()V

    .line 89
    return v5

    .line 84
    :cond_3
    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mContentHeight:I

    if-ne v4, v1, :cond_2

    .line 91
    const/4 v4, 0x0

    return v4
.end method
