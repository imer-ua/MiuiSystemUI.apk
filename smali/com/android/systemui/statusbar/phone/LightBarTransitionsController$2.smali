.class Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$2;
.super Ljava/lang/Object;
.source "LightBarTransitionsController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$2;->this$0:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 323
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$2;->this$0:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->-wrap0(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;F)V

    .line 322
    return-void
.end method
