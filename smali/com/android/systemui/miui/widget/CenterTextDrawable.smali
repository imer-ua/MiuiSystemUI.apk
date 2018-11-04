.class public Lcom/android/systemui/miui/widget/CenterTextDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CenterTextDrawable.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/miui/widget/CenterTextDrawable;->mPaint:Landroid/graphics/Paint;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/miui/widget/CenterTextDrawable;->mText:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/android/systemui/miui/widget/CenterTextDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 20
    iget-object v0, p0, Lcom/android/systemui/miui/widget/CenterTextDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 18
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 30
    iget-object v2, p0, Lcom/android/systemui/miui/widget/CenterTextDrawable;->mText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/miui/widget/CenterTextDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 32
    .local v0, "x":I
    invoke-virtual {p0}, Lcom/android/systemui/miui/widget/CenterTextDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/miui/widget/CenterTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/miui/widget/CenterTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 33
    .local v1, "y":I
    iget-object v2, p0, Lcom/android/systemui/miui/widget/CenterTextDrawable;->mText:Ljava/lang/String;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/android/systemui/miui/widget/CenterTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 29
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/miui/widget/CenterTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/miui/widget/CenterTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 38
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/miui/widget/CenterTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 56
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/systemui/miui/widget/CenterTextDrawable;->mText:Ljava/lang/String;

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/miui/widget/CenterTextDrawable;->invalidateSelf()V

    .line 23
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/miui/widget/CenterTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "textSize"    # F

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/miui/widget/CenterTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 51
    return-void
.end method
