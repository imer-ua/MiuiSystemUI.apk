.class Lcom/android/systemui/statusbar/phone/StatusBar$38$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$38;->onListenerConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$38;

.field final synthetic val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

.field final synthetic val$notifications:[Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$38;[Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBar$38;
    .param p2, "val$notifications"    # [Landroid/service/notification/StatusBarNotification;
    .param p3, "val$currentRanking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 7597
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$38;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38$1;->val$notifications:[Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38$1;->val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 7600
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38$1;->val$notifications:[Landroid/service/notification/StatusBarNotification;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 7601
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v5, v2}, Landroid/app/MiuiNotification;->setEnableFloat(Z)Landroid/app/MiuiNotification;

    .line 7602
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$38;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38$1;->val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-static {v5, v0, v6, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap1(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Z)Z

    .line 7600
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7599
    .end local v0    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_0
    return-void
.end method
