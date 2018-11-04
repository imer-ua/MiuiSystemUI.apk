.class Lcom/android/systemui/statusbar/phone/StatusBar$54;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->clearAllNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$viewsToRemove:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 2141
    .local p2, "val$viewsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$54;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$54;->val$viewsToRemove:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x0

    .line 2144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2145
    .local v0, "clearNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/miui/statusbar/ExpandedNotification;>;"
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$54;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v11, v13}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDismissAllInProgress(Z)V

    .line 2146
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$54;->val$viewsToRemove:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "rowToRemove$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2147
    .local v9, "rowToRemove":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$54;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v11, v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2148
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v11

    iget-object v11, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2149
    const-class v11, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v11}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onRemoveAll(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    .line 2150
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$54;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v12

    iget-object v12, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v11, v12, v14}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_0

    .line 2152
    :cond_0
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetTranslation()V

    goto :goto_0

    .line 2157
    .end local v9    # "rowToRemove":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$54;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/NotificationData;->getFoldEntries()Ljava/util/ArrayList;

    move-result-object v4

    .line 2158
    .local v4, "foldEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2159
    .local v8, "numChildren":I
    const/4 v1, 0x0

    .line 2160
    .local v1, "clearableFoldEntriesNum":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v8, :cond_3

    .line 2161
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2162
    .local v2, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v11, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v11, :cond_2

    iget-object v11, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2163
    const-class v11, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v11}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v12, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v11, v12}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onRemoveAll(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    .line 2164
    add-int/lit8 v1, v1, 0x1

    .line 2160
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2168
    .end local v2    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v11, v1

    invoke-static {v11}, Lcom/android/systemui/AnalyticsHelper;->trackNotificationClearAll(I)V

    .line 2170
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$54;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get14(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2172
    :try_start_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$54;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBar$54;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v12, v12, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-interface {v11, v12}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2180
    :cond_4
    :goto_2
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$54;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_5

    .line 2181
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$54;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/16 v12, 0x5dc

    invoke-virtual {v11, v13, v12}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->doExpandCollapseAnimation(ZI)V

    .line 2143
    :cond_5
    return-void

    .line 2175
    :cond_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "n$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .line 2176
    .local v6, "n":Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$54;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v11, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->onNotificationClear(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    goto :goto_3

    .line 2173
    .end local v6    # "n":Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    .end local v7    # "n$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/lang/Exception;
    goto :goto_2
.end method
