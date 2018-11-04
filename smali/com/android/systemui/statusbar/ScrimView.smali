.class public Lcom/android/systemui/statusbar/ScrimView;
.super Landroid/view/View;
.source "ScrimView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ScrimView$1;,
        Lcom/android/systemui/statusbar/ScrimView$2;
    }
.end annotation


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mChangeRunnable:Ljava/lang/Runnable;

.field private mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mDrawAsSrc:Z

.field private mExcludedRect:Landroid/graphics/Rect;

.field private mHasExcludedArea:Z

.field private mIsEmpty:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mScrimColor:I

.field private mViewAlpha:F


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/ScrimView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/ScrimView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mPaint:Landroid/graphics/Paint;

    .line 42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mIsEmpty:Z

    .line 44
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    .line 46
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    .line 49
    new-instance v1, Lcom/android/systemui/statusbar/ScrimView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/ScrimView$1;-><init>(Lcom/android/systemui/statusbar/ScrimView;)V

    .line 48
    iput-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 56
    new-instance v1, Lcom/android/systemui/statusbar/ScrimView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/ScrimView$2;-><init>(Lcom/android/systemui/statusbar/ScrimView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 79
    sget-object v1, Lcom/android/systemui/R$styleable;->ScrimView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mScrimColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void

    .line 83
    :catchall_0
    move-exception v1

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    throw v1
.end method


# virtual methods
.method public animateViewAlpha(FJLandroid/view/animation/Interpolator;)V
    .locals 4
    .param p1, "alpha"    # F
    .param p2, "durationOut"    # J
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 174
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 170
    return-void
.end method

.method public getScrimColor()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mScrimColor:I

    return v0
.end method

.method public getScrimColorWithAlpha()I
    .locals 5

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getId()I

    move-result v1

    const v2, 0x91202f5

    if-ne v1, v2, :cond_0

    .line 120
    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mScrimColor:I

    .line 121
    .local v0, "color":I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 122
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 121
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 123
    return v0

    .line 125
    .end local v0    # "color":I
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawAsSrc:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mIsEmpty:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 91
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawAsSrc:Z

    if-eqz v0, :cond_2

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 92
    .local v9, "mode":Landroid/graphics/PorterDuff$Mode;
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getScrimColorWithAlpha()I

    move-result v8

    .line 93
    .local v8, "color":I
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mHasExcludedArea:Z

    if-nez v0, :cond_3

    .line 94
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 89
    .end local v8    # "color":I
    .end local v9    # "mode":Landroid/graphics/PorterDuff$Mode;
    :cond_1
    :goto_1
    return-void

    .line 91
    :cond_2
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .restart local v9    # "mode":Landroid/graphics/PorterDuff$Mode;
    goto :goto_0

    .line 96
    .restart local v8    # "color":I
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_4

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/ScrimView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_5

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    .line 102
    iget-object v5, p0, Lcom/android/systemui/statusbar/ScrimView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 101
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    .line 109
    iget-object v7, p0, Lcom/android/systemui/statusbar/ScrimView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    .line 105
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 111
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/ScrimView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public setChangeRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "changeRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    .line 199
    return-void
.end method

.method public setDrawAsSrc(Z)V
    .locals 3
    .param p1, "asSrc"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawAsSrc:Z

    .line 130
    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawAsSrc:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    invoke-direct {v2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 128
    return-void

    .line 131
    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0
.end method

.method public setExcludedArea(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "area"    # Landroid/graphics/Rect;

    .prologue
    .line 182
    return-void
.end method

.method public setScrimColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getId()I

    move-result v1

    const v2, 0x91202f5

    if-ne v1, v2, :cond_1

    .line 137
    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mScrimColor:I

    if-eq p1, v1, :cond_1

    .line 138
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mIsEmpty:Z

    .line 139
    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mScrimColor:I

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 135
    :cond_1
    return-void
.end method
