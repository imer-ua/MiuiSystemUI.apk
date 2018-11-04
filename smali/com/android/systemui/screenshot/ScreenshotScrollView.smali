.class public Lcom/android/systemui/screenshot/ScreenshotScrollView;
.super Landroid/view/View;
.source "ScreenshotScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/ScreenshotScrollView$1;,
        Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;
    }
.end annotation


# instance fields
.field private mAnimatableOffsetY:F

.field private mAnimatingCallback:Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;

.field mAnimatingStepRunnable:Ljava/lang/Runnable;

.field private mAnimatorStep:I

.field private mBottomPart:Landroid/graphics/Bitmap;

.field private mFirstClickTime:J

.field private mGotoSingleAnimator:Landroid/animation/ValueAnimator;

.field private mIsAnimatingStoped:Z

.field private mIsBuildingLongScreenshot:Z

.field private mIsManuTaking:Z

.field private mIsTakingLongScreenshot:Z

.field private mLastTouchY:F

.field private mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

.field private mMaxOffsetY:F

.field private mMinOffsetY:F

.field private mMinTotalHeight:I

.field private mOffsetY:F

.field private mScroller:Landroid/widget/Scroller;

.field private mShowBig:F

.field private mShowBigAnimator:Landroid/animation/ValueAnimator;

.field private mShowedPageCount:I

.field private mSingleBitmap:Landroid/graphics/Bitmap;

.field private mTotalHeight:I

