.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field final synthetic val$onFinishRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p2, "val$onFinishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 2033
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;->val$onFinishRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 2036
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get20(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/util/QcomBoostFramework;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2037
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get20(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/util/QcomBoostFramework;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/QcomBoostFramework;->perfLockRelease()I

    .line 2039
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetCheckSnoozeLeavebehind()V

    .line 2040
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-set8(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 2041
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;->val$onFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 2042
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;->val$onFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2035
    :cond_1
    return-void
.end method
