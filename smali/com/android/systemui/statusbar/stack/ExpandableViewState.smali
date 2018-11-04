.class public Lcom/android/systemui/statusbar/stack/ExpandableViewState;
.super Lcom/android/systemui/statusbar/stack/ViewState;
.source "ExpandableViewState.java"


# instance fields
.field public belowSpeedBump:Z

.field public clipTopAmount:I

.field public dark:Z

.field public dimmed:Z

.field public fullyShown:Z

.field public height:I

.field public hideSensitive:Z

.field public inShelf:Z

.field public location:I

.field public notGoneIndex:I

.field public shadowAlpha:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    return-void
.end method

.method public static getFinalActualHeight(Lcom/android/systemui/statusbar/ExpandableView;)I
    .locals 2
    .param p0, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 449
    if-nez p0, :cond_0

    .line 450
    const/4 v1, 0x0

    return v1

    .line 452
    :cond_0
    const v1, 0x9120017

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 453
    .local v0, "heightAnimator":Landroid/animation/ValueAnimator;
    if-nez v0, :cond_1

    .line 454
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    return v1

    .line 456
    :cond_1
    const v1, 0x9120022

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private startHeightAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 18
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    .line 239
    const v14, 0x912002d

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 240
    .local v11, "previousStartValue":Ljava/lang/Integer;
    const v14, 0x9120022

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 241
    .local v10, "previousEndValue":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 242
    .local v5, "newEndValue":I
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v14, v5, :cond_0

    .line 243
    return-void

    .line 245
    :cond_0
    const v14, 0x9120017

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ValueAnimator;

    .line 246
    .local v9, "previousAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v3

    .line 247
    .local v3, "filter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    iget-boolean v14, v3, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    if-nez v14, :cond_2

    .line 249
    if-eqz v9, :cond_1

    .line 252
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 253
    .local v13, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sub-int v12, v5, v14

    .line 254
    .local v12, "relativeDiff":I
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int v8, v14, v12

    .line 255
    .local v8, "newStartValue":I
    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 256
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x912002d

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 257
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x9120022

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 258
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 259
    return-void

    .line 262
    .end local v8    # "newStartValue":I
    .end local v12    # "relativeDiff":I
    .end local v13    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 263
    return-void

    .line 267
    :cond_2
    const/4 v14, 0x2

    new-array v14, v14, [I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v15

    const/16 v16, 0x0

    aput v15, v14, v16

    const/4 v15, 0x1

    aput v5, v14, v15

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 268
    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v14, Lcom/android/systemui/statusbar/stack/ExpandableViewState$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$1;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 275
    sget-object v14, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 276
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v14, v15, v9}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    .line 277
    .local v6, "newDuration":J
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 278
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    .line 279
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_4

    .line 280
    :cond_3
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v2, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 282
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v4

    .line 283
    .local v4, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v4, :cond_5

    .line 284
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 287
    :cond_5
    new-instance v14, Lcom/android/systemui/statusbar/stack/ExpandableViewState$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$2;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 312
    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 313
    const v14, 0x9120017

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 314
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x912002d

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 315
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x9120022

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 316
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeightAnimating(Z)V

    .line 238
    return-void
.end method

.method private startInsetAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 18
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    .line 383
    const v14, 0x912002c

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 384
    .local v11, "previousStartValue":Ljava/lang/Integer;
    const v14, 0x9120021

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 385
    .local v10, "previousEndValue":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    .line 386
    .local v5, "newEndValue":I
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v14, v5, :cond_0

    .line 387
    return-void

    .line 389
    :cond_0
    const v14, 0x9120016

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ValueAnimator;

    .line 390
    .local v9, "previousAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v3

    .line 391
    .local v3, "filter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    iget-boolean v14, v3, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    if-nez v14, :cond_2

    .line 393
    if-eqz v9, :cond_1

    .line 396
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 397
    .local v13, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sub-int v12, v5, v14

    .line 398
    .local v12, "relativeDiff":I
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int v8, v14, v12

    .line 399
    .local v8, "newStartValue":I
    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 400
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x912002c

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 401
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x9120021

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 402
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 403
    return-void

    .line 406
    .end local v8    # "newStartValue":I
    .end local v12    # "relativeDiff":I
    .end local v13    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    .line 407
    return-void

    .line 411
    :cond_2
    const/4 v14, 0x2

    new-array v14, v14, [I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v15

    const/16 v16, 0x0

    aput v15, v14, v16

    const/4 v15, 0x1

    aput v5, v14, v15

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 412
    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v14, Lcom/android/systemui/statusbar/stack/ExpandableViewState$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$5;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 418
    sget-object v14, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 419
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v14, v15, v9}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    .line 420
    .local v6, "newDuration":J
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 421
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    .line 422
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_4

    .line 423
    :cond_3
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v2, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 425
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v4

    .line 426
    .local v4, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v4, :cond_5

    .line 427
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 430
    :cond_5
    new-instance v14, Lcom/android/systemui/statusbar/stack/ExpandableViewState$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$6;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 438
    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 439
    const v14, 0x9120016

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 440
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x912002c

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 441
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x9120021

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 382
    return-void
.end method

