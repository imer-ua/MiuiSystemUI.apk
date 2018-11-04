.class public Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;
.super Ljava/lang/Object;
.source "KeyguardMoveHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$1;,
        Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$2;,
        Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;
    }
.end annotation


# instance fields
.field private mAnimationEndRunnable:Ljava/lang/Runnable;

.field private final mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

.field private mCanShowGxzw:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentScreen:I

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHintGrowAmount:I

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mKeyguardHorizontalGestureSlop:I

.field private mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mMinBackgroundRadius:I

.field private mMinFlingVelocity:I

.field private mMinTranslationAmount:I

.field private mMotionCancelled:Z

.field private mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mSwipeAnimator:Landroid/animation/Animator;

.field private mSwipingInProgress:Z

.field private mTouchSlop:I

.field private mTouchTargetSize:I

.field private mTranslation:F

.field private mTranslationOnDown:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;)Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTranslation:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipeAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipingInProgress:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTranslation:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;F)F
    .locals 1
    .param p1, "circleSize"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getTranslationFromRadius(F)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;FZZZ)V
    .locals 0
    .param p1, "translation"    # F
    .param p2, "isReset"    # Z
    .param p3, "animateReset"    # Z
    .param p4, "force"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->setTranslation(FZZZ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;ZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "right"    # Z
    .param p2, "onFinishedListener"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->startUnlockHintAnimationPhase2(ZLjava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;Landroid/content/Context;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    .line 87
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCanShowGxzw:Z

    .line 89
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 96
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    .line 104
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    .line 105
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    .line 106
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f031c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mKeyguardHorizontalGestureSlop:I

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->initIcons()V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v1

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v1

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->initDimens()V

    .line 103
    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 309
    :cond_0
    return-void
.end method

.method private endMotion(ZFF)V
    .locals 2
    .param p1, "forceSnapBack"    # Z
    .param p2, "lastX"    # F
    .param p3, "lastY"    # F

    .prologue
    const/4 v1, 0x0

    .line 222
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipingInProgress:Z

    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->flingWithCurrentVelocity(ZFF)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 227
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 221
    :cond_1
    return-void
.end method

.method private fling(FZZ)V
    .locals 6
    .param p1, "vel"    # F
    .param p2, "snapBack"    # Z
    .param p3, "right"    # Z

    .prologue
    const/4 v5, 0x1

    .line 340
    if-eqz p3, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v2

    neg-float v1, v2

    .line 341
    .local v1, "target":F
    :goto_0
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    .line 343
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTranslation:F

    const/4 v4, 0x0

    aput v3, v2, v4

    aput v1, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 344
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$6;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$6;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 353
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 354
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$7;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$7;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;ZZF)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 363
    if-eqz p2, :cond_1

    .line 364
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->reset(Z)V

    .line 366
    :cond_1
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 367
    new-instance v2, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 368
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 369
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipeAnimator:Landroid/animation/Animator;

    .line 370
    if-eqz p2, :cond_2

    .line 371
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->onSwipingAborted()V

    .line 339
    :cond_2
    return-void

    .line 340
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "target":F
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v1

    .restart local v1    # "target":F
    goto :goto_0
.end method

.method private flingWithCurrentVelocity(ZFF)V
    .locals 8
    .param p1, "forceSnapBack"    # Z
    .param p2, "lastX"    # F
    .param p3, "lastY"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 316
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getCurrentVelocity(FF)F

    move-result v1

    .line 319
    .local v1, "vel":F
    const/4 v0, 0x0

    .line 320
    .local v0, "snapBack":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->needsAntiFalsing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 321
    if-nez v0, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v5}, Lcom/android/systemui/classifier/FalsingManager;->isFalseTouch()Z

    move-result v0

    .line 324
    .end local v0    # "snapBack":Z
    :cond_0
    :goto_0
    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTranslation:F

    mul-float/2addr v5, v1

    cmpg-float v5, v5, v7

    if-gez v5, :cond_5

    const/4 v2, 0x1

    .line 325
    .local v2, "velIsInWrongDirection":Z
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    if-nez v2, :cond_2

    :cond_1
    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mInitialTouchX:F

    sub-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mKeyguardHorizontalGestureSlop:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    :cond_2
    move v5, v3

    :goto_2
    or-int/2addr v0, v5

    .line 326
    .local v0, "snapBack":Z
    xor-int v5, v0, v2

    if-eqz v5, :cond_3

    const/4 v1, 0x0

    .line 327
    :cond_3
    if-nez v0, :cond_7

    .end local p1    # "forceSnapBack":Z
    :goto_3
    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTranslation:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_8

    :goto_4
    invoke-direct {p0, v1, p1, v3}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->fling(FZZ)V

    .line 315
    return-void

    .line 321
    .end local v2    # "velIsInWrongDirection":Z
    .local v0, "snapBack":Z
    .restart local p1    # "forceSnapBack":Z
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 324
    .end local v0    # "snapBack":Z
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "velIsInWrongDirection":Z
    goto :goto_1

    :cond_6
    move v5, v4

    .line 325
    goto :goto_2

    .local v0, "snapBack":Z
    :cond_7
    move p1, v3

    .line 327
    goto :goto_3

    .end local p1    # "forceSnapBack":Z
    :cond_8
    move v3, v4

    goto :goto_4
