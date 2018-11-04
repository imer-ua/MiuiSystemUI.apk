.class Lcom/android/keyguard/MiuiKeyguardClock$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiuiKeyguardClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MiuiKeyguardClock;->playVerticalToHorizontalAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isCanceled:Z

.field final synthetic this$0:Lcom/android/keyguard/MiuiKeyguardClock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiKeyguardClock;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/keyguard/MiuiKeyguardClock;

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardClock$9;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 681
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock$9;->isCanceled:Z

    .line 680
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 683
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock$9;->isCanceled:Z

    .line 682
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 688
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 689
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardClock$9;->isCanceled:Z

    if-nez v0, :cond_0

    .line 690
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardClock;->-set3(Z)Z

    .line 687
    :cond_0
    return-void
.end method
