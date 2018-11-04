.class Lcom/android/keyguard/MiuiKeyguardClock$6$1;
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


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiKeyguardClock$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/MiuiKeyguardClock$6;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardClock$6$1;->this$1:Lcom/android/keyguard/MiuiKeyguardClock$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 467
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardClock;->-get1()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 470
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 463
    return-void
.end method
