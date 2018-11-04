.class Lcom/android/keyguard/fod/MiuiGxzwAnimView$3;
.super Ljava/lang/Object;
.source "MiuiGxzwAnimView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startFadeAniamtion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cancel:Z

.field final synthetic this$0:Lcom/android/keyguard/fod/MiuiGxzwAnimView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fod/MiuiGxzwAnimView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView$3;->this$0:Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView$3;->cancel:Z

    .line 468
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView$3;->this$0:Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->-set0(Lcom/android/keyguard/fod/MiuiGxzwAnimView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView$3;->cancel:Z

    .line 486
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView$3;->this$0:Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->-set0(Lcom/android/keyguard/fod/MiuiGxzwAnimView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 480
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView$3;->cancel:Z

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView$3;->this$0:Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->-wrap0(Lcom/android/keyguard/fod/MiuiGxzwAnimView;)V

    .line 478
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 492
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 473
    return-void
.end method
