.class Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$6;
.super Ljava/lang/Object;
.source "KeyguardMoveHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->fling(FZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

.field final synthetic val$snapBack:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;
    .param p2, "val$snapBack"    # Z

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$6;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$6;->val$snapBack:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v3, 0x0

    .line 347
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$6;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->-set2(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;F)F

    .line 348
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$6;->val$snapBack:Z

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$6;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$6;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->-get2(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;)F

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->-wrap1(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;FZZZ)V

    .line 346
    :cond_0
    return-void
.end method
