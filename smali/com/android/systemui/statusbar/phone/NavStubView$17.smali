.class Lcom/android/systemui/statusbar/phone/NavStubView$17;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavStubView;->startAppAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavStubView;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavStubView;
    .param p2, "val$type"    # I
    .param p3, "val$action"    # Ljava/lang/String;

    .prologue
    .line 1913
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->val$type:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 12
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1924
    const-wide/16 v0, 0x0

    .line 1925
    .local v0, "delayTime":J
    const/4 v4, 0x1

    .line 1926
    .local v4, "isRecoveryHomeIcon":Z
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->val$type:I

    packed-switch v5, :pswitch_data_0

    .line 1960
    :goto_0
    move v3, v4

    .line 1961
    .local v3, "finalIsRecoveryHomeIcon":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get14(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/statusbar/phone/NavStubView$17$1;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->val$type:I

    invoke-direct {v6, p0, v3, v7}, Lcom/android/systemui/statusbar/phone/NavStubView$17$1;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView$17;ZI)V

    invoke-virtual {v5, v6, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1967
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->val$action:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->recordJankyFrames(Ljava/lang/String;)V

    .line 1923
    return-void

    .line 1928
    .end local v3    # "finalIsRecoveryHomeIcon":Z
    :pswitch_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get4(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1930
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get21(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/app/IActivityManager;

    move-result-object v5

    .line 1931
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get4(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v6

    iget v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get2(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    .line 1930
    invoke-interface {v5, v6, v7}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1937
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v5, v11}, Lcom/android/systemui/statusbar/phone/NavStubView;->-set0(Lcom/android/systemui/statusbar/phone/NavStubView;Z)Z

    .line 1938
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 1939
    const-wide/16 v0, 0x190

    .line 1943
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get15(Lcom/android/systemui/statusbar/phone/NavStubView;)Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->onGestureFinish(Z)V

    goto :goto_0

    .line 1932
    :catch_0
    move-exception v2

    .line 1933
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Fail to start activity"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1934
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get2(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get20(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/content/Intent;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get2(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v10, v10}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 1941
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const-wide/16 v0, 0x12c

    goto :goto_2

    .line 1946
    :pswitch_1
    const/4 v4, 0x0

    .line 1947
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get15(Lcom/android/systemui/statusbar/phone/NavStubView;)Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->onGestureFinish(Z)V

    goto/16 :goto_0

    .line 1951
    :pswitch_2
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v10}, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;-><init>(FZ)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1952
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsCompleteEvent;

    invoke-direct {v6}, Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsCompleteEvent;-><init>()V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1953
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get15(Lcom/android/systemui/statusbar/phone/NavStubView;)Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->onGestureFinish(Z)V

    goto/16 :goto_0

    .line 1926
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 1916
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->val$type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1917
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get15(Lcom/android/systemui/statusbar/phone/NavStubView;)Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->skipAppTransition()V

    .line 1918
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get2(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get20(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView$17;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get2(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1915
    :cond_0
    return-void
.end method
