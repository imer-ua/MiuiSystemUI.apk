.class Lcom/android/systemui/statusbar/phone/StatusBar$66;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$deferred:Z

.field final synthetic val$dismissShade:Z

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "val$runnable"    # Ljava/lang/Runnable;
    .param p3, "val$dismissShade"    # Z
    .param p4, "val$deferred"    # Z

    .prologue
    .line 4885
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$66;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$66;->val$runnable:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$66;->val$dismissShade:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$66;->val$deferred:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4887
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$66;->val$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4888
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$66;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4889
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$66;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    .line 4888
    if-eqz v0, :cond_2

    .line 4890
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$66;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$66;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V

    .line 4895
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$66;->val$dismissShade:Z

    if-eqz v0, :cond_4

    .line 4896
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$66;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_3

    .line 4897
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$66;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZ)V

    .line 4921
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$66;->val$deferred:Z

    return v0

    .line 4892
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$66;->val$runnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4902
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$66;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$66$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$66$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$66;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 4909
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$66;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$66;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4914
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$66;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$66$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$66$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$66;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
