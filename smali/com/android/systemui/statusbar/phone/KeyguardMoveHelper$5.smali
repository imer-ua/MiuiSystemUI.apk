.class Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$5;
.super Ljava/lang/Object;
.source "KeyguardMoveHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

.field final synthetic val$right:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;
    .param p2, "val$right"    # Z

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$5;->val$right:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 302
    .local v0, "newRadius":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->-wrap0(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;F)F

    move-result v1

    .line 303
    .local v1, "translation":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$5;->val$right:Z

    if-eqz v3, :cond_0

    neg-float v1, v1

    .end local v1    # "translation":F
    :cond_0
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->-set2(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;F)F

    .line 300
    return-void
.end method
