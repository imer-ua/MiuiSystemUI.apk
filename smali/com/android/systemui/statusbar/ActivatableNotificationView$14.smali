.class Lcom/android/systemui/statusbar/ActivatableNotificationView$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActivatableNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ActivatableNotificationView;->startAppearAnimation(ZFJJLandroid/animation/AnimatorListenerAdapter;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mWasCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

.field final synthetic val$isAppearing:Z

.field final synthetic val$onFinishedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;Ljava/lang/Runnable;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .param p2, "val$onFinishedRunnable"    # Ljava/lang/Runnable;
    .param p3, "val$isAppearing"    # Z

    .prologue
    .line 768
    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$14;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$14;->val$onFinishedRunnable:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$14;->val$isAppearing:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 789
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$14;->mWasCancelled:Z

    .line 788
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$14;->val$onFinishedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$14;->val$onFinishedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 776
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$14;->mWasCancelled:Z

    if-nez v0, :cond_1

    .line 777
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$14;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->-wrap0(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V

    .line 778
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$14;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$14;->val$isAppearing:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onAppearAnimationFinished(Z)V

    .line 772
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 784
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$14;->mWasCancelled:Z

    .line 783
    return-void
.end method