.end method

.method private getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;
    .locals 5
    .param p1, "right"    # Z
    .param p2, "radius"    # I

    .prologue
    .line 296
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 297
    .local v1, "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getCircleRadius()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    int-to-float v3, p2

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 298
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$5;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 306
    return-object v0

    .line 296
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .restart local v1    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    goto :goto_0
.end method

.method private getCurrentVelocity(FF)F
    .locals 2
    .param p1, "lastX"    # F
    .param p2, "lastY"    # F

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 558
    const/4 v0, 0x0

    return v0

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 561
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    return v0
.end method

.method private getScale(FLcom/android/systemui/statusbar/KeyguardAffordanceView;)F
    .locals 3
    .param p1, "alpha"    # F
    .param p2, "icon"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .prologue
    .line 538
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v1

    div-float v1, p1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    .line 539
    const v2, 0x3f4ccccd    # 0.8f

    .line 538
    add-float v0, v1, v2

    .line 540
    .local v0, "scale":F
    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method private getScreenWidth()F
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    return v0
.end method

.method private getTranslationFromRadius(F)F
    .locals 4
    .param p1, "circleSize"    # F

    .prologue
    const/4 v1, 0x0

    .line 499
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mMinBackgroundRadius:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    .line 500
    const/high16 v3, 0x3e800000    # 0.25f

    .line 499
    div-float v0, v2, v3

    .line 501
    .local v0, "translation":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    :cond_0
    return v1
.end method

.method private initDimens()V
    .locals 4

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 115
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTouchSlop:I

    .line 116
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mMinFlingVelocity:I

    .line 117
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 118
    const v2, 0x90f015a

    .line 117
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mMinTranslationAmount:I

    .line 119
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 120
    const v2, 0x90f015b

    .line 119
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mMinBackgroundRadius:I

    .line 121
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 122
    const v2, 0x90f015c

    .line 121
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTouchTargetSize:I

    .line 124
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90f015d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 123
    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mHintGrowAmount:I

    .line 125
    new-instance v1, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 126
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 113
    return-void
.end method

.method private initIcons()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 129
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 553
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 549
    return-void
.end method

.method private isOnIcon(Landroid/view/View;FF)Z
    .locals 8
    .param p1, "icon"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float v2, v4, v5

    .line 216
    .local v2, "iconX":F
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float v3, v4, v5

    .line 217
    .local v3, "iconY":F
    sub-float v4, p2, v2

    float-to-double v4, v4

    sub-float v6, p3, v3

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 218
    .local v0, "distance":D
    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTouchTargetSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private reset(ZZZ)V
    .locals 6
    .param p1, "animate"    # Z
    .param p2, "force"    # Z
    .param p3, "completeReset"    # Z

    .prologue
    const/4 v2, 0x1

    .line 578
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->cancelAnimation()V

    .line 579
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->setTranslation(FZZZZ)V

    .line 580
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mMotionCancelled:Z

    .line 581
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipingInProgress:Z

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->onSwipingAborted()V

    .line 583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipingInProgress:Z

    .line 577
    :cond_0
    return-void
.end method

