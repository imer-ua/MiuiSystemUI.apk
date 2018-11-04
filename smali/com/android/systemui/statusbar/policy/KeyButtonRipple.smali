.class public Lcom/android/systemui/statusbar/policy/KeyButtonRipple;
.super Landroid/graphics/drawable/Drawable;
.source "KeyButtonRipple.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;,
        Lcom/android/systemui/statusbar/policy/KeyButtonRipple$2;,
        Lcom/android/systemui/statusbar/policy/KeyButtonRipple$LogInterpolator;,
        Lcom/android/systemui/statusbar/policy/KeyButtonRipple$SineInterpolator;
    }
.end annotation


# instance fields
.field private final mAlphaExitInterpolator:Landroid/view/animation/Interpolator;

.field private final mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mBottomProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawingHardwareGlow:Z

.field private mEndRect:Landroid/graphics/Rect;

.field private mFirstLeftEnd:F

.field private mFirstLeftStart:F

.field private mFirstRightEnd:F

.field private mFirstRightStart:F

.field private mGlowAlpha:F

.field private mGlowScale:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mLeftProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxWidth:I

.field private mPaintProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private mPressed:Z

.field private mRightProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mRipplePaint:Landroid/graphics/Paint;

.field private final mRunningAnimations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mRxProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mRyProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondLeftEnd:F

.field private mSecondLeftStart:F

.field private mSecondRightEnd:F

.field private mSecondRightStart:F

.field private final mSineInterpolator:Landroid/view/animation/Interpolator;

.field private final mSlideAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mSlideToRight:Z

.field private mStartRect:Landroid/graphics/Rect;

.field private mSupportHardware:Z

.field private final mTargetView:Landroid/view/View;

.field private final mTmpArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTopProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPressed:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mDrawingHardwareGlow:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->sildeSecondPart()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "targetView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 56
    iput v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    .line 57
    iput v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowScale:F

    .line 62
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$LogInterpolator;

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$LogInterpolator;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonRipple$LogInterpolator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 63
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAlphaExitInterpolator:Landroid/view/animation/Interpolator;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$SineInterpolator;

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$SineInterpolator;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonRipple$SineInterpolator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSineInterpolator:Landroid/view/animation/Interpolator;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSlideToRight:Z

    .line 354
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)V

    .line 353
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 376
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$2;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)V

    .line 375
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSlideAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f019a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mMaxWidth:I

    .line 80
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTargetView:Landroid/view/View;

    .line 78
    return-void
.end method

.method private cancelAnimations()V
    .locals 5

    .prologue
    .line 205
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 206
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 207
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 208
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 209
    .local v0, "a":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "a":Landroid/animation/Animator;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 212
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 204
    return-void
.end method

