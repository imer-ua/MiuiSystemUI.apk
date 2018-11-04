.class Lcom/android/systemui/statusbar/NotificationData$1;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/statusbar/NotificationData$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

.field private final mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationData;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationData;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 322
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 319
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 12
    .param p1, "a"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "b"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 326
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .line 327
    .local v5, "na":Landroid/service/notification/StatusBarNotification;
    iget-object v6, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .line 328
    .local v6, "nb":Landroid/service/notification/StatusBarNotification;
    const/4 v0, 0x3

    .line 329
    .local v0, "aImportance":I
    const/4 v2, 0x3

    .line 330
    .local v2, "bImportance":I
    const/4 v1, 0x0

    .line 331
    .local v1, "aRank":I
    const/4 v3, 0x0

    .line 334
    .local v3, "bRank":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v7}, Lcom/android/systemui/statusbar/NotificationData;->-get2(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 336
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v7}, Lcom/android/systemui/statusbar/NotificationData;->-get2(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v7

    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v7, v8, v9}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 337
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v7}, Lcom/android/systemui/statusbar/NotificationData;->-get2(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v7

    iget-object v8, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v7, v8, v9}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 338
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v7, p1, v8}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$Ranking;)I

    move-result v0

    .line 339
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v7, p2, v8}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$Ranking;)I

    move-result v2

    .line 340
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v7}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v1

    .line 341
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v7}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v3

    .line 345
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v7}, Lcom/android/systemui/statusbar/NotificationData;->-get1(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v7

    invoke-static {p1, p2, v7}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->compareHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I

    move-result v4

    .line 346
    .local v4, "compareResult":I
    if-eqz v4, :cond_1

    .line 347
    return v4

    .line 351
    :cond_1
    invoke-static {p1, p2}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->compareHighPriority(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v4

    .line 352
    if-eqz v4, :cond_2

    .line 353
    return v4

    .line 358
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v7}, Lcom/android/systemui/statusbar/NotificationData;->-get0(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/NotificationData$Environment;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/systemui/statusbar/NotificationData$Environment;->getCurrentMediaNotificationKey()Ljava/lang/String;

    move-result-object v7

    .line 357
    invoke-static {p1, p2, v0, v2, v7}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->compareMedia(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;IILjava/lang/String;)I

    move-result v4

    .line 359
    if-eqz v4, :cond_3

    .line 360
    return v4

    .line 364
    :cond_3
    invoke-static {p1, p2}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->compareNew(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v4

    .line 365
    if-eqz v4, :cond_4

    .line 366
    return v4

    .line 369
    :cond_4
    sget-boolean v7, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-nez v7, :cond_5

    .line 371
    invoke-static {p1, p2}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->compareIM(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v4

    .line 372
    if-eqz v4, :cond_5

    .line 373
    return v4

    .line 378
    :cond_5
    invoke-static {p1, p2, v0, v2}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->compareSystemMax(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;II)I

    move-result v4

    .line 379
    if-eqz v4, :cond_6

    .line 380
    return v4

    .line 384
    :cond_6
    invoke-static {v1, v3}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->compareRank(II)I

    move-result v4

    .line 385
    if-eqz v4, :cond_7

    .line 386
    return v4

    .line 389
    :cond_7
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-wide v8, v7, Landroid/app/Notification;->when:J

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-wide v10, v7, Landroid/app/Notification;->when:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Long;->compare(JJ)I

    move-result v7

    return v7
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 325
    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData$1;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v0

    return v0
.end method