.method private setCanShowGxzw(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 629
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCanShowGxzw:Z

    .line 630
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->updateGxzwState()V

    .line 628
    :cond_0
    return-void
.end method

.method private setTranslation(FZZZ)V
    .locals 6
    .param p1, "translation"    # F
    .param p2, "isReset"    # Z
    .param p3, "animateReset"    # Z
    .param p4, "force"    # Z

    .prologue
    .line 377
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->setTranslation(FZZZZ)V

    .line 376
    return-void
.end method

.method private setTranslation(FZZZZ)V
    .locals 13
    .param p1, "translation"    # F
    .param p2, "isReset"    # Z
    .param p3, "animateReset"    # Z
    .param p4, "force"    # Z
    .param p5, "completeReset"    # Z

    .prologue
    .line 382
    move v5, p1

    .line 383
    .local v5, "realTranslation":F
    const/4 v4, 0x0

    .line 384
    .local v4, "leftViewBgAlpha":F
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->getLeftView()Landroid/view/View;

    move-result-object v2

    .line 385
    .local v2, "leftView":Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->getRightView()Landroid/view/View;

    move-result-object v6

    .line 386
    .local v6, "rightView":Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->getLeftViewBg()Landroid/view/View;

    move-result-object v3

    .line 387
    .local v3, "leftViewBg":Landroid/view/View;
    if-eqz p5, :cond_2

    .line 389
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v9

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    .line 390
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->setCanShowGxzw(Z)V

    .line 392
    :cond_0
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    .line 393
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v9

    neg-float v9, v9

    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 394
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 395
    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 396
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->animateShowLeftRightIcon()V

    .line 397
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->getLockScreenView()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "view$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 398
    .local v7, "view":Landroid/view/View;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 399
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v7, v9}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 401
    .end local v7    # "view":Landroid/view/View;
    :cond_1
    return-void

    .line 403
    .end local v8    # "view$iterator":Ljava/util/Iterator;
    :cond_2
    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    const/4 v9, 0x0

    cmpl-float v9, p1, v9

    if-lez v9, :cond_5

    .line 404
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 405
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v9

    div-float v4, p1, v9

    .line 410
    :cond_3
    :goto_1
    const/4 v9, 0x0

    cmpg-float v9, v4, v9

    if-gez v9, :cond_6

    const/4 v4, 0x0

    .line 412
    :cond_4
    :goto_2
    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    if-nez v9, :cond_8

    .line 413
    const/4 v9, 0x0

    cmpl-float v9, p1, v9

    if-lez v9, :cond_7

    .line 414
    return-void

    .line 407
    :cond_5
    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    if-nez v9, :cond_3

    .line 408
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v9

    div-float v9, p1, v9

    const/high16 v10, 0x3f800000    # 1.0f

    add-float v4, v10, v9

    goto :goto_1

    .line 410
    :cond_6
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v4, v9

    if-lez v9, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    .line 417
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v9

    add-float v5, p1, v9

    .line 421
    :cond_8
    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTranslation:F

    cmpl-float v9, p1, v9

    if-nez v9, :cond_9

    if-nez p2, :cond_9

    if-eqz p4, :cond_10

    .line 422
    :cond_9
    if-nez p3, :cond_a

    .line 423
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v9

    sub-float v9, v5, v9

    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 424
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v9

    add-float/2addr v9, v5

    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 425
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 426
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->getLockScreenView()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "view$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 427
    .restart local v7    # "view":Landroid/view/View;
    invoke-virtual {v7, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 428
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v4

    invoke-virtual {v7, v9}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    .line 432
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "view$iterator":Ljava/util/Iterator;
    :cond_a
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 433
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v11

    sub-float v11, v5, v11

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v11

    add-float/2addr v11, v5

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v6, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    const-string/jumbo v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x1

    aput v4, v10, v11

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->getLockScreenView()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "view$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 438
    .restart local v7    # "view":Landroid/view/View;
    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x1

    aput v5, v10, v11

    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    instance-of v9, v7, Lcom/android/keyguard/wallpaper/WallPaperDesView;

    if-nez v9, :cond_c

    instance-of v9, v7, Lcom/android/keyguard/LoadingContainer;

    if-nez v9, :cond_c

    .line 442
    instance-of v9, v7, Lcom/android/keyguard/MiuiKeyguardClock;

    .line 441
    if-eqz v9, :cond_d

    .line 443
    :cond_c
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->isKeyguardWallpaperCarouselSwitchAnimating()Z

    move-result v9

    .line 441
    :goto_5
    if-nez v9, :cond_b

    .line 444
    const-string/jumbo v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    .line 445
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v4

    const/4 v12, 0x1

    aput v11, v10, v12

    .line 444
    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 441
    :cond_d
    const/4 v9, 0x0

    goto :goto_5

    .line 448
    .end local v7    # "view":Landroid/view/View;
    :cond_e
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 449
    const-wide/16 v10, 0x12c

    invoke-virtual {v0, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 450
    new-instance v9, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v9}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 451
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 454
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v1    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    :cond_f
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTranslation:F

    .line 456
    .end local v8    # "view$iterator":Ljava/util/Iterator;
    :cond_10
    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    if-nez v9, :cond_13

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v9

    neg-float v9, v9

    cmpl-float v9, p1, v9

    if-nez v9, :cond_13

    .line 457
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    .line 458
    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 460
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 461
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->setCanShowGxzw(Z)V

    .line 463
    :cond_11
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->startFaceUnlockByMove()V

    .line 381
    :cond_12
    :goto_6
    return-void

    .line 465
    :cond_13
    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_14

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v9

    neg-float v9, v9

    cmpl-float v9, p1, v9

    if-nez v9, :cond_14

    .line 466
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    .line 468
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 469
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->setCanShowGxzw(Z)V

    goto :goto_6

    .line 472
    :cond_14
    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_16

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v9

    cmpl-float v9, p1, v9

    if-nez v9, :cond_16

    .line 473
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    .line 475
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 476
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->setCanShowGxzw(Z)V

    .line 478
    :cond_15
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isKeyguardWallpaperPreviewAvailable()Z

    move-result v9

    invoke-static {v9}, Lcom/android/keyguard/AnalyticsHelper;->recordEnterLeftview(Z)V

    .line 479
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->stopFaceUnlockByMove()V

    goto :goto_6

    .line 480
    :cond_16
    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_17

    const/4 v9, 0x0

    cmpl-float v9, p1, v9

    if-nez v9, :cond_17

    .line 482
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 483
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->setCanShowGxzw(Z)V

    goto :goto_6

    .line 487
    :cond_17
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 488
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->setCanShowGxzw(Z)V

    .line 490
    :cond_18
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->stopFaceUnlockByMove()V

    goto :goto_6
.end method

.method private startHintAnimationPhase1(ZLjava/lang/Runnable;)V
    .locals 4
    .param p1, "right"    # Z
    .param p2, "onFinishedListener"    # Ljava/lang/Runnable;

    .prologue
    .line 250
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 251
    .local v1, "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mHintGrowAmount:I

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 252
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;Ljava/lang/Runnable;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 270
    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 271
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 272
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 273
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipeAnimator:Landroid/animation/Animator;

    .line 249
    return-void

    .line 250
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .restart local v1    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    goto :goto_0
.end method

.method private startSwiping()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->onSwipingStarted()V

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipingInProgress:Z

    .line 187
    return-void
.end method

.method private startUnlockHintAnimationPhase2(ZLjava/lang/Runnable;)V
    .locals 4
    .param p1, "right"    # Z
    .param p2, "onFinishedListener"    # Ljava/lang/Runnable;

    .prologue
    .line 280
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 281
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$4;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 288
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 289
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 290
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 291
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 292
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipeAnimator:Landroid/animation/Animator;

    .line 279
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 543
    :cond_0
    return-void
.end method

.method private updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p2, "alpha"    # F
    .param p3, "animate"    # Z
    .param p4, "force"    # Z

    .prologue
    .line 524
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_1

    .line 527
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    .line 523
    return-void

    .line 525
    :cond_1
    return-void
.end method

.method private updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p2, "alpha"    # F
    .param p3, "animate"    # Z

    .prologue
    .line 531
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScale(FLcom/android/systemui/statusbar/KeyguardAffordanceView;)F

    move-result v0

    .line 532
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 533
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZ)V

    .line 534
    invoke-virtual {p1, v0, p3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageScale(FZ)V

    .line 530
    return-void
.end method


# virtual methods
.method public animateHideLeftRightIcon()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 512
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->cancelAnimation()V

    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    .line 514
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    .line 511
    return-void
.end method

.method public animateShowLeftRightIcon()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 518
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->cancelAnimation()V

    .line 519
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v1

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    .line 520
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v1

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    .line 517
    return-void
.end method

.method public canShowGxzw()Z
    .locals 1

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCanShowGxzw:Z

    return v0
.end method

.method public isInCenterScreen()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 197
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInLeftView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 193
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isOnAffordanceIcon(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSwipingInProgress()Z
    .locals 1

    .prologue
    .line 604
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipingInProgress:Z

    return v0
.end method

.method public launchAffordance(ZZ)V
    .locals 8
    .param p1, "animate"    # Z
    .param p2, "left"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 608
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipingInProgress:Z

    if-eqz v2, :cond_0

    .line 610
    return-void

    .line 612
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 613
    .local v1, "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 614
    .local v0, "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_1
    if-eqz p1, :cond_4

    .line 615
    if-eqz p2, :cond_3

    move v2, v3

    :goto_2
    invoke-direct {p0, v7, v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->fling(FZZ)V

    .line 616
    invoke-direct {p0, v0, v7, v4, v4}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    .line 607
    :goto_3
    return-void

    .line 612
    .end local v0    # "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .end local v1    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .restart local v1    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    goto :goto_0

    .line 613
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .restart local v0    # "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    goto :goto_1

    :cond_3
    move v2, v4

    .line 615
    goto :goto_2

    .line 618
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    if-eqz p2, :cond_5

    move v2, v3

    :goto_4
    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTranslation:F

    invoke-interface {v5, v2, v6, v7}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->onAnimationToSideStarted(ZFF)V

    .line 619
    if-eqz p2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->getMaxTranslationDistance()F

    move-result v2

    :goto_5
    iput v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTranslation:F

    .line 621
    invoke-direct {p0, v0, v7, v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    .line 622
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->instantFinishAnimation()V

    .line 623
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 624
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    :cond_5
    move v2, v4

    .line 618
    goto :goto_4

    .line 620
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->getMaxTranslationDistance()F

    move-result v2

    goto :goto_5
.end method

.method public onConfigurationChanged()V
    .locals 0

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->initDimens()V

    .line 566
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->initIcons()V

    .line 564
    return-void
.end method

.method public onRtlPropertiesChanged()V
    .locals 0

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->initIcons()V

    .line 569
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 136
    .local v0, "action":I
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mMotionCancelled:Z

    if-eqz v8, :cond_0

    if-eqz v0, :cond_0

    .line 137
    return v6

    .line 139
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 140
    .local v4, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 142
    .local v2, "x":F
    const/4 v1, 0x0

    .line 143
    .local v1, "isUp":Z
    packed-switch v0, :pswitch_data_0

    .line 184
    :cond_1
    :goto_0
    :pswitch_0
    return v7

    .line 145
    :pswitch_1
    iput v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mInitialTouchX:F

    .line 146
    iput v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mInitialTouchY:F

    .line 147
    iget v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTranslation:F

    iput v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTranslationOnDown:F

    .line 148
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->initVelocityTracker()V

    .line 149
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 150
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mMotionCancelled:Z

    goto :goto_0

    .line 153
    :pswitch_2
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mMotionCancelled:Z

    .line 154
    invoke-direct {p0, v7, v2, v4}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->endMotion(ZFF)V

    goto :goto_0

    .line 157
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 158
    iget v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mInitialTouchX:F

    sub-float v3, v2, v8

    .line 159
    .local v3, "xDist":F
    iget v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mInitialTouchY:F

    sub-float v5, v4, v8

    .line 160
    .local v5, "yDist":F
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipingInProgress:Z

    if-eqz v8, :cond_2

    .line 161
    invoke-direct {p0, v3, v6, v6, v6}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->setTranslation(FZZZ)V

    goto :goto_0

    .line 164
    :cond_2
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTouchSlop:I

    mul-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTouchSlop:I

    mul-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 165
    :cond_3
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    .line 166
    cmpl-float v8, v3, v10

    if-lez v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_5

    .line 167
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->startSwiping()V

    .line 168
    invoke-direct {p0, v3, v6, v6, v6}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->setTranslation(FZZZ)V

    goto :goto_0

    .line 166
    :cond_5
    cmpg-float v8, v3, v10

    if-gez v8, :cond_6

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_4

    .line 171
    :cond_6
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mMotionCancelled:Z

    goto :goto_0

    .line 178
    .end local v3    # "xDist":F
    .end local v5    # "yDist":F
    :pswitch_4
    const/4 v1, 0x1

    .line 180
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 181
    if-eqz v1, :cond_7

    :goto_1
    invoke-direct {p0, v6, v2, v4}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->endMotion(ZFF)V

    goto :goto_0

    :cond_7
    move v6, v7

    goto :goto_1

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public reset(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 574
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->reset(ZZ)V

    .line 573
    return-void
.end method

.method public reset(ZZ)V
    .locals 1
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 596
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->reset(ZZZ)V

    .line 595
    return-void
.end method

.method public resetImmediately()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 600
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->reset(ZZZ)V

    .line 599
    return-void
.end method

.method public startHintAnimation(ZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "right"    # Z
    .param p2, "onFinishedListener"    # Ljava/lang/Runnable;

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->cancelAnimation()V

    .line 246
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->startHintAnimationPhase1(ZLjava/lang/Runnable;)V

    .line 244
    return-void
.end method

.method public updateKeyguardHorizontalSwpingSlop(Z)V
    .locals 2
    .param p1, "isInSuspectMode"    # Z

    .prologue
    .line 588
    if-eqz p1, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f031d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mKeyguardHorizontalGestureSlop:I

    .line 587
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f031c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mKeyguardHorizontalGestureSlop:I

    goto :goto_0
.end method
