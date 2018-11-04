.class public Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;
.super Lcom/android/systemui/plugins/qs/QSIconView;
.source "QSIconViewImpl.java"


# instance fields
.field private mAnimationEnabled:Z

.field private mAnimator:Landroid/animation/ValueAnimator;

.field protected final mIcon:Landroid/view/View;

.field protected final mIconBgSizePx:I

.field protected mIconColorDisabled:I

.field protected mIconColorEnabled:I

.field protected final mIconSizePx:I

.field protected final mTilePaddingBelowIconPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSIconView;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x90f0116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    .line 57
    const v1, 0x90f0117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconBgSizePx:I

    .line 58
    const v1, 0x90f012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTilePaddingBelowIconPx:I

    .line 59
    const v1, 0x90c0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconColorEnabled:I

    .line 60
    const v1, 0x90c005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconColorDisabled:I

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->createIcon()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    .line 62
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->addView(Landroid/view/View;)V

    .line 52
    return-void
.end method

.method private startAnimatorIfNeed(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 166
    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimator:Landroid/animation/ValueAnimator;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 169
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimator:Landroid/animation/ValueAnimator;

    .line 170
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 163
    return-void

    .line 169
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected createIcon()Landroid/view/View;
    .locals 2

    .prologue
    .line 210
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 211
    .local v0, "icon":Landroid/widget/ImageView;
    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 212
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 213
    return-object v0
.end method

.method protected final exactly(I)I
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 217
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method protected getIconMeasureMode()I
    .locals 1

    .prologue
    .line 206
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    return-object v0
.end method

.method protected final layout(Landroid/view/View;II)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 220
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getMeasuredWidth()I

    move-result v2

    .line 84
    .local v2, "w":I
    const/4 v1, 0x0

    .line 85
    .local v1, "top":I
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    div-int/lit8 v0, v3, 0x2

    .line 86
    .local v0, "iconLeft":I
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->layout(Landroid/view/View;II)V

    .line 82
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 75
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 76
    .local v1, "w":I
    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconBgSizePx:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->exactly(I)I

    move-result v0

    .line 77
    .local v0, "iconSpec":I
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getIconMeasureMode()I

    move-result v3

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->measure(II)V

    .line 78
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setMeasuredDimension(II)V

    .line 74
    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    .line 65
    return-void
.end method

.method protected setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .prologue
    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 99
    return-void
.end method

.method public setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 95
    return-void
.end method

.method protected updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 13
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .prologue
    .line 104
    iget-object v8, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const v9, 0x9120030

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 105
    iget-object v8, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const v9, 0x9120030

    invoke-virtual {p1, v9, v8}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 106
    iget v8, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 107
    const v1, 0x9020141

    .line 109
    .local v1, "bgResId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 110
    .local v0, "bgDrawable":Landroid/graphics/drawable/Drawable;
    iget v8, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconBgSizePx:I

    .line 111
    iget v9, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconBgSizePx:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 110
    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 112
    .local v3, "combined":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 116
    .local v2, "canvas":Landroid/graphics/Canvas;
    iget v8, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconBgSizePx:I

    .line 117
    iget v9, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconBgSizePx:I

    .line 114
    const/4 v10, 0x0

    .line 115
    const/4 v11, 0x0

    .line 113
    invoke-virtual {v0, v10, v11, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 119
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    iget-object v8, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-eqz v8, :cond_1

    .line 122
    iget-object v8, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v9, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 123
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    if-nez v4, :cond_2

    .line 124
    return-void

    .line 108
    .end local v0    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "bgResId":I
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "combined":Landroid/graphics/Bitmap;
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const v1, 0x9020140

    .restart local v1    # "bgResId":I
    goto :goto_0

    .line 122
    .restart local v0    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v3    # "combined":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 127
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    if-eqz v4, :cond_3

    .line 128
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 131
    :cond_3
    iget v8, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 132
    iget v8, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconColorEnabled:I

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 137
    :goto_2
    iget v8, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconBgSizePx:I

    iget v9, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    .line 138
    iget v9, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconBgSizePx:I

    iget v10, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    .line 139
    iget v10, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconBgSizePx:I

    iget v11, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    .line 140
    iget v11, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconBgSizePx:I

    iget v12, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    add-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    .line 136
    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 143
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v4, v8, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 145
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    iget v8, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    const/4 v5, 0x1

    .line 146
    .local v5, "newIsActive":Z
    :goto_3
    move v6, v5

    .line 147
    .local v6, "oldIsActive":Z
    const v8, 0x9120031

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 148
    const v8, 0x9120031

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8

    const/4 v6, 0x1

    .line 150
    .end local v6    # "oldIsActive":Z
    :cond_4
    :goto_4
    iget v8, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x9120031

    invoke-virtual {p1, v9, v8}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 151
    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-boolean v8, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    if-eqz v8, :cond_a

    .line 152
    const v8, 0x9120030

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 153
    if-eq v6, v5, :cond_9

    const/4 v8, 0x1

    :goto_5
    move v7, v8

    .line 155
    .local v7, "shouldAnimate":Z
    :goto_6
    if-eqz v7, :cond_b

    .line 156
    invoke-direct {p0, p1, v4}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->startAnimatorIfNeed(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 103
    .end local v0    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "bgResId":I
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "combined":Landroid/graphics/Bitmap;
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "newIsActive":Z
    .end local v7    # "shouldAnimate":Z
    :cond_5
    :goto_7
    return-void

    .line 134
    .restart local v0    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "bgResId":I
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v3    # "combined":Landroid/graphics/Bitmap;
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    iget v8, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconColorDisabled:I

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    .line 145
    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    .line 148
    .restart local v5    # "newIsActive":Z
    .restart local v6    # "oldIsActive":Z
    :cond_8
    const/4 v6, 0x0

    .local v6, "oldIsActive":Z
    goto :goto_4

    .line 153
    .end local v6    # "oldIsActive":Z
    :cond_9
    const/4 v8, 0x0

    goto :goto_5

    .line 151
    :cond_a
    const/4 v7, 0x0

    goto :goto_6

    .line 158
    .restart local v7    # "shouldAnimate":Z
    :cond_b
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x90c0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconColorEnabled:I

    .line 92
    const v1, 0x90c005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconColorDisabled:I

    .line 89
    return-void
.end method
