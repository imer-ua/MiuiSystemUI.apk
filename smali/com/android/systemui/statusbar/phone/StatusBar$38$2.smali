.class Lcom/android/systemui/statusbar/phone/StatusBar$38$2;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$38;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$38;

.field final synthetic val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$38;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBar$38;
    .param p2, "val$sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "val$rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 7613
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$38;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 7616
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$38;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap22(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/Notification;)V

    .line 7617
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 7618
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$38;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 7619
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$38;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 7624
    .local v0, "isUpdate":Z
    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    if-nez v2, :cond_3

    .line 7625
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$38;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    .line 7624
    if-eqz v2, :cond_3

    .line 7626
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 7627
    const-string/jumbo v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignoring group child due to existing summary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7631
    :cond_0
    if-eqz v0, :cond_2

    .line 7632
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$38;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 7636
    :goto_1
    return-void

    .line 7619
    .end local v0    # "isUpdate":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isUpdate":Z
    goto :goto_0

    .line 7634
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$38;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_1

    .line 7638
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$38;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-static {v2, v3, v4, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap1(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Z)Z

    .line 7615
    return-void
.end method
