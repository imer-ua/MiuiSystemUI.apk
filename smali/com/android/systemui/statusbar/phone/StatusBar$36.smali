.class Lcom/android/systemui/statusbar/phone/StatusBar$36;
.super Landroid/content/BroadcastReceiver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 7518
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 7521
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 7522
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "android.intent.extra.user_handle"

    const/16 v7, -0x2710

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 7524
    .local v5, "userId":I
    const-string/jumbo v6, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7525
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$36;->getSendingUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCurrentProfile(I)Z

    move-result v6

    .line 7524
    if-eqz v6, :cond_1

    .line 7526
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get40(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/util/SparseBooleanArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    .line 7527
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap33(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 7528
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    .line 7520
    :cond_0
    :goto_0
    return-void

    .line 7529
    :cond_1
    const-string/jumbo v6, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 7530
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v6, v6, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    if-eq v5, v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCurrentProfile(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7531
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->onWorkChallengeChanged()V

    goto :goto_0

    .line 7533
    :cond_2
    const-string/jumbo v6, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 7534
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get32(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/lang/Runnable;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 7535
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get36(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/UiOffloadThread;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get32(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 7536
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v6, v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set17(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0

    .line 7538
    :cond_3
    const-string/jumbo v6, "android.intent.action.APPLICATION_MESSAGE_QUERY"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7539
    const-string/jumbo v6, "com.miui.extra_update_request_first_time"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 7540
    .local v4, "requestFirstTime":Z
    const-string/jumbo v6, "StatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "recevie broadbcast ACTION_APPLICATION_MESSAGE_QUERY, requestFirstTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7541
    if-eqz v4, :cond_0

    .line 7542
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationData;->getNeedsUpdateBadgeNumNotifications()Ljava/util/ArrayList;

    move-result-object v1

    .line 7543
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 7544
    .local v2, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v7, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap29(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    goto :goto_1
.end method
