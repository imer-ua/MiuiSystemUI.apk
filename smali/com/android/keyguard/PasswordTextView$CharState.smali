.class Lcom/android/keyguard/PasswordTextView$CharState;
.super Ljava/lang/Object;
.source "PasswordTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CharState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/PasswordTextView$CharState$10;,
        Lcom/android/keyguard/PasswordTextView$CharState$1;,
        Lcom/android/keyguard/PasswordTextView$CharState$2;,
        Lcom/android/keyguard/PasswordTextView$CharState$3;,
        Lcom/android/keyguard/PasswordTextView$CharState$4;,
        Lcom/android/keyguard/PasswordTextView$CharState$5;,
        Lcom/android/keyguard/PasswordTextView$CharState$6;,
        Lcom/android/keyguard/PasswordTextView$CharState$7;,
        Lcom/android/keyguard/PasswordTextView$CharState$8;,
        Lcom/android/keyguard/PasswordTextView$CharState$9;
    }
.end annotation


# instance fields
.field currentDotSizeFactor:F

.field currentTextSizeFactor:F

.field currentTextTranslationY:F

.field currentWidthFactor:F

.field dotAnimationIsGrowing:Z

.field dotAnimator:Landroid/animation/Animator;

.field dotFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private dotSwapperRunnable:Ljava/lang/Runnable;

.field isDotSwapPending:Z

.field removeEndListener:Landroid/animation/Animator$AnimatorListener;

.field textAnimationIsGrowing:Z

.field textAnimator:Landroid/animation/ValueAnimator;

.field textFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field textTranslateAnimator:Landroid/animation/ValueAnimator;

.field textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field final synthetic this$0:Lcom/android/keyguard/PasswordTextView;

.field whichChar:C

.field widthAnimationIsGrowing:Z

.field widthAnimator:Landroid/animation/ValueAnimator;

