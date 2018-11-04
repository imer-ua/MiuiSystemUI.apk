.class Lcom/android/keyguard/PasswordTextViewForPIN$CharState$3;
.super Ljava/lang/Object;
.source "PasswordTextViewForPIN.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextViewForPIN$CharState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/PasswordTextViewForPIN$CharState;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PasswordTextViewForPIN$CharState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/PasswordTextViewForPIN$CharState;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState$3;->this$1:Lcom/android/keyguard/PasswordTextViewForPIN$CharState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 419
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState$3;->this$1:Lcom/android/keyguard/PasswordTextViewForPIN$CharState;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->currentDotSizeFactor:F

    .line 420
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState$3;->this$1:Lcom/android/keyguard/PasswordTextViewForPIN$CharState;

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPIN;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPIN;->invalidate()V

    .line 418
    return-void
.end method