.method private startShadowAlphaAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 18
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    .line 321
    const v14, 0x912002e

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    .line 322
    .local v11, "previousStartValue":Ljava/lang/Float;
    const v14, 0x9120023

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    .line 323
    .local v10, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    .line 324
    .local v5, "newEndValue":F
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_0

    .line 325
    return-void

    .line 327
    :cond_0
    const v14, 0x9120018

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ValueAnimator;

    .line 328
    .local v9, "previousAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v3

    .line 329
    .local v3, "filter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    iget-boolean v14, v3, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha:Z

    if-nez v14, :cond_2

    .line 331
    if-eqz v9, :cond_1

    .line 334
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 335
    .local v13, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float v12, v5, v14

    .line 336
    .local v12, "relativeDiff":F
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float v8, v14, v12

    .line 337
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

    .line 338
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x912002e

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 339
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x9120023

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 340
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 341
    return-void

    .line 344
    .end local v8    # "newStartValue":F
    .end local v12    # "relativeDiff":F
    .end local v13    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setShadowAlpha(F)V

    .line 345
    return-void

    .line 349
    :cond_2
    const/4 v14, 0x2

    new-array v14, v14, [F

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v15

    const/16 v16, 0x0

    aput v15, v14, v16

    const/4 v15, 0x1

    aput v5, v14, v15

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 350
    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v14, Lcom/android/systemui/statusbar/stack/ExpandableViewState$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$3;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 356
    sget-object v14, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 357
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v14, v15, v9}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    .line 358
    .local v6, "newDuration":J
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 359
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    .line 360
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_4

    .line 361
    :cond_3
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v2, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 363
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v4

    .line 364
    .local v4, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v4, :cond_5

    .line 365
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 368
    :cond_5
    new-instance v14, Lcom/android/systemui/statusbar/stack/ExpandableViewState$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$4;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 376
    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 377
    const v14, 0x9120018

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 378
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x912002e

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 379
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x9120023

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 320
    return-void
.end method


# virtual methods
.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    .line 187
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 188
    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-nez v2, :cond_0

    .line 189
    return-void

    :cond_0
    move-object v1, p1

    .line 191
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 192
    .local v1, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v0

    .line 195
    .local v0, "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    iget v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 196
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startHeightAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 202
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    .line 203
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startShadowAlphaAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 209
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 210
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startInsetAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 216
    :goto_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setDimmed(ZZ)V

    .line 219
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setBelowSpeedBump(Z)V

    .line 222
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    .line 223
    iget-wide v4, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    iget-wide v6, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    .line 222
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitive(ZZJJ)V

    .line 226
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    iget-wide v4, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setDark(ZZJ)V

    .line 228
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->wasAdded(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    if-eqz v2, :cond_6

    .line 232
    :cond_1
    :goto_3
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->isInShelf()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    if-eqz v2, :cond_2

    .line 233
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTransformingInShelf(Z)V

    .line 235
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setInShelf(Z)V

    .line 186
    return-void

    .line 198
    :cond_3
    const v2, 0x9120017

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_0

    .line 205
    :cond_4
    const v2, 0x9120018

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_1

    .line 212
    :cond_5
    const v2, 0x9120016

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_2

    .line 229
    :cond_6
    iget-wide v2, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    iget-wide v4, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/ExpandableView;->performAddAnimation(JJLandroid/animation/AnimatorListenerAdapter;)V

    goto :goto_3
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 141
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 142
    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v2, :cond_3

    move-object v1, p1

    .line 143
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 145
    .local v1, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v0

    .line 146
    .local v0, "height":I
    iget v8, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 149
    .local v8, "newHeight":I
    if-eq v0, v8, :cond_0

    .line 150
    invoke-virtual {v1, v8, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 153
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v11

    .line 154
    .local v11, "shadowAlpha":F
    iget v9, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    .line 157
    .local v9, "newShadowAlpha":F
    cmpl-float v2, v11, v9

    if-eqz v2, :cond_1

    .line 158
    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/ExpandableView;->setShadowAlpha(F)V

    .line 162
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setDimmed(ZZ)V

    .line 166
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    move-wide v6, v4

    .line 165
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitive(ZZJJ)V

    .line 169
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setBelowSpeedBump(Z)V

    .line 172
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setDark(ZZJ)V

    .line 175
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v2

    int-to-float v10, v2

    .line 176
    .local v10, "oldClipTopAmount":F
    iget v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    int-to-float v2, v2

    cmpl-float v2, v10, v2

    if-eqz v2, :cond_2

    .line 177
    iget v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    .line 180
    :cond_2
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setTransformingInShelf(Z)V

    .line 181
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setInShelf(Z)V

    .line 140
    .end local v0    # "height":I
    .end local v1    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v8    # "newHeight":I
    .end local v9    # "newShadowAlpha":F
    .end local v10    # "oldClipTopAmount":F
    .end local v11    # "shadowAlpha":F
    :cond_3
    return-void
.end method

.method public copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V
    .locals 2
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/ViewState;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 122
    instance-of v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 123
    check-cast v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    .line 124
    .local v0, "svs":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 125
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    .line 126
    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    .line 127
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    .line 128
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    .line 129
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 130
    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    .line 131
    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    .line 132
    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    .line 120
    .end local v0    # "svs":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_0
    return-void
.end method
