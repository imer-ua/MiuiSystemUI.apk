.class Lcom/android/keyguard/fod/MiuiGxzwAnimView$2;
.super Ljava/lang/Object;
.source "MiuiGxzwAnimView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startFadeAniamtion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/fod/MiuiGxzwAnimView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fod/MiuiGxzwAnimView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 464
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 465
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->setAlpha(F)V

    .line 463
    return-void
.end method
