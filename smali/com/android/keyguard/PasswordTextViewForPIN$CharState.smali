.class Lcom/android/keyguard/PasswordTextViewForPIN$CharState;
.super Ljava/lang/Object;
.source "PasswordTextViewForPIN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextViewForPIN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CharState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/PasswordTextViewForPIN$CharState$1;,
        Lcom/android/keyguard/PasswordTextViewForPIN$CharState$2;,
        Lcom/android/keyguard/PasswordTextViewForPIN$CharState$3;
    }
.end annotation


# instance fields
.field currentDotSizeFactor:F

.field dotAnimationIsGrowing:Z

.field dotAnimator:Landroid/animation/Animator;

.field dotFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field isVisible:Z

.field removeDotFinishListener:Landroid/animation/Animator$AnimatorListener;

.field final synthetic this$0:Lcom/android/keyguard/PasswordTextViewForPIN;


# direct methods
.method static synthetic -wrap0(Lcom/android/keyguard/PasswordTextViewForPIN$CharState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->startAppearAnimation()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/PasswordTextViewForPIN$CharState;J)V
    .locals 1
    .param p1, "startDelay"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->startRemoveAnimation(J)V

    return-void
.end method

.method private constructor <init>(Lcom/android/keyguard/PasswordTextViewForPIN;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/keyguard/PasswordTextViewForPIN;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPIN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPIN$CharState$1;-><init>(Lcom/android/keyguard/PasswordTextViewForPIN$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 394
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPIN$CharState$2;-><init>(Lcom/android/keyguard/PasswordTextViewForPIN$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->removeDotFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 416
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPIN$CharState$3;-><init>(Lcom/android/keyguard/PasswordTextViewForPIN$CharState;)V

    .line 415
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 380
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/PasswordTextViewForPIN;Lcom/android/keyguard/PasswordTextViewForPIN$CharState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/PasswordTextViewForPIN;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;-><init>(Lcom/android/keyguard/PasswordTextViewForPIN;)V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 487
    if-eqz p1, :cond_0

    .line 488
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 486
    :cond_0
    return-void
.end method

.method private startAppearAnimation()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 440
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->dotAnimationIsGrowing:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 441
    .local v0, "dotNeedsAnimation":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 442
    iput-boolean v1, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->isVisible:Z

    .line 443
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->startDotAppearAnimation(J)V

    .line 439
    :cond_0
    return-void

    .end local v0    # "dotNeedsAnimation":Z
    :cond_1
    move v0, v1

    .line 440
    goto :goto_0
.end method

.method private startDotAppearAnimation(J)V
    .locals 11
    .param p1, "delay"    # J

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 462
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v5}, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 465
    new-array v5, v9, [F

    iget v6, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->currentDotSizeFactor:F

    aput v6, v5, v10

    .line 466
    const/high16 v6, 0x3fc00000    # 1.5f

    aput v6, v5, v8

    .line 465
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 467
    .local v1, "overShootAnimator":Landroid/animation/ValueAnimator;
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 468
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPIN;

    invoke-static {v5}, Lcom/android/keyguard/PasswordTextViewForPIN;->-get0(Lcom/android/keyguard/PasswordTextViewForPIN;)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 469
    const-wide/16 v2, 0xa0

    .line 471
    .local v2, "overShootDuration":J
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 472
    new-array v5, v9, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 474
    .local v4, "settleBackAnimator":Landroid/animation/ValueAnimator;
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 475
    const-wide/16 v6, 0xa0

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 476
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 477
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 478
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v5, v9, [Landroid/animation/Animator;

    aput-object v1, v5, v10

    aput-object v4, v5, v8

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 479
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 480
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 481
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 483
    iput-boolean v8, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->dotAnimationIsGrowing:Z

    .line 461
    return-void

    .line 472
    :array_0
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startDotDisappearAnimation(J)V
    .locals 7
    .param p1, "startDelay"    # J

    .prologue
    const/4 v6, 0x0

    .line 448
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v1}, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 449
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->currentDotSizeFactor:F

    aput v4, v1, v6

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 450
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 451
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->removeDotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 452
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPIN;

    invoke-static {v1}, Lcom/android/keyguard/PasswordTextViewForPIN;->-get2(Lcom/android/keyguard/PasswordTextViewForPIN;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 453
    iget v1, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->currentDotSizeFactor:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v4, 0x43200000    # 160.0f

    mul-float/2addr v1, v4

    float-to-long v2, v1

    .line 454
    .local v2, "duration":J
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 455
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 456
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 457
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 458
    iput-boolean v6, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->dotAnimationIsGrowing:Z

    .line 447
    return-void
.end method

.method private startRemoveAnimation(J)V
    .locals 3
    .param p1, "startDelay"    # J

    .prologue
    .line 432
    iget v1, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->currentDotSizeFactor:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->dotAnimator:Landroid/animation/Animator;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 434
    .local v0, "dotNeedsAnimation":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 435
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->startDotDisappearAnimation(J)V

    .line 431
    :cond_0
    return-void

    .line 433
    .end local v0    # "dotNeedsAnimation":Z
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->dotAnimationIsGrowing:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FIFF)F
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "currentDrawPosition"    # F
    .param p3, "charHeight"    # I
    .param p4, "yPosition"    # F
    .param p5, "charLength"    # F

    .prologue
    const/4 v4, 0x0

    .line 499
    iget v2, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->currentDotSizeFactor:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    const/4 v1, 0x1

    .line 500
    .local v1, "dotVisible":Z
    :goto_0
    move v0, p5

    .line 501
    .local v0, "charWidth":F
    if-eqz v1, :cond_0

    .line 502
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 503
    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 504
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPIN;

    invoke-static {v2}, Lcom/android/keyguard/PasswordTextViewForPIN;->-get3(Lcom/android/keyguard/PasswordTextViewForPIN;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->currentDotSizeFactor:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPIN;

    invoke-static {v3}, Lcom/android/keyguard/PasswordTextViewForPIN;->-get4(Lcom/android/keyguard/PasswordTextViewForPIN;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 505
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 507
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPIN;

    invoke-static {v2}, Lcom/android/keyguard/PasswordTextViewForPIN;->-get1(Lcom/android/keyguard/PasswordTextViewForPIN;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p5

    return v2

    .line 499
    .end local v0    # "charWidth":F
    .end local v1    # "dotVisible":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method reset()V
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->currentDotSizeFactor:F

    .line 426
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->isVisible:Z

    .line 424
    return-void
.end method
