.class Lcom/android/systemui/statusbar/phone/StatusBar$38;
.super Landroid/service/notification/NotificationListenerService;
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
    .line 7573
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 4

    .prologue
    .line 7576
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "StatusBar"

    const-string/jumbo v3, "onListenerConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7577
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$38;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 7578
    .local v1, "notifications":[Landroid/service/notification/StatusBarNotification;
    if-nez v1, :cond_1

    .line 7579
    const-string/jumbo v2, "StatusBar"

    const-string/jumbo v3, "onListenerConnected unable to get active notifications."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7580
    return-void

    .line 7582
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$38;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v0

    .line 7583
    .local v0, "currentRanking":Landroid/service/notification/NotificationListenerService$RankingMap;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBar$38$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$38$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$38;[Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 7575
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 7597
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNotificationPosted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7598
    :cond_0
    if-eqz p1, :cond_1

    .line 7599
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$38$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar$38$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$38;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 7596
    :cond_1
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 4
    .param p1, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    const/16 v2, 0x3ed

    .line 7647
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "onRankingUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7648
    if-eqz p1, :cond_0

    .line 7649
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 7650
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7646
    :cond_0
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 7633
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onNotificationRemoved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7634
    :cond_0
    if-eqz p1, :cond_1

    .line 7635
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 7636
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$38$3;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar$38$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$38;Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 7632
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method