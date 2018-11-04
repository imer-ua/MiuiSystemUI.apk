.class public Lcom/android/keyguard/KeyguardBouncerMessageView;
.super Landroid/widget/RelativeLayout;
.source "KeyguardBouncerMessageView.java"


# instance fields
.field private final MAX_SHAKE_TIMES:I

.field private mContent:Landroid/widget/TextView;

.field private mResources:Landroid/content/res/Resources;

.field private mShakeDistance:I

.field private mShakeDuration:I

.field private mShakeTimes:I

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardBouncerMessageView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeTimes:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardBouncerMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeDuration:I

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->MAX_SHAKE_TIMES:I

    .line 37
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardBouncerMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mResources:Landroid/content/res/Resources;

    .line 35
    return-void
.end method


# virtual methods
.method public applyHintAnimation(J)V
    .locals 13
    .param p1, "offset"    # J

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 79
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardBouncerMessageView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mContent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 83
    iget v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeTimes:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeTimes:I

    .line 84
    iget v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeDistance:I

    iget v6, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeDistance:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeDistance:I

    .line 86
    iget-object v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mContent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getX()F

    move-result v4

    .line 87
    .local v4, "x":F
    iget-object v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mContent:Landroid/widget/TextView;

    const-string/jumbo v6, "X"

    new-array v7, v9, [F

    aput v4, v7, v10

    iget v8, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeDistance:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    aput v8, v7, v11

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 88
    .local v0, "anim1":Landroid/animation/ObjectAnimator;
    new-instance v5, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {v5}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 89
    iget v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeDuration:I

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 91
    iget-object v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mContent:Landroid/widget/TextView;

    const-string/jumbo v6, "X"

    new-array v7, v9, [F

    iget v8, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeDistance:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    aput v8, v7, v10

    iget v8, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeDistance:I

    int-to-float v8, v8

    sub-float v8, v4, v8

    aput v8, v7, v11

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 92
    .local v1, "anim2":Landroid/animation/ObjectAnimator;
    new-instance v5, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v5}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    iget v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeDuration:I

    mul-int/lit8 v5, v5, 0x2

    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 95
    iget-object v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mContent:Landroid/widget/TextView;

    const-string/jumbo v6, "X"

    new-array v7, v9, [F

    iget v8, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeDistance:I

    int-to-float v8, v8

    sub-float v8, v4, v8

    aput v8, v7, v10

    aput v4, v7, v11

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 96
    .local v2, "anim3":Landroid/animation/ObjectAnimator;
    iget v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeTimes:I

    if-ne v5, v9, :cond_2

    new-instance v5, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {v5}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    :goto_0
    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 97
    iget v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeDuration:I

    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 99
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 100
    .local v3, "animatiorSet":Landroid/animation/AnimatorSet;
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v10

    aput-object v1, v5, v11

    aput-object v2, v5, v9

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 101
    new-instance v5, Lcom/android/keyguard/KeyguardBouncerMessageView$1;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardBouncerMessageView$1;-><init>(Lcom/android/keyguard/KeyguardBouncerMessageView;)V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 123
    invoke-virtual {v3, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 124
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 78
    .end local v0    # "anim1":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim2":Landroid/animation/ObjectAnimator;
    .end local v2    # "anim3":Landroid/animation/ObjectAnimator;
    .end local v3    # "animatiorSet":Landroid/animation/AnimatorSet;
    .end local v4    # "x":F
    :cond_1
    return-void

    .line 96
    .restart local v0    # "anim1":Landroid/animation/ObjectAnimator;
    .restart local v1    # "anim2":Landroid/animation/ObjectAnimator;
    .restart local v2    # "anim3":Landroid/animation/ObjectAnimator;
    .restart local v4    # "x":F
    :cond_2
    new-instance v5, Lmiui/view/animation/SineEaseInInterpolator;

    invoke-direct {v5}, Lmiui/view/animation/SineEaseInInterpolator;-><init>()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 43
    const v0, 0x9120154

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardBouncerMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mTitle:Landroid/widget/TextView;

    .line 44
    const v0, 0x9120155

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardBouncerMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mContent:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardBouncerMessageView;->resetAnimValue()V

    .line 41
    return-void
.end method

.method public resetAnimValue()V
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeTimes:I

    .line 130
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 131
    const v1, 0x90f02dd

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeDistance:I

    .line 128
    return-void
.end method

.method public showMessage(II)V
    .locals 2
    .param p1, "titleResId"    # I
    .param p2, "messageResId"    # I

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardBouncerMessageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 56
    return-void

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mTitle:Landroid/widget/TextView;

    if-nez p1, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mContent:Landroid/widget/TextView;

    if-nez p2, :cond_2

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public showMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "color"    # I

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardBouncerMessageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mContent:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mContent:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    return-void
.end method