.method private drawHardware(Landroid/view/DisplayListCanvas;)V
    .locals 8
    .param p1, "c"    # Landroid/view/DisplayListCanvas;

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mDrawingHardwareGlow:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    .line 146
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    move-object v0, p1

    .line 145
    invoke-virtual/range {v0 .. v7}, Landroid/view/DisplayListCanvas;->drawRoundRect(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    .line 143
    :cond_0
    return-void
.end method

.method private drawSoftware(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 93
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 94
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v8

    .line 95
    .local v8, "p":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v0, v1

    move/from16 v17, v0

    .line 98
    .local v17, "w":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v12, v1

    .line 99
    .local v12, "h":F
    cmpl-float v1, v17, v12

    if-lez v1, :cond_1

    const/4 v13, 0x1

    .line 100
    .local v13, "horizontal":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRippleSize()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowScale:F

    mul-float v11, v1, v2

    .line 101
    .local v11, "diameter":F
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v14, v11, v1

    .line 102
    .local v14, "radius":F
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v9, v17, v1

    .line 103
    .local v9, "cx":F
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v10, v12, v1

    .line 104
    .local v10, "cy":F
    if-eqz v13, :cond_2

    move v15, v14

    .line 105
    .local v15, "rx":F
    :goto_1
    if-eqz v13, :cond_3

    move/from16 v16, v10

    .line 106
    .local v16, "ry":F
    :goto_2
    if-eqz v13, :cond_4

    move v6, v10

    .line 108
    .local v6, "corner":F
    :goto_3
    sub-float v2, v9, v15

    sub-float v3, v10, v16

    .line 109
    add-float v4, v9, v15

    add-float v5, v10, v16

    move-object/from16 v1, p1

    move v7, v6

    .line 108
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 92
    .end local v6    # "corner":F
    .end local v8    # "p":Landroid/graphics/Paint;
    .end local v9    # "cx":F
    .end local v10    # "cy":F
    .end local v11    # "diameter":F
    .end local v12    # "h":F
    .end local v13    # "horizontal":Z
    .end local v14    # "radius":F
    .end local v15    # "rx":F
    .end local v16    # "ry":F
    .end local v17    # "w":F
    :cond_0
    return-void

    .line 99
    .restart local v8    # "p":Landroid/graphics/Paint;
    .restart local v12    # "h":F
    .restart local v17    # "w":F
    :cond_1
    const/4 v13, 0x0

    .restart local v13    # "horizontal":Z
    goto :goto_0

    .line 104
    .restart local v9    # "cx":F
    .restart local v10    # "cy":F
    .restart local v11    # "diameter":F
    .restart local v14    # "radius":F
    :cond_2
    move v15, v9

    .restart local v15    # "rx":F
    goto :goto_1

    .line 105
    :cond_3
    move/from16 v16, v14

    .restart local v16    # "ry":F
    goto :goto_2

    :cond_4
    move v6, v9

    .line 106
    goto :goto_3
.end method

.method private enterHardware()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x15e

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const v5, 0x3faccccd    # 1.35f

    .line 294
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->cancelAnimations()V

    .line 295
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mDrawingHardwareGlow:Z

    .line 296
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setExtendStart(Landroid/graphics/CanvasProperty;)V

    .line 297
    new-instance v1, Landroid/view/RenderNodeAnimator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendStart()Landroid/graphics/CanvasProperty;

    move-result-object v2

    .line 298
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRippleSize()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    .line 297
    invoke-direct {v1, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 299
    .local v1, "startAnim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v1, v8, v9}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 300
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 301
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 302
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 304
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setExtendEnd(Landroid/graphics/CanvasProperty;)V

    .line 305
    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendEnd()Landroid/graphics/CanvasProperty;

    move-result-object v2

    .line 306
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRippleSize()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    .line 305
    invoke-direct {v0, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 307
    .local v0, "endAnim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, v8, v9}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 308
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 309
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 310
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 312
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    invoke-static {v6}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    .line 314
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    .line 315
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    .line 316
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    .line 324
    :goto_0
    iput v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowScale:F

    .line 325
    const/high16 v2, 0x3e800000    # 0.25f

    iput v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    .line 326
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 327
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 328
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 330
    invoke-virtual {v1}, Landroid/view/RenderNodeAnimator;->start()V

    .line 331
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 332
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->invalidateSelf()V

    .line 293
    return-void

    .line 318
    :cond_0
    invoke-static {v6}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    .line 319
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    .line 320
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    .line 321
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    goto :goto_0
.end method

.method private enterSoftware()V
    .locals 4

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->cancelAnimations()V

    .line 225
    const/high16 v1, 0x3e800000    # 0.25f

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    .line 226
    const-string/jumbo v1, "glowScale"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 228
    .local v0, "scaleAnimator":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 229
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 230
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 231
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 232
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 223
    return-void

    .line 226
    :array_0
    .array-data 4
        0x0
        0x3faccccd    # 1.35f
    .end array-data
.end method

.method private exitHardware()V
    .locals 4

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 340
    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 341
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 340
    invoke-direct {v0, v1, v3, v2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 342
    .local v0, "opacityAnim":Landroid/view/RenderNodeAnimator;
    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 343
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAlphaExitInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 344
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 345
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 347
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 348
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->invalidateSelf()V

    .line 338
    return-void
.end method

.method private exitSoftware()V
    .locals 5

    .prologue
    .line 236
    const-string/jumbo v1, "glowAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 237
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAlphaExitInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 238
    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 239
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 240
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 241
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 235
    return-void
.end method

.method private getExtendEnd()Landroid/graphics/CanvasProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    goto :goto_0
.end method

.method private getExtendSize()I
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_0
.end method

.method private getExtendStart()Landroid/graphics/CanvasProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    goto :goto_0
.end method

.method private getRipplePaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private getRippleSize()I
    .locals 2

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 290
    .local v0, "size":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mMaxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 289
    .end local v0    # "size":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .restart local v0    # "size":I
    goto :goto_0
.end method

.method private isHorizontal()Z
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setExtendEnd(Landroid/graphics/CanvasProperty;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "prop":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    .line 272
    :goto_0
    return-void

    .line 276
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    goto :goto_0
.end method

.method private setExtendStart(Landroid/graphics/CanvasProperty;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "prop":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    .line 256
    :goto_0
    return-void

    .line 260
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    goto :goto_0
.end method

.method private setPressedHardware(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 245
    if-eqz p1, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->enterHardware()V

    .line 244
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->exitHardware()V

    goto :goto_0
.end method

.method private setPressedSoftware(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 216
    if-eqz p1, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->enterSoftware()V

    .line 215
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->exitSoftware()V

    goto :goto_0
.end method

.method private sildeFirstPart()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xfa

    const/4 v4, 0x0

    .line 424
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->cancelAnimations()V

    .line 425
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mDrawingHardwareGlow:Z

    .line 426
    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mFirstLeftStart:F

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setExtendStart(Landroid/graphics/CanvasProperty;)V

    .line 427
    new-instance v1, Landroid/view/RenderNodeAnimator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendStart()Landroid/graphics/CanvasProperty;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mFirstLeftEnd:F

    invoke-direct {v1, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 428
    .local v1, "startAnim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v1, v6, v7}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 429
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSineInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 430
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSlideToRight:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 431
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 433
    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mFirstRightStart:F

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setExtendEnd(Landroid/graphics/CanvasProperty;)V

    .line 434
    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendEnd()Landroid/graphics/CanvasProperty;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mFirstRightEnd:F

    invoke-direct {v0, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 435
    .local v0, "endAnim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 436
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSineInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 437
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSlideToRight:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSlideAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 438
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 440
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 441
    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    .line 442
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    .line 443
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    .line 444
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    .line 452
    :goto_2
    const v2, 0x3faccccd    # 1.35f

    iput v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowScale:F

    .line 453
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 454
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 455
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 457
    invoke-virtual {v1}, Landroid/view/RenderNodeAnimator;->start()V

    .line 458
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 459
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->invalidateSelf()V

    .line 423
    return-void

    .line 430
    .end local v0    # "endAnim":Landroid/view/RenderNodeAnimator;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSlideAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    goto/16 :goto_0

    .line 437
    .restart local v0    # "endAnim":Landroid/view/RenderNodeAnimator;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    goto :goto_1

    .line 446
    :cond_2
    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    .line 447
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    .line 448
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    .line 449
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    goto :goto_2
.end method

.method private sildeSecondPart()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xfa

    const/4 v4, 0x0

    .line 465
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->cancelAnimations()V

    .line 466
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mDrawingHardwareGlow:Z

    .line 468
    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSecondLeftStart:F

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setExtendStart(Landroid/graphics/CanvasProperty;)V

    .line 469
    new-instance v1, Landroid/view/RenderNodeAnimator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendStart()Landroid/graphics/CanvasProperty;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSecondLeftEnd:F

    invoke-direct {v1, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 470
    .local v1, "startAnim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v1, v6, v7}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 471
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSineInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 472
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 473
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 475
    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSecondRightStart:F

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setExtendEnd(Landroid/graphics/CanvasProperty;)V

    .line 476
    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendEnd()Landroid/graphics/CanvasProperty;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSecondRightEnd:F

    invoke-direct {v0, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 477
    .local v0, "endAnim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 478
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSineInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 479
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 480
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 482
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    .line 484
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    .line 485
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    .line 486
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    .line 494
    :goto_0
    const v2, 0x3faccccd    # 1.35f

    iput v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowScale:F

    .line 495
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 496
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 497
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 499
    invoke-virtual {v1}, Landroid/view/RenderNodeAnimator;->start()V

    .line 500
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 501
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 503
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->invalidateSelf()V

    .line 464
    return-void

    .line 488
    :cond_0
    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    .line 489
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    .line 490
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    .line 491
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSupportHardware:Z

    .line 117
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSupportHardware:Z

    if-eqz v0, :cond_0

    .line 118
    check-cast p1, Landroid/view/DisplayListCanvas;

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->drawHardware(Landroid/view/DisplayListCanvas;)V

    .line 115
    :goto_0
    return-void

    .line 120
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->drawSoftware(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public gestureSlideEffect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "startRect"    # Landroid/graphics/Rect;
    .param p2, "endRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    const v4, -0x414ccccd    # -0.35f

    const v3, 0x3eb33333    # 0.35f

    const/high16 v2, 0x40000000    # 2.0f

    .line 396
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    .line 397
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mEndRect:Landroid/graphics/Rect;

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mEndRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_0

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSlideToRight:Z

    .line 401
    iput v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mFirstLeftStart:F

    .line 402
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRippleSize()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mFirstLeftEnd:F

    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mFirstRightStart:F

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mEndRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRippleSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mFirstRightEnd:F

    .line 405
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRippleSize()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSecondLeftStart:F

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mEndRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRippleSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSecondLeftEnd:F

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mEndRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRippleSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSecondRightStart:F

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mEndRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRippleSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSecondRightEnd:F

    .line 420
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->sildeFirstPart()V

    .line 395
    return-void

    .line 410
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSlideToRight:Z

    .line 411
    iput v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mFirstLeftStart:F

    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mEndRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRippleSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mFirstLeftEnd:F

    .line 413
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mFirstRightStart:F

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRippleSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mFirstRightEnd:F

    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mEndRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRippleSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSecondLeftStart:F

    .line 416
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mEndRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRippleSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSecondLeftEnd:F

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRippleSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSecondRightStart:F

    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mEndRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRippleSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSecondRightEnd:F

    goto/16 :goto_0
.end method

.method public getGlowAlpha()F
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    return v0
.end method

.method public getGlowScale()F
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowScale:F

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->cancelAnimations()V

    .line 187
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1, "state"    # [I

    .prologue
    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, "pressed":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 172
    aget v2, p1, v0

    const v3, 0x10100a7

    if-ne v2, v3, :cond_1

    .line 173
    const/4 v1, 0x1

    .line 177
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPressed:Z

    if-eq v1, v2, :cond_2

    .line 178
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setPressed(Z)V

    .line 179
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPressed:Z

    .line 180
    const/4 v2, 0x1

    return v2

    .line 171
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 125
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 130
    return-void
.end method

.method public setGlowAlpha(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 155
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->invalidateSelf()V

    .line 154
    return-void
.end method

.method public setGlowScale(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 164
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowScale:F

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->invalidateSelf()V

    .line 163
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSupportHardware:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setPressedHardware(Z)V

    .line 196
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setPressedSoftware(Z)V

    goto :goto_0
.end method
