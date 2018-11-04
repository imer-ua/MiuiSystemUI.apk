.class public Lcom/android/keyguard/charge/MiuiKeyguardChargingView;
.super Landroid/view/View;
.source "MiuiKeyguardChargingView.java"


# instance fields
.field private mBackCirclePaint:Landroid/graphics/Paint;

.field private mBatteryAnimaLevel:I

.field private mBatteryLevel:I

.field private mChargingHint:Landroid/widget/TextView;

.field private mCircleBorderWidth:F

.field private mCirclePadding:F

.field private mContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

.field private mDarkMode:Z

.field private mDensityDpi:I

.field mDuar:I

.field private mGradientCirclePaint:Landroid/graphics/Paint;

.field private mInitHeight:I

.field private mQuickCharging:Z

.field private mTextNumPaint:Landroid/graphics/Paint;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSizeRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    .line 35
    iput v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryLevel:I

    .line 36
    iput v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryAnimaLevel:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextSizeRatio:F

    .line 127
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDuar:I

    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    .line 35
    iput v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryLevel:I

    .line 36
    iput v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryAnimaLevel:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextSizeRatio:F

    .line 127
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDuar:I

    .line 52
    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->init()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    .line 35
    iput v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryLevel:I

    .line 36
    iput v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryAnimaLevel:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextSizeRatio:F

    .line 127
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDuar:I

    .line 57
    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->init()V

    .line 55
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const v4, 0x90f0310

    const/4 v3, 0x1

    .line 61
    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f0352

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCircleBorderWidth:F

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBackCirclePaint:Landroid/graphics/Paint;

    .line 63
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBackCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBackCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBackCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90c0121

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBackCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCircleBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mGradientCirclePaint:Landroid/graphics/Paint;

    .line 69
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mGradientCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mGradientCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mGradientCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90c0123

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mGradientCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCircleBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    .line 75
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90c0108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextPaint:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90f0312

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 82
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90c0109

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f0353

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mInitHeight:I

    .line 85
    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mInitHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextSizeRatio:F

    .line 60
    return-void
.end method