.field private mUiState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/screenshot/ScreenshotScrollView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatorStep:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/screenshot/ScreenshotScrollView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsAnimatingStoped:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/screenshot/ScreenshotScrollView;)Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/screenshot/ScreenshotScrollView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mOffsetY:F

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/screenshot/ScreenshotScrollView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBig:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/screenshot/ScreenshotScrollView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatableOffsetY:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/screenshot/ScreenshotScrollView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBig:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/screenshot/ScreenshotScrollView;I)V
    .locals 0
    .param p1, "step"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->doAnimatingStep(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    .line 64
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotScrollView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotScrollView;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatingStepRunnable:Ljava/lang/Runnable;

    .line 99
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mScroller:Landroid/widget/Scroller;

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatorStep:I

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBigAnimator:Landroid/animation/ValueAnimator;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBigAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBigAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotScrollView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView$2;-><init>(Lcom/android/systemui/screenshot/ScreenshotScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 96
    return-void

    .line 101
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private calcScale(Z)F
    .locals 1
    .param p1, "useSingleBitmap"    # Z

    .prologue
    .line 262
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBig:F

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->calcScale(ZF)F

    move-result v0

    return v0
.end method

.method private calcScale(ZF)F
    .locals 8
    .param p1, "useSingleBitmap"    # Z
    .param p2, "showBig"    # F

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 267
    if-eqz p1, :cond_0

    .line 269
    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mSingleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 270
    .local v1, "bitmapWidth":I
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getWidthInner()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v3, v5, v6

    .line 273
    .local v3, "scaleX":F
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getHeightInner()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mSingleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 274
    .local v4, "scaleY":F
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 275
    .local v2, "scale":F
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v0, v5, v6

    .line 276
    .local v0, "bigScale":F
    sub-float v5, v7, p2

    mul-float/2addr v5, v2

    mul-float v6, p2, v0

    add-float v2, v5, v6

    .line 282
    .end local v0    # "bigScale":F
    .end local v3    # "scaleX":F
    .end local v4    # "scaleY":F
    :goto_0
    return v2

    .line 278
    .end local v1    # "bitmapWidth":I
    .end local v2    # "scale":F
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    invoke-virtual {v5}, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 279
    .restart local v1    # "bitmapWidth":I
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getWidthInner()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v2, v5, v6

    .line 280
    .restart local v2    # "scale":F
    sub-float v5, v7, p2

    mul-float/2addr v5, v2

    add-float v2, v5, p2

    goto :goto_0
.end method

.method private doAnimatingStep(I)V
    .locals 7
    .param p1, "step"    # I

    .prologue
    .line 478
    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    .line 479
    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getMaxTotalHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    .line 480
    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    iget v4, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mMinTotalHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    .line 481
    const/4 v2, 0x0

    .line 482
    .local v2, "newShowedPageCount":I
    const/4 v1, 0x0

    .line 483
    .local v1, "bmpsHeight":I
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    invoke-virtual {v3}, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->getBitmaps()[Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 484
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v1, v6

    .line 485
    iget v6, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    if-le v1, v6, :cond_2

    .line 490
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowedPageCount:I

    if-eq v2, v3, :cond_1

    .line 491
    iput v2, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowedPageCount:I

    .line 492
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatingCallback:Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;

    if-eqz v3, :cond_1

    .line 493
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatingCallback:Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;

    iget v4, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowedPageCount:I

    invoke-interface {v3, v4}, Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;->onShowedPageCountChanged(I)V

    .line 496
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->invalidate()V

    .line 477
    return-void

    .line 488
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 483
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private drawLongScreenshot(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 307
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 308
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    invoke-virtual {v0, p1}, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 309
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mBottomPart:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mBottomPart:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mBottomPart:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 306
    :cond_0
    return-void
.end method

.method private drawSingleBitmap(Landroid/graphics/Canvas;F)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scale"    # F

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mSingleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v13, v0, 0x2

    .line 288
    .local v13, "x":I
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f0133

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 289
    .local v7, "bitmapStrokeWidth":I
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f0134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 290
    .local v6, "bitmapMarginTop":I
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 291
    .local v5, "rectPaint":Landroid/graphics/Paint;
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 292
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 293
    int-to-float v0, v7

    div-float v0, v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 294
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90c00aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    move v9, v13

    .line 297
    .local v9, "left":I
    add-int v12, v6, v7

    .line 298
    .local v12, "top":I
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mSingleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int v11, v13, v0

    .line 299
    .local v11, "right":I
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mSingleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int v8, v12, v0

    .line 300
    .local v8, "bottom":I
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v13, v12, v11, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 301
    .local v10, "rect":Landroid/graphics/Rect;
    sub-int v0, v13, v7

    int-to-float v1, v0

    int-to-float v2, v12

    add-int v0, v11, v7

    int-to-float v3, v0

    .line 302
    add-int v0, v8, v7

    int-to-float v4, v0

    move-object v0, p1

    .line 301
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mSingleBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 285
    return-void
.end method

.method private getMaxTotalHeight()I
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    invoke-virtual {v0}, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method private getVelocityY(I)I
    .locals 2
    .param p1, "maxVelocity"    # I

    .prologue
    .line 218
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    float-to-int v0, v1

    .line 219
    .local v0, "velocity":I
    neg-int v1, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 220
    return v0
.end method

.method private onDoubleClick(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 122
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBigAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBigAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getHeightInner()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v0, v4, v1

    .line 124
    .local v0, "clickRatio":F
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 125
    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mMaxOffsetY:F

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mMinOffsetY:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mMinOffsetY:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mOffsetY:F

    .line 126
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBigAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 127
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatingCallback:Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatingCallback:Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;->doubleClickEventReaction(Z)V

    .line 136
    .end local v0    # "clickRatio":F
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "double_click"

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    if-nez v1, :cond_2

    const-string/jumbo v1, "normal"

    :goto_1
    invoke-static {v2, v3, v1}, Lcom/android/systemui/screenshot/StatHelper;->recordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBigAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    .line 132
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatingCallback:Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatingCallback:Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;->doubleClickEventReaction(Z)V

    goto :goto_0

    .line 136
    :cond_2
    const-string/jumbo v1, "longscreenshot"

    goto :goto_1
.end method

.method private resetState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 374
    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->resetToShortMode(Z)V

    .line 375
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsManuTaking:Z

    .line 376
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mMinOffsetY:F

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mOffsetY:F

    .line 377
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatableOffsetY:F

    .line 373
    return-void
.end method

.method private setOffsetY(F)V
    .locals 2
    .param p1, "offsetY"    # F

    .prologue
    .line 212
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mMaxOffsetY:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mMinOffsetY:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 213
    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mOffsetY:F

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatableOffsetY:F

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->invalidate()V

    .line 211
    return-void
.end method


# virtual methods
.method public autoCalcPadding()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 429
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mSingleBitmap:Landroid/graphics/Bitmap;

    .line 431
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x90f0135

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 432
    .local v7, "titleHeight":I
    iget-object v8, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 433
    .local v1, "config":Landroid/content/res/Configuration;
    sget-boolean v8, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v8, :cond_0

    iget v8, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 435
    iget-object v8, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x90f02ad

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 436
    .local v2, "naturalBarHeight":I
    add-int/2addr v7, v2

    .line 438
    .end local v2    # "naturalBarHeight":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x90f0136

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int v6, v7, v8

    .line 439
    .local v6, "paddingTop":I
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x90f0137

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 440
    .local v3, "paddingBottom":I
    iget v8, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 441
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x90f0138

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 442
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x90f0139

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 444
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getHeight()I

    move-result v9

    sub-int/2addr v9, v6

    sub-int/2addr v9, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    mul-int/2addr v9, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    div-int/lit8 v4, v8, 0x2

    .line 445
    .local v4, "paddingLeft":I
    move v5, v4

    .line 446
    .local v5, "paddingRight":I
    invoke-virtual {p0, v4, v6, v4, v3}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setPadding(IIII)V

    .line 448
    iput v11, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mOffsetY:F

    iput v11, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatableOffsetY:F

    .line 449
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mMinOffsetY:F

    .line 450
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    iput v8, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mMaxOffsetY:F

    .line 428
    return-void
.end method

.method public buildLongScreenshot()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 455
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    invoke-virtual {v3}, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->getIntrinsicWidth()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 456
    .local v2, "longScreenshot":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 457
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->drawLongScreenshot(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    return-object v2

    .line 459
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "longScreenshot":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 460
    .local v1, "ex":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 461
    const/4 v3, 0x0

    return-object v3
.end method

.method public getHeightInner()I
    .locals 2

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getIsManuTaking()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsManuTaking:Z

    return v0
.end method

.method public getShowedPageCount()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowedPageCount:I

    return v0
.end method

.method public getWidthInner()I
    .locals 2

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public gotoSingleBitmap()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 355
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p0, v7, v5}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->calcScale(ZF)F

    move-result v0

    .line 356
    .local v0, "bigScale":F
    invoke-direct {p0, v7, v8}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->calcScale(ZF)F

    move-result v2

    .line 357
    .local v2, "minScale":F
    invoke-direct {p0, v9}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->calcScale(Z)F

    move-result v1

    .line 358
    .local v1, "currScale":F
    mul-float v3, v0, v1

    .line 360
    .local v3, "needScale":F
    sub-float v5, v3, v2

    sub-float v6, v0, v2

    div-float v4, v5, v6

    .line 361
    .local v4, "needShowBig":F
    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v4, v5, v9

    aput v8, v5, v7

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mGotoSingleAnimator:Landroid/animation/ValueAnimator;

    .line 362
    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mGotoSingleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 363
    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mGotoSingleAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/systemui/screenshot/ScreenshotScrollView$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView$3;-><init>(Lcom/android/systemui/screenshot/ScreenshotScrollView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 370
    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mGotoSingleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 354
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 226
    iget v7, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 227
    iget-object v7, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 228
    iget-boolean v7, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsTakingLongScreenshot:Z

    if-eqz v7, :cond_2

    .line 229
    iget-object v7, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    iget v8, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    sub-int/2addr v7, v8

    invoke-direct {p0, v7}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->doAnimatingStep(I)V

    .line 238
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mSingleBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    invoke-virtual {v7}, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->getBitmaps()[Landroid/graphics/Bitmap;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_4

    .line 239
    .local v3, "useSingleBitmap":Z
    :cond_1
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->calcScale(Z)F

    move-result v1

    .line 240
    .local v1, "scale":F
    if-eqz v3, :cond_6

    .line 241
    iget v6, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatableOffsetY:F

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBig:F

    sub-float v8, v9, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 242
    .local v5, "y":I
    int-to-float v6, v5

    invoke-virtual {p1, v10, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {p1, v1, v1, v6, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 244
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->drawSingleBitmap(Landroid/graphics/Canvas;F)V

    .line 224
    .end local v5    # "y":I
    :goto_2
    return-void

    .line 230
    .end local v1    # "scale":F
    .end local v3    # "useSingleBitmap":Z
    :cond_2
    iget v7, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBig:F

    cmpl-float v7, v7, v9

    if-nez v7, :cond_0

    .line 231
    iget-object v7, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {p0, v7}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setOffsetY(F)V

    goto :goto_0

    .line 234
    :cond_3
    iput v6, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    goto :goto_0

    .line 238
    :cond_4
    iget v7, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBig:F

    cmpg-float v7, v7, v9

    if-ltz v7, :cond_1

    :cond_5
    move v3, v6

    goto :goto_1

    .line 246
    .restart local v1    # "scale":F
    .restart local v3    # "useSingleBitmap":Z
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    invoke-virtual {v6}, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v0, v6

    .line 247
    .local v0, "bitmapShowWidth":I
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getWidthInner()I

    move-result v7

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 249
    .local v4, "x":I
    iget-boolean v6, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsTakingLongScreenshot:Z

    if-eqz v6, :cond_7

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-int v7, v7

    sub-int v2, v6, v7

    .line 251
    .local v2, "topY":I
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingTop()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 255
    :goto_3
    int-to-float v6, v4

    int-to-float v7, v2

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 256
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 257
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->drawLongScreenshot(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 253
    .end local v2    # "topY":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBig:F

    sub-float v7, v9, v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatableOffsetY:F

    float-to-int v7, v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v2, v6

    .restart local v2    # "topY":I
    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v7, -0x80000000

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsBuildingLongScreenshot:Z

    if-eqz v0, :cond_0

    return v10

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 208
    :cond_1
    :goto_0
    return v10

    .line 146
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLastTouchY:F

    .line 147
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    if-ne v0, v3, :cond_2

    .line 148
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v10}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 151
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsTakingLongScreenshot:Z

    if-eqz v0, :cond_4

    .line 152
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsManuTaking:Z

    if-nez v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "longscreenshot_manual"

    invoke-static {v0, v2}, Lcom/android/systemui/screenshot/StatHelper;->recordCountEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->stopAnimating(Z)V

    .line 156
    iput-boolean v10, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsManuTaking:Z

    .line 157
    iput v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    goto :goto_0

    .line 159
    :cond_4
    iput v10, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    goto :goto_0

    .line 164
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLastTouchY:F

    sub-float v9, v0, v1

    .line 165
    .local v9, "thisOffsetY":F
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsTakingLongScreenshot:Z

    if-eqz v0, :cond_5

    .line 166
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, v9

    float-to-int v0, v0

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->doAnimatingStep(I)V

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLastTouchY:F

    goto :goto_0

    .line 169
    :cond_5
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBig:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    .line 170
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    if-eq v0, v3, :cond_6

    .line 171
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    .line 172
    iput v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    .line 174
    :cond_6
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    if-ne v0, v3, :cond_1

    .line 175
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mOffsetY:F

    add-float/2addr v0, v9

    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setOffsetY(F)V

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLastTouchY:F

    goto :goto_0

    .line 184
    .end local v9    # "thisOffsetY":F
    :pswitch_2
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    if-ne v0, v3, :cond_9

    .line 185
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 186
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsTakingLongScreenshot:Z

    if-eqz v0, :cond_8

    .line 187
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->setFriction(F)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    const/16 v3, 0x1b58

    invoke-direct {p0, v3}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getVelocityY(I)I

    move-result v3

    neg-int v4, v3

    .line 189
    const v8, 0x7fffffff

    move v3, v1

    move v5, v1

    move v6, v1

    .line 188
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 190
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    .line 191
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->invalidate()V

    .line 205
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 193
    :cond_8
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBig:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_7

    .line 194
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->setFriction(F)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mOffsetY:F

    float-to-int v2, v2

    const/16 v3, 0x2710

    invoke-direct {p0, v3}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getVelocityY(I)I

    move-result v4

    .line 196
    const v8, 0x7fffffff

    move v3, v1

    move v5, v1

    move v6, v1

    .line 195
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 197
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->invalidate()V

    goto :goto_1

    .line 202
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->performClick(Landroid/view/MotionEvent;)Z

    .line 203
    iput v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    goto :goto_1

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public performClick(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mFirstClickTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 114
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->onDoubleClick(Landroid/view/MotionEvent;)V

    .line 118
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 116
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mFirstClickTime:J

    goto :goto_0
.end method

.method public resetToShortMode(Z)V
    .locals 2
    .param p1, "isAnimator"    # Z

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBigAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBigAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 323
    :cond_0
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBig:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBigAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 325
    if-nez p1, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBigAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 319
    :cond_1
    return-void
.end method

.method public setAnimatingCallback(Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatingCallback:Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;

    .line 393
    return-void
.end method

.method public setBitmaps(Ljava/util/List;Z)V
    .locals 2
    .param p2, "resetState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    .line 343
    if-nez p1, :cond_1

    .line 344
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    .line 348
    :goto_0
    if-eqz p2, :cond_0

    .line 349
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->resetState()V

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->invalidate()V

    .line 342
    return-void

    .line 346
    :cond_1
    new-instance v1, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;-><init>([Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    goto :goto_0
.end method

.method public setBottomPart(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bottomBmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mBottomPart:Landroid/graphics/Bitmap;

    .line 382
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->postInvalidate()V

    .line 380
    return-void
.end method

.method public setIsTakingLongScreenshot(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsTakingLongScreenshot:Z

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsBuildingLongScreenshot:Z

    .line 331
    return-void
.end method

.method public setSingleBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mSingleBitmap:Landroid/graphics/Bitmap;

    .line 338
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->resetState()V

    .line 339
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->invalidate()V

    .line 336
    return-void
.end method

.method public startAnimating()V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->startAnimating(Z)V

    .line 401
    return-void
.end method

.method public startAnimating(Z)V
    .locals 1
    .param p1, "reset"    # Z

    .prologue
    const/4 v0, 0x0

    .line 406
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsAnimatingStoped:Z

    .line 407
    if-eqz p1, :cond_0

    .line 408
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsManuTaking:Z

    .line 409
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mMinTotalHeight:I

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatingStepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->post(Ljava/lang/Runnable;)Z

    .line 405
    return-void
.end method

.method public stopAnimating()V
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->stopAnimating(Z)V

    .line 414
    return-void
.end method

.method public stopAnimating(Z)V
    .locals 2
    .param p1, "isFinal"    # Z

    .prologue
    const/4 v1, 0x1

    .line 419
    iput-boolean v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsAnimatingStoped:Z

    .line 420
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatingStepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 421
    if-eqz p1, :cond_0

    .line 422
    iput-boolean v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsBuildingLongScreenshot:Z

    .line 423
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mMinOffsetY:F

    .line 424
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mMinOffsetY:F

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mOffsetY:F

    .line 418
    :cond_0
    return-void
.end method
