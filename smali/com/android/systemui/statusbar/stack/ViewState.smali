.class public Lcom/android/systemui/statusbar/stack/ViewState;
.super Ljava/lang/Object;
.source "ViewState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/ViewState$1;,
        Lcom/android/systemui/statusbar/stack/ViewState$2;,
        Lcom/android/systemui/statusbar/stack/ViewState$3;
    }
.end annotation


# static fields
.field protected static final NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

.field private static final SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;


# instance fields
.field public alpha:F

.field public gone:Z

.field public hidden:Z

.field public paddingBottom:I

.field public paddingTop:I

.field public scaleX:F

.field public scaleY:F

.field public xTranslation:F

.field public yTranslation:F

.field public zTranslation:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/stack/ViewState$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/ViewState$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/stack/ViewState$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/ViewState$2;-><init>()V

    .line 71
    sput-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    .line 96
    new-instance v0, Lcom/android/systemui/statusbar/stack/ViewState$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/ViewState$3;-><init>()V

    .line 95
    sput-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    .line 126
    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    .line 39
    return-void
.end method

.method public static cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J
    .locals 6
    .param p0, "duration"    # J
    .param p2, "previousAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 769
    move-wide v0, p0

    .line 770
    .local v0, "newDuration":J
    if-eqz p2, :cond_0

    .line 773
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    .line 774
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    .line 773
    sub-long/2addr v2, v4

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 775
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 777
    :cond_0
    return-wide v0
.end method

.method public static getChildTag(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .param p0, "child"    # Landroid/view/View;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 750
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getFinalTranslationY(Landroid/view/View;)F
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 785
    if-nez p0, :cond_0

    .line 786
    const/4 v1, 0x0

    return v1

    .line 788
    :cond_0
    const v1, 0x912000f

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 789
    .local v0, "yAnimator":Landroid/animation/ValueAnimator;
    if-nez v0, :cond_1

    .line 790
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    return v1

    .line 792
    :cond_1
    const v1, 0x912001a

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method public static getFinalTranslationZ(Landroid/view/View;)F
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 801
    if-nez p0, :cond_0

    .line 802
    const/4 v1, 0x0

    return v1

    .line 804
    :cond_0
    const v1, 0x9120010

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 805
    .local v0, "zAnimator":Landroid/animation/ValueAnimator;
    if-nez v0, :cond_1

    .line 806
    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    return v1

    .line 808
    :cond_1
    const v1, 0x912001b

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method private static isAnimating(Landroid/view/View;I)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tag"    # I

    .prologue
    .line 284
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "property"    # Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    .prologue
    .line 288
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;->getAnimatorTag()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAnimatingY(Landroid/view/View;)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 813
    const v0, 0x912000f

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 18
    .param p1, "child"    # Landroid/view/View;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    .line 372
    const v14, 0x912002b

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    .line 373
    .local v11, "previousStartValue":Ljava/lang/Float;
    const v14, 0x9120020

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    .line 374
    .local v10, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 375
    .local v5, "newEndValue":F
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_0

    .line 376
    return-void

    .line 378
    :cond_0
    const v14, 0x9120013

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    .line 379
    .local v9, "previousAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v3

    .line 380
    .local v3, "filter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    iget-boolean v14, v3, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    if-nez v14, :cond_2

    .line 382
    if-eqz v9, :cond_1

    .line 385
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 386
    .local v13, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float v12, v5, v14

    .line 387
    .local v12, "relativeDiff":F
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float v8, v14, v12

    .line 388
    .local v8, "newStartValue":F
    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 389
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x912002b

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 390
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x9120020

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 391
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 392
    return-void

    .line 395
    .end local v8    # "newStartValue":F
    .end local v12    # "relativeDiff":F
    .end local v13    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 396
    const/4 v14, 0x0

    cmpl-float v14, v5, v14

    if-nez v14, :cond_2

    .line 397
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 402
    :cond_2
    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    .line 403
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v16

    const/16 v17, 0x0

    aput v16, v15, v17

    const/16 v16, 0x1

    aput v5, v15, v16

    .line 402
    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 404
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    sget-object v14, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 406
    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 407
    new-instance v14, Lcom/android/systemui/statusbar/stack/ViewState$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1, v5}, Lcom/android/systemui/statusbar/stack/ViewState$4;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;F)V

    invoke-virtual {v2, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 432
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v14, v15, v9}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    .line 433
    .local v6, "newDuration":J
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 434
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    .line 435
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_4

    .line 436
    :cond_3
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v2, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 438
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v4

    .line 439
    .local v4, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v4, :cond_5

    .line 440
    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 443
    :cond_5
    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 444
    const v14, 0x9120013

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 445
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x912002b

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 446
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x9120020

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 371
    return-void
