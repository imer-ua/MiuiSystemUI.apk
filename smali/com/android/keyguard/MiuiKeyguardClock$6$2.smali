.class Lcom/android/keyguard/MiuiKeyguardClock$6$2;
.super Ljava/lang/Object;
.source "MiuiKeyguardClock.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MiuiKeyguardClock$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/MiuiKeyguardClock$6;

.field final synthetic val$dateFadeIn:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiKeyguardClock$6;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/MiuiKeyguardClock$6;
    .param p2, "val$dateFadeIn"    # Landroid/view/animation/Animation;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardClock$6$2;->this$1:Lcom/android/keyguard/MiuiKeyguardClock$6;

    iput-object p2, p0, Lcom/android/keyguard/MiuiKeyguardClock$6$2;->val$dateFadeIn:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 479
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardClock;->-get0()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardClock;->-get1()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock$6$2;->val$dateFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 478
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 483
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 475
    return-void
.end method
