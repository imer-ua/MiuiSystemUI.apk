.class Lcom/android/systemui/statusbar/ActivatableNotificationView$13;
.super Ljava/lang/Object;
.source "ActivatableNotificationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ActivatableNotificationView;->startAppearAnimation(ZFJJLandroid/animation/AnimatorListenerAdapter;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 750
    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$13;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 753
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$13;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->-set0(Lcom/android/systemui/statusbar/ActivatableNotificationView;F)F

    .line 754
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$13;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->-wrap3(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 755
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$13;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->-wrap4(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 756
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$13;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->invalidate()V

    .line 752
    return-void
.end method