.end method

.method public static startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0
    .param p0, "animator"    # Landroid/animation/Animator;
    .param p1, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    .line 742
    if-eqz p1, :cond_0

    .line 744
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 746
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 741
    return-void
.end method

.method private startPaddingBottomAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    .line 629
    const v8, 0x9120028

    invoke-static {p1, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 630
    .local v7, "previousStartValue":Ljava/lang/Integer;
    const v8, 0x912001d

    invoke-static {p1, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 631
    .local v6, "previousEndValue":Ljava/lang/Integer;
    iget v4, p0, Lcom/android/systemui/statusbar/stack/ViewState;->paddingBottom:I

    .line 632
    .local v4, "newEndValue":I
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v4, :cond_0

    .line 633
    return-void

    .line 636
    :cond_0
    const v8, 0x9120012

    invoke-static {p1, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/ValueAnimator;

    .line 638
    .local v5, "previousAnimator":Landroid/animation/ValueAnimator;
    const/4 v8, 0x2

    new-array v8, v8, [I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    const/4 v10, 0x0

    aput v9, v8, v10

    const/4 v9, 0x1

    aput v4, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 639
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v8, Lcom/android/systemui/statusbar/stack/ViewState$9;

    invoke-direct {v8, p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState$9;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 646
    sget-object v8, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 647
    iget-wide v8, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v8, v9, v5}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v2

    .line 648
    .local v2, "newDuration":J
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 649
    iget-wide v8, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    if-eqz v5, :cond_1

    .line 650
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_2

    .line 651
    :cond_1
    iget-wide v8, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 653
    :cond_2
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v1

    .line 654
    .local v1, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v1, :cond_3

    .line 655
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 658
    :cond_3
    new-instance v8, Lcom/android/systemui/statusbar/stack/ViewState$10;

    invoke-direct {v8, p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState$10;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 666
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 667
    const v8, 0x9120012

    invoke-virtual {p1, v8, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 668
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x9120028

    invoke-virtual {p1, v9, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 669
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x912001d

    invoke-virtual {p1, v9, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 628
    return-void
.end method

.method private startPaddingTopAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    .line 585
    const v8, 0x9120027

    invoke-static {p1, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 586
    .local v7, "previousStartValue":Ljava/lang/Integer;
    const v8, 0x912001c

    invoke-static {p1, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 587
    .local v6, "previousEndValue":Ljava/lang/Integer;
    iget v4, p0, Lcom/android/systemui/statusbar/stack/ViewState;->paddingTop:I

    .line 588
    .local v4, "newEndValue":I
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v4, :cond_0

    .line 589
    return-void

    .line 592
    :cond_0
    const v8, 0x9120011

    invoke-static {p1, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/ValueAnimator;

    .line 594
    .local v5, "previousAnimator":Landroid/animation/ValueAnimator;
    const/4 v8, 0x2

    new-array v8, v8, [I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    const/4 v10, 0x0

    aput v9, v8, v10

    const/4 v9, 0x1

    aput v4, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 595
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v8, Lcom/android/systemui/statusbar/stack/ViewState$7;

    invoke-direct {v8, p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState$7;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 602
    sget-object v8, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 603
    iget-wide v8, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v8, v9, v5}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v2

    .line 604
    .local v2, "newDuration":J
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 605
    iget-wide v8, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    if-eqz v5, :cond_1

    .line 606
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_2

    .line 607
    :cond_1
    iget-wide v8, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 609
    :cond_2
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v1

    .line 610
    .local v1, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v1, :cond_3

    .line 611
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 614
    :cond_3
    new-instance v8, Lcom/android/systemui/statusbar/stack/ViewState$8;

    invoke-direct {v8, p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState$8;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 622
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 623
    const v8, 0x9120011

    invoke-virtual {p1, v8, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 624
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x9120027

    invoke-virtual {p1, v9, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 625
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x912001c

    invoke-virtual {p1, v9, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 584
    return-void
.end method

.method private startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 22
    .param p1, "child"    # Landroid/view/View;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    .line 520
    const v18, 0x9120024

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    .line 521
    .local v15, "previousStartValue":Ljava/lang/Float;
    const v18, 0x9120019

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    .line 522
    .local v14, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    .line 523
    .local v9, "newEndValue":F
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v18

    cmpl-float v18, v18, v9

    if-nez v18, :cond_0

    .line 524
    return-void

    .line 526
    :cond_0
    const v18, 0x912000e

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/animation/ObjectAnimator;

    .line 527
    .local v13, "previousAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v6

    .line 528
    .local v6, "filter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    iget-boolean v0, v6, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 530
    if-eqz v13, :cond_1

    .line 533
    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .line 534
    .local v17, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v18

    sub-float v16, v9, v18

    .line 535
    .local v16, "relativeDiff":F
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v18

    add-float v12, v18, v16

    .line 536
    .local v12, "newStartValue":F
    const/16 v18, 0x0

    aget-object v18, v17, v18

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v12, v19, v20

    const/16 v20, 0x1

    aput v9, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 537
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x9120024

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 538
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x9120019

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 539
    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 540
    return-void

    .line 543
    .end local v12    # "newStartValue":F
    .end local v16    # "relativeDiff":F
    .end local v17    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 544
    return-void

    .line 548
    :cond_2
    sget-object v18, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    .line 549
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v20

    const/16 v21, 0x0

    aput v20, v19, v21

    const/16 v20, 0x1

    aput v9, v19, v20

    .line 548
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 551
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    sget-object v18, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 550
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 552
    .local v5, "customInterpolator":Landroid/view/animation/Interpolator;
    if-eqz v5, :cond_6

    move-object v7, v5

    .line 554
    .local v7, "interpolator":Landroid/view/animation/Interpolator;
    :goto_0
    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 555
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v13}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v10

    .line 556
    .local v10, "newDuration":J
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 557
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_4

    if-eqz v13, :cond_3

    .line 558
    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v18

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_4

    .line 559
    :cond_3
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 561
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v8

    .line 562
    .local v8, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v8, :cond_5

    .line 563
    invoke-virtual {v4, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 566
    :cond_5
    new-instance v18, Lcom/android/systemui/statusbar/stack/ViewState$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/ViewState$6;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 574
    invoke-static {v4, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 575
    const v18, 0x912000e

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 576
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x9120024

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 577
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x9120019

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 519
    return-void

    .line 553
    .end local v7    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v8    # "listener":Landroid/animation/AnimatorListenerAdapter;
    .end local v10    # "newDuration":J
    :cond_6
    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto/16 :goto_0
.end method

.method private startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 22
    .param p1, "child"    # Landroid/view/View;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    .line 673
    const v18, 0x9120025

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    .line 674
    .local v15, "previousStartValue":Ljava/lang/Float;
    const v18, 0x912001a

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    .line 675
    .local v14, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 676
    .local v9, "newEndValue":F
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v18

    cmpl-float v18, v18, v9

    if-nez v18, :cond_0

    .line 677
    return-void

    .line 679
    :cond_0
    const v18, 0x912000f

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/animation/ObjectAnimator;

    .line 680
    .local v13, "previousAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v6

    .line 681
    .local v6, "filter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->shouldAnimateY(Landroid/view/View;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 683
    if-eqz v13, :cond_1

    .line 686
    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .line 687
    .local v17, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v18

    sub-float v16, v9, v18

    .line 688
    .local v16, "relativeDiff":F
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v18

    add-float v12, v18, v16

    .line 689
    .local v12, "newStartValue":F
    const/16 v18, 0x0

    aget-object v18, v17, v18

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v12, v19, v20

    const/16 v20, 0x1

    aput v9, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 690
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x9120025

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 691
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x912001a

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 692
    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 693
    return-void

    .line 696
    .end local v12    # "newStartValue":F
    .end local v16    # "relativeDiff":F
    .end local v17    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 697
    return-void

    .line 701
    :cond_2
    sget-object v18, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    .line 702
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v20

    const/16 v21, 0x0

    aput v20, v19, v21

    const/16 v20, 0x1

    aput v9, v19, v20

    .line 701
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 704
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    sget-object v18, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 703
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 705
    .local v5, "customInterpolator":Landroid/view/animation/Interpolator;
    if-eqz v5, :cond_6

    move-object v7, v5

    .line 707
    .local v7, "interpolator":Landroid/view/animation/Interpolator;
    :goto_0
    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 708
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v13}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v10

    .line 709
    .local v10, "newDuration":J
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 710
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_4

    if-eqz v13, :cond_3

    .line 711
    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v18

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_4

    .line 712
    :cond_3
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 714
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v8

    .line 715
    .local v8, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v8, :cond_5

    .line 716
    invoke-virtual {v4, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 719
    :cond_5
    new-instance v18, Lcom/android/systemui/statusbar/stack/ViewState$11;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/ViewState$11;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 729
    invoke-static {v4, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 730
    const v18, 0x912000f

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 731
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x9120025

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 732
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x912001a

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 672
    return-void

    .line 706
    .end local v7    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v8    # "listener":Landroid/animation/AnimatorListenerAdapter;
    .end local v10    # "newDuration":J
    :cond_6
    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto/16 :goto_0
.end method

.method private startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 20
    .param p1, "child"    # Landroid/view/View;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    .line 459
    const v15, 0x9120026

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    .line 460
    .local v11, "previousStartValue":Ljava/lang/Float;
    const v15, 0x912001b

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    .line 461
    .local v10, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    .line 462
    .local v5, "newEndValue":F
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v15

    cmpl-float v15, v15, v5

    if-nez v15, :cond_0

    .line 463
    return-void

    .line 465
    :cond_0
    const v15, 0x9120010

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    .line 466
    .local v9, "previousAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v3

    .line 467
    .local v3, "filter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    iget-boolean v15, v3, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    if-nez v15, :cond_2

    .line 469
    if-eqz v9, :cond_1

    .line 472
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 473
    .local v14, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v15

    sub-float v12, v5, v15

    .line 474
    .local v12, "relativeDiff":F
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v15

    add-float v8, v15, v12

    .line 475
    .local v8, "newStartValue":F
    const/4 v15, 0x0

    aget-object v15, v14, v15

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v8, v16, v17

    const/16 v17, 0x1

    aput v5, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 476
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const v16, 0x9120026

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 477
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const v16, 0x912001b

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 478
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 479
    return-void

    .line 482
    .end local v8    # "newStartValue":F
    .end local v12    # "relativeDiff":F
    .end local v14    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationZ(F)V

    .line 486
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationZ()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v13, 0x0

    .line 487
    .local v13, "startValue":F
    :goto_0
    sget-object v15, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    .line 488
    const/16 v17, 0x0

    aput v13, v16, v17

    const/16 v17, 0x1

    aput v5, v16, v17

    .line 487
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 489
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    sget-object v15, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 490
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v9}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    .line 491
    .local v6, "newDuration":J
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 492
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_4

    if-eqz v9, :cond_3

    .line 493
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v15

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-nez v15, :cond_4

    .line 494
    :cond_3
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 496
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v4

    .line 497
    .local v4, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v4, :cond_5

    .line 498
    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 501
    :cond_5
    new-instance v15, Lcom/android/systemui/statusbar/stack/ViewState$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState$5;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 509
    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 510
    const v15, 0x9120010

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 511
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationZ()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const v16, 0x9120026

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 512
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const v16, 0x912001b

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 458
    return-void

    .line 486
    .end local v2    # "animator":Landroid/animation/ObjectAnimator;
    .end local v4    # "listener":Landroid/animation/AnimatorListenerAdapter;
    .end local v6    # "newDuration":J
    .end local v13    # "startValue":F
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationZ()F

    move-result v13

    .restart local v13    # "startValue":F
    goto/16 :goto_0
.end method

.method private updateAlphaAnimation(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 368
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 367
    return-void
.end method

.method private updateAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;F)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "property"    # Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;
    .param p3, "endValue"    # F

    .prologue
    .line 455
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-static {p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 454
    return-void
.end method

.method private updateAnimationX(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 516
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 515
    return-void
.end method

.method private updateAnimationY(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 581
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 580
    return-void
.end method

.method private updateAnimationZ(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 450
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 449
    return-void
.end method


# virtual methods
.method protected abortAnimation(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animatorTag"    # I

    .prologue
    .line 754
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 755
    .local v0, "previousAnimator":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 753
    :cond_0
    return-void
.end method

.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animationProperties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    const/4 v3, 0x1

    .line 298
    .local v3, "wasVisible":Z
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 299
    .local v0, "alpha":F
    if-nez v3, :cond_1

    cmpl-float v4, v0, v6

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_1

    .line 300
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    if-eqz v4, :cond_4

    .line 303
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    .line 304
    .local v2, "childAlpha":F
    iget v4, p0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_5

    const/4 v1, 0x1

    .line 305
    .local v1, "alphaChanging":Z
    :goto_2
    instance-of v4, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v4, :cond_2

    move-object v4, p1

    .line 307
    check-cast v4, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->willBeGone()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    :goto_3
    and-int/2addr v1, v4

    .line 311
    .end local v1    # "alphaChanging":Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_7

    .line 312
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 318
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_8

    .line 319
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 325
    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->paddingTop:I

    if-eq v4, v5, :cond_9

    .line 326
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->startPaddingTopAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 332
    :goto_6
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->paddingBottom:I

    if-eq v4, v5, :cond_a

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->startPaddingBottomAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 339
    :goto_7
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_b

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 346
    :goto_8
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_c

    .line 347
    sget-object v4, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    invoke-static {p1, v4, v5, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 353
    :goto_9
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_d

    .line 354
    sget-object v4, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    invoke-static {p1, v4, v5, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 360
    :goto_a
    if-eqz v1, :cond_e

    .line 361
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 296
    :goto_b
    return-void

    .line 297
    .end local v0    # "alpha":F
    .end local v2    # "childAlpha":F
    .end local v3    # "wasVisible":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "wasVisible":Z
    goto/16 :goto_0

    .line 300
    .restart local v0    # "alpha":F
    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    if-nez v4, :cond_1

    .line 301
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 304
    .restart local v2    # "childAlpha":F
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "alphaChanging":Z
    goto/16 :goto_2

    .line 307
    :cond_6
    const/4 v4, 0x1

    goto :goto_3

    .line 314
    .end local v1    # "alphaChanging":Z
    :cond_7
    const v4, 0x912000e

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_4

    .line 321
    :cond_8
    const v4, 0x912000f

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_5

    .line 328
    :cond_9
    const v4, 0x9120011

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_6

    .line 335
    :cond_a
    const v4, 0x9120012

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_7

    .line 342
    :cond_b
    const v4, 0x9120010

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_8

    .line 349
    :cond_c
    sget-object v4, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;->getAnimatorTag()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_9

    .line 356
    :cond_d
    sget-object v4, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;->getAnimatorTag()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_a

    .line 363
    :cond_e
    const v4, 0x9120013

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_b
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 24
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 161
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 163
    return-void

    .line 167
    :cond_0
    const v20, 0x912000e

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v10

    .line 168
    .local v10, "animatingX":Z
    if-eqz v10, :cond_b

    .line 169
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimationX(Landroid/view/View;)V

    .line 175
    :cond_1
    :goto_0
    const v20, 0x912000f

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v11

    .line 176
    .local v11, "animatingY":Z
    if-eqz v11, :cond_c

    .line 177
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimationY(Landroid/view/View;)V

    .line 183
    :cond_2
    :goto_1
    const v20, 0x9120011

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v7

    .line 184
    .local v7, "animatingPaddingTop":Z
    if-eqz v7, :cond_d

    .line 185
    sget-object v20, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/ViewState;->startPaddingTopAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 194
    :cond_3
    :goto_2
    const v20, 0x9120012

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v6

    .line 195
    .local v6, "animatingPaddingBottom":Z
    if-eqz v6, :cond_e

    .line 196
    sget-object v20, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/ViewState;->startPaddingBottomAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 205
    :cond_4
    :goto_3
    const v20, 0x9120010

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v12

    .line 206
    .local v12, "animatingZ":Z
    if-eqz v12, :cond_f

    .line 207
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimationZ(Landroid/view/View;)V

    .line 213
    :cond_5
    :goto_4
    sget-object v20, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;)Z

    move-result v8

    .line 214
    .local v8, "animatingScaleX":Z
    if-eqz v8, :cond_10

    .line 215
    sget-object v20, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;F)V

    .line 221
    :cond_6
    :goto_5
    sget-object v20, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;)Z

    move-result v9

    .line 222
    .local v9, "animatingScaleY":Z
    if-eqz v9, :cond_11

    .line 223
    sget-object v20, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;F)V

    .line 228
    :cond_7
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v19

    .line 229
    .local v19, "oldVisibility":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_12

    .line 230
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    move/from16 v20, v0

    if-eqz v20, :cond_13

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_8

    if-eqz v19, :cond_13

    :cond_8
    const/4 v14, 0x1

    .line 231
    .local v14, "becomesInvisible":Z
    :goto_7
    const v20, 0x9120013

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v5

    .line 232
    .local v5, "animatingAlpha":Z
    if-eqz v5, :cond_14

    .line 233
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAlphaAnimation(Landroid/view/View;)V

    .line 252
    :cond_9
    :goto_8
    if-eqz v14, :cond_1a

    const/16 v18, 0x4

    .line 253
    .local v18, "newVisibility":I
    :goto_9
    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    .line 254
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/systemui/statusbar/ExpandableView;

    move/from16 v20, v0

    if-eqz v20, :cond_1b

    move-object/from16 v20, p1

    check-cast v20, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/ExpandableView;->willBeGone()Z

    move-result v20

    if-eqz v20, :cond_1b

    .line 160
    :cond_a
    :goto_a
    return-void

    .line 170
    .end local v5    # "animatingAlpha":Z
    .end local v6    # "animatingPaddingBottom":Z
    .end local v7    # "animatingPaddingTop":Z
    .end local v8    # "animatingScaleX":Z
    .end local v9    # "animatingScaleY":Z
    .end local v11    # "animatingY":Z
    .end local v12    # "animatingZ":Z
    .end local v14    # "becomesInvisible":Z
    .end local v18    # "newVisibility":I
    .end local v19    # "oldVisibility":I
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_1

    .line 171
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_0

    .line 178
    .restart local v11    # "animatingY":Z
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_2

    .line 179
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_1

    .line 187
    .restart local v7    # "animatingPaddingTop":Z
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->paddingTop:I

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->paddingTop:I

    move/from16 v21, v0

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingRight()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v23

    .line 188
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2

    .line 198
    .restart local v6    # "animatingPaddingBottom":Z
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->paddingBottom:I

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingRight()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->paddingBottom:I

    move/from16 v23, v0

    .line 199
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3

    .line 208
    .restart local v12    # "animatingZ":Z
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationZ()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_5

    .line 209
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    goto/16 :goto_4

    .line 216
    .restart local v8    # "animatingScaleX":Z
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_6

    .line 217
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    goto/16 :goto_5

    .line 224
    .restart local v9    # "animatingScaleY":Z
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_7

    .line 225
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_6

    .line 229
    .restart local v19    # "oldVisibility":I
    :cond_12
    const/4 v14, 0x1

    .restart local v14    # "becomesInvisible":Z
    goto/16 :goto_7

    .line 230
    .end local v14    # "becomesInvisible":Z
    :cond_13
    const/4 v14, 0x0

    .restart local v14    # "becomesInvisible":Z
    goto/16 :goto_7

    .line 234
    .restart local v5    # "animatingAlpha":Z
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_9

    .line 236
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    move/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v20, v20, v21

    if-nez v20, :cond_17

    const/4 v13, 0x1

    .line 237
    .local v13, "becomesFullyVisible":Z
    :goto_b
    if-nez v14, :cond_15

    if-eqz v13, :cond_18

    :cond_15
    const/16 v17, 0x0

    .line 239
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayerType()I

    move-result v15

    .line 240
    .local v15, "layerType":I
    if-eqz v17, :cond_19

    .line 241
    const/16 v16, 0x2

    .line 243
    .local v16, "newLayerType":I
    :goto_d
    move/from16 v0, v16

    if-eq v15, v0, :cond_16

    .line 244
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 248
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_8

    .line 236
    .end local v13    # "becomesFullyVisible":Z
    .end local v15    # "layerType":I
    .end local v16    # "newLayerType":I
    :cond_17
    const/4 v13, 0x0

    .restart local v13    # "becomesFullyVisible":Z
    goto :goto_b

    .line 238
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v17

    .local v17, "newLayerTypeIsHardware":Z
    goto :goto_c

    .line 242
    .end local v17    # "newLayerTypeIsHardware":Z
    .restart local v15    # "layerType":I
    :cond_19
    const/16 v16, 0x0

    goto :goto_d

    .line 252
    .end local v13    # "becomesFullyVisible":Z
    .end local v15    # "layerType":I
    :cond_1a
    const/16 v18, 0x0

    goto/16 :goto_9

    .line 256
    .restart local v18    # "newVisibility":I
    :cond_1b
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a
.end method

.method public cancelAnimations(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 817
    const v1, 0x912000e

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 818
    .local v0, "animator":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 821
    :cond_0
    const v1, 0x912000f

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "animator":Landroid/animation/Animator;
    check-cast v0, Landroid/animation/Animator;

    .line 822
    .restart local v0    # "animator":Landroid/animation/Animator;
    if-eqz v0, :cond_1

    .line 823
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 825
    :cond_1
    const v1, 0x9120010

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "animator":Landroid/animation/Animator;
    check-cast v0, Landroid/animation/Animator;

    .line 826
    .restart local v0    # "animator":Landroid/animation/Animator;
    if-eqz v0, :cond_2

    .line 827
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 829
    :cond_2
    const v1, 0x9120013

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "animator":Landroid/animation/Animator;
    check-cast v0, Landroid/animation/Animator;

    .line 830
    .restart local v0    # "animator":Landroid/animation/Animator;
    if-eqz v0, :cond_3

    .line 831
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 816
    :cond_3
    return-void
.end method

.method public copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V
    .locals 1
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/ViewState;

    .prologue
    .line 132
    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 133
    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    .line 134
    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 135
    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    .line 136
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    .line 137
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    .line 138
    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    .line 139
    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    .line 140
    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->paddingTop:I

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->paddingTop:I

    .line 141
    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->paddingBottom:I

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->paddingBottom:I

    .line 131
    return-void
.end method

.method public initFrom(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->paddingTop:I

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->paddingBottom:I

    .line 144
    return-void

    :cond_0
    move v0, v2

    .line 149
    goto :goto_0

    :cond_1
    move v1, v2

    .line 150
    goto :goto_1
.end method

.method public isAnimating(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 262
    const v0, 0x912000e

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    return v1

    .line 265
    :cond_0
    const v0, 0x912000f

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    return v1

    .line 268
    :cond_1
    const v0, 0x9120010

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    return v1

    .line 271
    :cond_2
    const v0, 0x9120013

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    return v1

    .line 274
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 275
    return v1

    .line 277
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 278
    return v1

    .line 280
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method protected onYTranslationAnimationFinished(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 736
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    if-eqz v0, :cond_1

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
