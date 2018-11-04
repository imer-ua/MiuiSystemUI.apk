.class Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiuiKeyguardChargingContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->startEnterAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

.field final synthetic val$quickCharging:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;
    .param p2, "val$quickCharging"    # Z

    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    iput-boolean p2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->val$quickCharging:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 568
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v2, v1, v2

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v2}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get0(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 569
    .local v0, "levelAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 570
    new-instance v1, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 571
    new-instance v1, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8$1;

    iget-boolean v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->val$quickCharging:Z

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8$1;-><init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 579
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 581
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get2(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 582
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get2(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 583
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get2(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 584
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get2(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-virtual {v2}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 585
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get2(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 586
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get12(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get5(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x910045f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 567
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    iget-boolean v1, v1, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mIsTempHigh:Z

    if-eqz v1, :cond_1

    .line 589
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get5(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v2}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get6(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v3}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get6(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 591
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get5(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v2}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get6(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v4}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-get6(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
