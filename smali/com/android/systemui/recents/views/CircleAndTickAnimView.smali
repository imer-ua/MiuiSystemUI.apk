.class public Lcom/android/systemui/recents/views/CircleAndTickAnimView;
.super Landroid/view/View;
.source "CircleAndTickAnimView.java"


# instance fields
.field private isNormalDrawableShow:Z

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBackDrawable:Landroid/graphics/drawable/Drawable;

.field private mCircleAnimator:Landroid/animation/ValueAnimator;

.field private mCircleRotateDegrees:F

.field private mDiameter:I

.field private mNormalDrawable:Landroid/graphics/drawable/Drawable;

.field private mTickDstPath:Landroid/graphics/Path;

.field private mTickEndPoint:F

.field private mTickEndPointAnimator:Landroid/animation/ValueAnimator;

.field private mTickPaint:Landroid/graphics/Paint;

.field private mTickPathLength:F

.field private mTickPathMeasure:Landroid/graphics/PathMeasure;

.field private mTickStartPoint:F

.field private mTickStartPointAnimator:Landroid/animation/ValueAnimator;

.field private mViewRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/recents/views/CircleAndTickAnimView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mCircleRotateDegrees:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/recents/views/CircleAndTickAnimView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickEndPoint:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/recents/views/CircleAndTickAnimView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickStartPoint:F

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->isNormalDrawableShow:Z

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mViewRect:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPathMeasure:Landroid/graphics/PathMeasure;

    .line 41
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickDstPath:Landroid/graphics/Path;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->initAnimator()V

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->initTickPaint(Landroid/content/Context;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->stopAnimator()V

    .line 55
    return-void
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "resourceIds"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 160
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 161
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    return-object v3

    .line 162
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 163
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 162
    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 165
    return-object v0
.end method

.method private getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "maxHeight":I
    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 211
    :cond_1
    return v0
.end method

.method private getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "maxWidth":I
    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 201
    :cond_1
    return v0
.end method

.method private initAnimator()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 67
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/recents/views/CircleAndTickAnimView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView$1;-><init>(Lcom/android/systemui/recents/views/CircleAndTickAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 78
    new-array v0, v4, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickStartPointAnimator:Landroid/animation/ValueAnimator;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickStartPointAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickStartPointAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickStartPointAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickStartPointAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/recents/views/CircleAndTickAnimView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView$2;-><init>(Lcom/android/systemui/recents/views/CircleAndTickAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 91
    new-array v0, v4, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickEndPointAnimator:Landroid/animation/ValueAnimator;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickEndPointAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickEndPointAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickEndPointAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/recents/views/CircleAndTickAnimView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView$3;-><init>(Lcom/android/systemui/recents/views/CircleAndTickAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickStartPointAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickEndPointAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 65
    return-void

    .line 67
    :array_0
    .array-data 4
        0x0
        -0x3d4c0000    # -90.0f
    .end array-data

    .line 78
    :array_1
    .array-data 4
        0x0
        0x3e9eb852    # 0.31f
    .end array-data

    .line 91
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initRightMarkPath()V
    .locals 4

    .prologue
    .line 121
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 123
    .local v0, "path":Landroid/graphics/Path;
    iget v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    int-to-float v1, v1

    const v2, 0x3e8a3d71    # 0.27f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    int-to-float v2, v2

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 126
    iget v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    int-to-float v1, v1

    const v2, 0x3eeb851f    # 0.46f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    int-to-float v2, v2

    const v3, 0x3f147ae1    # 0.58f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 129
    iget v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    int-to-float v1, v1

    const v2, 0x3f1eb852    # 0.62f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    int-to-float v2, v2

    const v3, 0x3ed70a3d    # 0.42f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 131
    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPathMeasure:Landroid/graphics/PathMeasure;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 132
    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPathLength:F

    .line 120
    return-void
.end method

.method private initTickPaint(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    const v1, 0x90c00cf

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    return-void
.end method


# virtual methods
.method public animatorStart(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->stopAnimator()V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->isNormalDrawableShow:Z

    .line 138
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 135
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->invalidate()V

    .line 188
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x437f0000    # 255.0f

    const/4 v7, 0x0

    .line 221
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 224
    .local v0, "outRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 225
    iget-object v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mViewRect:Landroid/graphics/Rect;

    const/16 v6, 0x11

    invoke-static {v6, v3, v4, v5, v0}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 226
    iget-object v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 227
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->isNormalDrawableShow:Z

    if-eqz v3, :cond_1

    .line 228
    iget-object v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->getAlpha()F

    move-result v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 229
    iget-object v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 240
    :cond_0
    :goto_0
    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 241
    iget-object v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickDstPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 243
    iget v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPathLength:F

    iget v4, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickStartPoint:F

    mul-float v1, v3, v4

    .line 244
    .local v1, "start":F
    iget v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPathLength:F

    iget v4, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickEndPoint:F

    mul-float v2, v3, v4

    .line 245
    .local v2, "stop":F
    iget-object v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v4, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickDstPath:Landroid/graphics/Path;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 246
    iget-object v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickDstPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 247
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 220
    return-void

    .line 231
    .end local v1    # "start":F
    .end local v2    # "stop":F
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mCircleRotateDegrees:F

    const/high16 v5, 0x42b40000    # 90.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 232
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 233
    iget v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mCircleRotateDegrees:F

    iget v4, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 234
    iget-object v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 216
    iget v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    iget v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->setMeasuredDimension(II)V

    .line 215
    return-void
.end method

.method public setBackDrawable(I)V
    .locals 1
    .param p1, "resourceIdBacks"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    return-void
.end method

.method public setBackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "backs"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 146
    return-void
.end method

.method public setDrawables(II)V
    .locals 4
    .param p1, "normalDrawable"    # I
    .param p2, "backDrawable"    # I

    .prologue
    const/4 v3, 0x0

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->setNormalDrawable(I)V

    .line 170
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->setBackDrawable(I)V

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->getIntrinsicWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    .line 172
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mViewRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    iget v2, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->initRightMarkPath()V

    .line 168
    return-void
.end method

.method public setNormalDrawable(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->setNormalDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    return-void
.end method

.method public setNormalDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "normalDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 154
    return-void
.end method

.method public stopAnimator()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 181
    iput v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mCircleRotateDegrees:F

    .line 182
    iput v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickStartPoint:F

    .line 183
    iput v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickEndPoint:F

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->isNormalDrawableShow:Z

    .line 176
    return-void
.end method