.field widthFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method static synthetic -wrap0(Lcom/android/keyguard/PasswordTextView$CharState;Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/PasswordTextView$CharState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->performSwap()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/PasswordTextView$CharState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->removeDotSwapCallbacks()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/PasswordTextView$CharState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->startAppearAnimation()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/PasswordTextView$CharState;JJ)V
    .locals 1
    .param p1, "startDelay"    # J
    .param p3, "widthDelay"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/PasswordTextView$CharState;->startRemoveAnimation(JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/android/keyguard/PasswordTextView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/keyguard/PasswordTextView;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextTranslationY:F

    .line 373
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$1;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->removeEndListener:Landroid/animation/Animator$AnimatorListener;

    .line 397
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$2;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 404
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$3;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 411
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$4;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 418
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$5;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 426
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$6;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    .line 425
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 435
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$7;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    .line 434
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 444
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$8;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    .line 443
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 453
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$9;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$9;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    .line 452
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 461
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState$10;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextView$CharState$10;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    .line 358
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/PasswordTextView;Lcom/android/keyguard/PasswordTextView$CharState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/PasswordTextView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextView$CharState;-><init>(Lcom/android/keyguard/PasswordTextView;)V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 657
    if-eqz p1, :cond_0

    .line 658
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 656
    :cond_0
    return-void
.end method

.method private performSwap()V
    .locals 2

    .prologue
    .line 549
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/PasswordTextView$CharState;->startTextDisappearAnimation(J)V

    .line 550
    const-wide/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/PasswordTextView$CharState;->startDotAppearAnimation(J)V

    .line 548
    return-void
.end method

.method private postDotSwap(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->removeDotSwapCallbacks()V

    .line 528
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/keyguard/PasswordTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    .line 526
    return-void
.end method

.method private removeDotSwapCallbacks()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    .line 532
    return-void
.end method

.method private startAppearAnimation()V
    .locals 6

    .prologue
    .line 503
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-boolean v3, v3, Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z

    if-nez v3, :cond_5

    .line 504
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    if-eqz v3, :cond_4

    const/4 v0, 0x0

    .line 505
    .local v0, "dotNeedsAnimation":Z
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-boolean v3, v3, Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z

    if-eqz v3, :cond_7

    .line 506
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    if-eqz v3, :cond_6

    const/4 v1, 0x0

    .line 507
    .local v1, "textNeedsAnimation":Z
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    if-eqz v3, :cond_8

    const/4 v2, 0x0

    .line 508
    .local v2, "widthNeedsAnimation":Z
    :goto_2
    if-eqz v0, :cond_0

    .line 509
    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/PasswordTextView$CharState;->startDotAppearAnimation(J)V

    .line 511
    :cond_0
    if-eqz v1, :cond_1

    .line 512
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->startTextAppearAnimation()V

    .line 514
    :cond_1
    if-eqz v2, :cond_2

    .line 515
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->startWidthAppearAnimation()V

    .line 517
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-boolean v3, v3, Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z

    if-eqz v3, :cond_3

    .line 518
    const-wide/16 v4, 0x514

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/PasswordTextView$CharState;->postDotSwap(J)V

    .line 502
    :cond_3
    return-void

    .line 504
    .end local v0    # "dotNeedsAnimation":Z
    .end local v1    # "textNeedsAnimation":Z
    .end local v2    # "widthNeedsAnimation":Z
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "dotNeedsAnimation":Z
    goto :goto_0

    .line 503
    .end local v0    # "dotNeedsAnimation":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "dotNeedsAnimation":Z
    goto :goto_0

    .line 506
    :cond_6
    const/4 v1, 0x1

    .restart local v1    # "textNeedsAnimation":Z
    goto :goto_1

    .line 505
    .end local v1    # "textNeedsAnimation":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "textNeedsAnimation":Z
    goto :goto_1

    .line 507
    :cond_8
    const/4 v2, 0x1

    .restart local v2    # "widthNeedsAnimation":Z
    goto :goto_2
.end method

.method private startDotAppearAnimation(J)V
    .locals 13
    .param p1, "delay"    # J

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 624
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v6}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 625
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-boolean v6, v6, Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z

    if-nez v6, :cond_0

    .line 627
    new-array v6, v9, [F

    iget v7, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    aput v7, v6, v10

    .line 628
    const/high16 v7, 0x3fc00000    # 1.5f

    aput v7, v6, v8

    .line 627
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 629
    .local v2, "overShootAnimator":Landroid/animation/ValueAnimator;
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 630
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v6}, Lcom/android/keyguard/PasswordTextView;->-get0(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 631
    const-wide/16 v4, 0xa0

    .line 633
    .local v4, "overShootDuration":J
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 634
    new-array v6, v9, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 636
    .local v3, "settleBackAnimator":Landroid/animation/ValueAnimator;
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 637
    const-wide/16 v6, 0xa0

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 638
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 639
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 640
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v6, v9, [Landroid/animation/Animator;

    aput-object v2, v6, v10

    aput-object v3, v6, v8

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 641
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 642
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 643
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 653
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v2    # "overShootAnimator":Landroid/animation/ValueAnimator;
    .end local v3    # "settleBackAnimator":Landroid/animation/ValueAnimator;
    .end local v4    # "overShootDuration":J
    :goto_0
    iput-boolean v8, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    .line 623
    return-void

    .line 645
    :cond_0
    new-array v6, v9, [F

    iget v7, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    aput v7, v6, v10

    aput v11, v6, v8

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 646
    .local v1, "growAnimator":Landroid/animation/ValueAnimator;
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 647
    iget v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    sub-float v6, v11, v6

    const/high16 v7, 0x43200000    # 160.0f

    mul-float/2addr v6, v7

    float-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 648
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 649
    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 650
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 651
    iput-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    goto :goto_0

    .line 634
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

    .line 579
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v1}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 580
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    aput v4, v1, v6

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 581
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 582
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 583
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v1}, Lcom/android/keyguard/PasswordTextView;->-get3(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 584
    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v4, 0x43200000    # 160.0f

    mul-float/2addr v1, v4

    float-to-long v2, v1

    .line 585
    .local v2, "duration":J
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 586
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 587
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 588
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 589
    iput-boolean v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    .line 578
    return-void
.end method

.method private startRemoveAnimation(JJ)V
    .locals 5
    .param p1, "startDelay"    # J
    .param p3, "widthDelay"    # J

    .prologue
    const/4 v4, 0x0

    .line 485
    iget v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    if-nez v3, :cond_3

    const/4 v0, 0x1

    .line 487
    :goto_0
    iget v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_5

    const/4 v1, 0x1

    .line 489
    :goto_1
    iget v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_7

    const/4 v2, 0x1

    .line 491
    :goto_2
    if-eqz v0, :cond_0

    .line 492
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/PasswordTextView$CharState;->startDotDisappearAnimation(J)V

    .line 494
    :cond_0
    if-eqz v1, :cond_1

    .line 495
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/PasswordTextView$CharState;->startTextDisappearAnimation(J)V

    .line 497
    :cond_1
    if-eqz v2, :cond_2

    .line 498
    invoke-direct {p0, p3, p4}, Lcom/android/keyguard/PasswordTextView$CharState;->startWidthDisappearAnimation(J)V

    .line 484
    :cond_2
    return-void

    .line 486
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_4

    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    .local v0, "dotNeedsAnimation":Z
    goto :goto_0

    .end local v0    # "dotNeedsAnimation":Z
    :cond_4
    const/4 v0, 0x0

    .local v0, "dotNeedsAnimation":Z
    goto :goto_0

    .line 488
    .end local v0    # "dotNeedsAnimation":Z
    :cond_5
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_6

    iget-boolean v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    .local v1, "textNeedsAnimation":Z
    goto :goto_1

    .end local v1    # "textNeedsAnimation":Z
    :cond_6
    const/4 v1, 0x0

    .local v1, "textNeedsAnimation":Z
    goto :goto_1

    .line 490
    .end local v1    # "textNeedsAnimation":Z
    :cond_7
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_8

    iget-boolean v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    .local v2, "widthNeedsAnimation":Z
    goto :goto_2

    .end local v2    # "widthNeedsAnimation":Z
    :cond_8
    const/4 v2, 0x0

    .local v2, "widthNeedsAnimation":Z
    goto :goto_2
.end method

.method private startTextAppearAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 603
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 604
    new-array v0, v5, [F

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    const/4 v2, 0x0

    aput v1, v0, v2

    aput v3, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 605
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 606
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 607
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v1}, Lcom/android/keyguard/PasswordTextView;->-get0(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 608
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    sub-float v1, v3, v1

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 609
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 610
    iput-boolean v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    .line 613
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 614
    new-array v0, v5, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 615
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 616
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 617
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v1}, Lcom/android/keyguard/PasswordTextView;->-get0(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 618
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 619
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 602
    :cond_0
    return-void

    .line 614
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startTextDisappearAnimation(J)V
    .locals 5
    .param p1, "startDelay"    # J

    .prologue
    const/4 v4, 0x0

    .line 567
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 568
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    aput v1, v0, v4

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 569
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 570
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 571
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v1}, Lcom/android/keyguard/PasswordTextView;->-get3(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 572
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 573
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 574
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 575
    iput-boolean v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    .line 566
    return-void
.end method

.method private startWidthAppearAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 593
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 594
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    const/4 v2, 0x0

    aput v1, v0, v2

    aput v3, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 595
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 596
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 597
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    sub-float v1, v3, v1

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 598
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 599
    iput-boolean v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    .line 592
    return-void
.end method

.method private startWidthDisappearAnimation(J)V
    .locals 5
    .param p1, "widthDelay"    # J

    .prologue
    const/4 v4, 0x0

    .line 555
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 556
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    aput v1, v0, v4

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 557
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 558
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 559
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->removeEndListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 560
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 561
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 562
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 563
    iput-boolean v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    .line 554
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FIFF)F
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "currentDrawPosition"    # F
    .param p3, "charHeight"    # I
    .param p4, "yPosition"    # F
    .param p5, "charLength"    # F

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 669
    iget v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_2

    const/4 v4, 0x1

    .line 670
    .local v4, "textVisible":Z
    :goto_0
    iget v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_3

    const/4 v3, 0x1

    .line 671
    .local v3, "dotVisible":Z
    :goto_1
    iget v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    mul-float v1, p5, v5

    .line 672
    .local v1, "charWidth":F
    if-eqz v4, :cond_0

    .line 673
    int-to-float v5, p3

    div-float/2addr v5, v9

    iget v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    mul-float/2addr v5, v6

    add-float/2addr v5, p4

    .line 674
    int-to-float v6, p3

    iget v7, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextTranslationY:F

    mul-float/2addr v6, v7

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v7

    .line 673
    add-float v2, v5, v6

    .line 675
    .local v2, "currYPosition":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 676
    div-float v5, v1, v9

    add-float v0, p2, v5

    .line 677
    .local v0, "centerX":F
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 678
    iget v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    iget v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 679
    iget-char v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v6}, Lcom/android/keyguard/PasswordTextView;->-get5(Lcom/android/keyguard/PasswordTextView;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v5, v8, v8, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 680
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 682
    .end local v0    # "centerX":F
    .end local v2    # "currYPosition":F
    :cond_0
    if-eqz v3, :cond_1

    .line 683
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 684
    div-float v5, v1, v9

    add-float v0, p2, v5

    .line 685
    .restart local v0    # "centerX":F
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 686
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v5}, Lcom/android/keyguard/PasswordTextView;->-get4(Lcom/android/keyguard/PasswordTextView;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v6}, Lcom/android/keyguard/PasswordTextView;->-get5(Lcom/android/keyguard/PasswordTextView;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v8, v8, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 687
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 689
    .end local v0    # "centerX":F
    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v5}, Lcom/android/keyguard/PasswordTextView;->-get1(Lcom/android/keyguard/PasswordTextView;)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    return v5

    .line 669
    .end local v1    # "charWidth":F
    .end local v3    # "dotVisible":Z
    .end local v4    # "textVisible":Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "textVisible":Z
    goto :goto_0

    .line 670
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "dotVisible":Z
    goto :goto_1
.end method

.method reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 470
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    .line 471
    iput v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 472
    iput v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    .line 473
    iput v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    .line 474
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 475
    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 476
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 477
    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 478
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 479
    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 480
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextTranslationY:F

    .line 481
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->removeDotSwapCallbacks()V

    .line 469
    return-void
.end method

.method swapToDotWhenAppearFinished()V
    .locals 6

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->removeDotSwapCallbacks()V

    .line 539
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    .line 540
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    .line 541
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    .line 540
    sub-long v0, v2, v4

    .line 542
    .local v0, "remainingDuration":J
    const-wide/16 v2, 0x64

    add-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/PasswordTextView$CharState;->postDotSwap(J)V

    .line 537
    .end local v0    # "remainingDuration":J
    :goto_0
    return-void

    .line 544
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->performSwap()V

    goto :goto_0
.end method