.method private isShowChargingHint()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 211
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    if-nez v1, :cond_0

    .line 212
    return v0

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-virtual {v2}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->getScreenHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 93
    .local v0, "densityDpi":I
    iget v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDensityDpi:I

    if-eq v1, v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->init()V

    .line 95
    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDensityDpi:I

    .line 90
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 130
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 131
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryAnimaLevel:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDuar:I

    rsub-int v6, v6, 0x168

    int-to-double v6, v6

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDuar:I

    mul-int/lit8 v6, v6, 0x2

    int-to-double v6, v6

    add-double/2addr v4, v6

    double-to-int v4, v4

    add-int/lit8 v15, v4, -0x5a

    .line 132
    .local v15, "start":I
    rsub-int v12, v15, 0x10e

    .line 134
    .local v12, "end":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getMeasuredWidth()I

    move-result v18

    .line 135
    .local v18, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getMeasuredHeight()I

    move-result v13

    .line 136
    .local v13, "height":I
    new-instance v5, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    move/from16 v0, v18

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    .line 137
    int-to-float v8, v13

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v9, v9, v21

    sub-float/2addr v8, v9

    .line 136
    invoke-direct {v5, v4, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 137
    int-to-float v6, v15

    int-to-float v7, v12

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBackCirclePaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object/from16 v4, p1

    .line 136
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 138
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryLevel:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_2

    .line 140
    new-instance v5, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v9, v9, v21

    sub-float/2addr v8, v9

    .line 140
    invoke-direct {v5, v4, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 142
    const/high16 v6, -0x3d4c0000    # -90.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryAnimaLevel:I

    int-to-double v8, v4

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    div-double v8, v8, v22

    double-to-float v4, v8

    const/high16 v7, 0x43b40000    # 360.0f

    mul-float/2addr v7, v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mGradientCirclePaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object/from16 v4, p1

    .line 139
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 150
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v10, v4, 0x2

    .line 151
    .local v10, "centerX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v11, v4, 0x2

    .line 152
    .local v11, "centerY":I
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->isShowChargingHint()Z

    move-result v14

    .line 154
    .local v14, "isOnTop":Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextSizeRatio:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 155
    if-eqz v14, :cond_3

    .line 156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    const-string/jumbo v5, "miui-light"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x90f0311

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 165
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    if-eqz v14, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x90c0108

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    :goto_2
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBackCirclePaint:Landroid/graphics/Paint;

    if-eqz v14, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x90c0121

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    :goto_3
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mChargingHint:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 174
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mChargingHint:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v14, :cond_8

    const v4, 0x90c0108

    :goto_4
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    .line 181
    .local v17, "textWidth":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-double/2addr v4, v6

    double-to-int v0, v4

    move/from16 v16, v0

    .line 182
    .local v16, "textHeight":I
    int-to-float v4, v10

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v17, v5

    sub-float v19, v4, v5

    .line 183
    .local v19, "x":F
    div-int/lit8 v4, v16, 0x4

    add-int/2addr v4, v11

    int-to-float v0, v4

    move/from16 v20, v0

    .line 184
    .local v20, "y":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 129
    return-void

    .line 145
    .end local v10    # "centerX":I
    .end local v11    # "centerY":I
    .end local v14    # "isOnTop":Z
    .end local v16    # "textHeight":I
    .end local v17    # "textWidth":F
    .end local v19    # "x":F
    .end local v20    # "y":F
    :cond_2
    new-instance v5, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v9, v9, v21

    sub-float/2addr v8, v9

    .line 145
    invoke-direct {v5, v4, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 147
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDuar:I

    add-int/lit8 v4, v4, -0x5a

    int-to-float v6, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryAnimaLevel:I

    int-to-double v8, v4

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    div-double v8, v8, v22

    double-to-float v4, v8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDuar:I

    rsub-int v7, v7, 0x168

    int-to-float v7, v7

    mul-float/2addr v7, v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mGradientCirclePaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object/from16 v4, p1

    .line 144
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 160
    .restart local v10    # "centerX":I
    .restart local v11    # "centerY":I
    .restart local v14    # "isOnTop":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextSizeRatio:F

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_1

    .line 166
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDarkMode:Z

    if-eqz v4, :cond_5

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x90c00fa

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    goto/16 :goto_2

    .line 168
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x90c0108

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    goto/16 :goto_2

    .line 170
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDarkMode:Z

    if-eqz v4, :cond_7

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x90c0122

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    goto/16 :goto_3

    .line 172
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x90c0121

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    goto/16 :goto_3

    .line 175
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDarkMode:Z

    if-eqz v4, :cond_9

    .line 176
    const v4, 0x90c00fa

    goto/16 :goto_4

    .line 177
    :cond_9
    const v4, 0x90c0108

    goto/16 :goto_4
.end method

.method public setChargingContainer(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V
    .locals 0
    .param p1, "container"    # Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    .line 206
    return-void
.end method

.method public setChargingHint(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tx"    # Landroid/widget/TextView;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mChargingHint:Landroid/widget/TextView;

    .line 201
    return-void
.end method

.method public setChargingLevel(IZ)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "quickCharging"    # Z

    .prologue
    .line 194
    iput-boolean p2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mQuickCharging:Z

    .line 195
    iput p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryLevel:I

    .line 196
    iput p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryAnimaLevel:I

    .line 197
    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->invalidate()V

    .line 193
    return-void
.end method

.method public setChargingLevelForAnima(IZ)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "quickCharging"    # Z

    .prologue
    .line 188
    iput-boolean p2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mQuickCharging:Z

    .line 189
    iput p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryAnimaLevel:I

    .line 190
    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->invalidate()V

    .line 187
    return-void
.end method

.method public setDarkMode(Z)V
    .locals 5
    .param p1, "darkMode"    # Z

    .prologue
    const v2, 0x90c0108

    const v1, 0x90c00fa

    .line 101
    iput-boolean p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDarkMode:Z

    .line 102
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mChargingHint:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 103
    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mChargingHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBackCirclePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 108
    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_3

    .line 109
    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 108
    :goto_1
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBackCirclePaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_4

    .line 112
    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x90c0122

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 111
    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->invalidate()V

    .line 100
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 105
    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    .line 113
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x90c0121

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_2
.end method

.method public setNeedRepositionDevice(Z)V
    .locals 3
    .param p1, "needRepositionDevice"    # Z

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mGradientCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90c0124

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->postInvalidate()V

    .line 118
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mGradientCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90c0123

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method
