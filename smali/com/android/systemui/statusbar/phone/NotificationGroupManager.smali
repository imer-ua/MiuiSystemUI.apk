.class public Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
.super Ljava/lang/Object;
.source "NotificationGroupManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;,
        Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;
    }
.end annotation


# instance fields
.field private mBarState:I

.field private final mGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mIsUpdatingUnchangedGroup:Z

.field private mIsolatedEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mBarState:I

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    .line 40
    return-void
.end method

.method private getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isIsolated(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 396
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGroupSummary(Ljava/lang/String;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 3
    .param p1, "groupKey"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 354
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 355
    .local v0, "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    .line 356
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v2, :cond_0

    .line 357
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    goto :goto_0
.end method

.method private getIsolatedChild(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 4
    .param p1, "groupKey"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "sbn$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 210
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isIsolated(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v2

    .line 214
    .end local v0    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getNumberOfIsolatedChildren(Ljava/lang/String;)I
    .locals 4
    .param p1, "groupKey"    # Ljava/lang/String;

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "sbn$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 201
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isIsolated(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_1
    return v0
.end method

.method private getTotalNumberOfChildren(Landroid/service/notification/StatusBarNotification;)I
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getNumberOfIsolatedChildren(Ljava/lang/String;)I

    move-result v1

    .line 261
    .local v1, "isolatedChildren":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 262
    .local v0, "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v2

    .line 263
    .local v2, "realChildren":I
    :goto_0
    add-int v3, v1, v2

    return v3

    .line 262
    .end local v2    # "realChildren":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleSuppressedSummaryHeadsUpped(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 6
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v0, 0x0

    .line 443
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .line 444
    .local v3, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupSuppressed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 445
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 446
    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 450
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 451
    .local v2, "notificationGroup":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    if-eqz v2, :cond_5

    .line 452
    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 453
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-object v0, v4

    .line 454
    .local v0, "child":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    if-nez v0, :cond_1

    .line 455
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getIsolatedChild(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 457
    :cond_1
    if-eqz v0, :cond_5

    .line 458
    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->keepInParent()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 460
    :cond_2
    return-void

    .line 447
    .end local v0    # "child":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .end local v2    # "notificationGroup":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    :cond_3
    return-void

    .line 462
    .restart local v0    # "child":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .restart local v2    # "notificationGroup":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 463
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 469
    .end local v0    # "child":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    :cond_5
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseImmediately(Ljava/lang/String;)V

    .line 442
    return-void

    .line 465
    .restart local v0    # "child":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_0
.end method

.method private hasIsolatedChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z
    .locals 2
    .param p1, "group"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .prologue
    const/4 v0, 0x0

    .line 195
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getNumberOfIsolatedChildren(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private hasMediaOrCustomChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z
    .locals 3
    .param p1, "group"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .prologue
    .line 182
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    if-eqz v2, :cond_2

    .line 183
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 184
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 186
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->isMediaNotification()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->isCustomViewNotification()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 191
    .end local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private isGroupChild(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v0, 0x0

    .line 386
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isIsolated(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    return v0

    .line 389
    :cond_0
    invoke-static {p1}, Landroid/service/notification/StatusBarNotificationCompat;->isGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isGroupNotFullyVisible(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z
    .locals 4
    .param p1, "notificationGroup"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 482
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v2, :cond_0

    .line 483
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getClipTopAmount()I

    move-result v2

    if-lez v2, :cond_1

    .line 482
    :cond_0
    :goto_0
    return v0

    .line 484
    :cond_1
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isGroupSummary(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isIsolated(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const/4 v0, 0x1

    return v0

    .line 382
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    return v0
.end method

.method private isGroupSuppressed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "groupKey"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 268
    .local v0, "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isIsolated(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isOnlyChild(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 246
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-nez v2, :cond_1

    .line 247
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getTotalNumberOfChildren(Landroid/service/notification/StatusBarNotification;)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 246
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 247
    goto :goto_0

    :cond_1
    move v0, v1

    .line 246
    goto :goto_0
.end method

.method private onEntryBecomingChild(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 150
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 149
    :cond_0
    return-void
.end method

.method private onEntryRemovedInternal(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "removed"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "groupKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 92
    .local v0, "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    if-nez v0, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 104
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    .line 105
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_1
    return-void

    .line 102
    :cond_2
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    goto :goto_0
.end method

.method private setGroupExpanded(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Z)V
    .locals 2
    .param p1, "group"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    .param p2, "expanded"    # Z

    .prologue
    .line 70
    iput-boolean p2, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    .line 71
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {v0, v1, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;->onGroupExpansionChanged(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    .line 69
    :cond_0
    return-void
.end method

.method private shouldIsolate(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 473
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 474
    .local v0, "notificationGroup":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    invoke-static {p1}, Landroid/service/notification/StatusBarNotificationCompat;->isGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 475
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_2

    .line 476
    if-nez v0, :cond_3

    .line 475
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 477
    :cond_3
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    if-eqz v1, :cond_2

    .line 478
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupNotFullyVisible(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z

    move-result v1

    goto :goto_0
.end method

.method private updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V
    .locals 5
    .param p1, "group"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    if-nez p1, :cond_0

    .line 157
    return-void

    .line 159
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    .line 161
    .local v0, "prevSuppressed":Z
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ne v3, v4, :cond_3

    .line 162
    iput-boolean v2, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    .line 171
    :goto_0
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    if-eq v0, v1, :cond_2

    .line 172
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->handleSuppressedSummaryHeadsUpped(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 175
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsUpdatingUnchangedGroup:Z

    if-nez v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;->onGroupsChanged()V

    .line 155
    :cond_2
    return-void

    .line 164
    :cond_3
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v3, :cond_4

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    if-eqz v3, :cond_6

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    goto :goto_0

    .line 165
    :cond_6
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eq v2, v1, :cond_5

    .line 166
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 167
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    .line 166
    if-eqz v2, :cond_7

    .line 168
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->hasIsolatedChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z

    move-result v2

    .line 165
    if-nez v2, :cond_5

    .line 169
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->hasMediaOrCustomChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public canRemove(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z
    .locals 1
    .param p1, "group"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .prologue
    .line 113
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    .line 113
    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->hasIsolatedChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 116
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v0}, Landroid/service/notification/StatusBarNotificationCompat;->isAutoGroupSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    .line 113
    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public collapseAllGroups()V
    .locals 5

    .prologue
    .line 284
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 285
    .local v1, "groupCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 286
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 287
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 288
    .local v0, "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    if-eqz v4, :cond_0

    .line 289
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Z)V

    .line 291
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    .line 286
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    .end local v0    # "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 492
    const-string/jumbo v3, "GroupManager state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  number of groups: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 495
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\n    key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 497
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;>;"
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\n    isolated entries: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 499
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/service/notification/StatusBarNotification;>;"
    const-string/jumbo v3, "      "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 500
    const-string/jumbo v3, ", "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 491
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/service/notification/StatusBarNotification;>;"
    :cond_1
    return-void
.end method

.method public getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Ljava/lang/String;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    return-object v0
.end method

.method public getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 349
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Ljava/lang/String;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationGroup(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    .locals 1
    .param p1, "groupKey"    # Ljava/lang/String;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    return-object v0
.end method

.method public isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 299
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 300
    return v3

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 303
    .local v0, "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v1, :cond_2

    .line 304
    :cond_1
    return v3

    .line 306
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_3

    .line 307
    return v4

    .line 308
    :cond_3
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    if-eqz v1, :cond_4

    .line 309
    return v3

    .line 311
    :cond_4
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 315
    return v3

    .line 317
    :cond_5
    return v4
.end method

.method public isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 55
    .local v0, "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    if-nez v0, :cond_0

    .line 56
    const/4 v1, 0x0

    return v1

    .line 58
    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    return v1
.end method

.method public isOnlyChildInGroup(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v1, 0x0

    .line 251
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isOnlyChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    return v1

    .line 254
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    .line 255
    .local v0, "logicalGroupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 255
    :cond_1
    :goto_0
    return v1

    .line 256
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v1, 0x0

    .line 324
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 325
    return v1

    .line 327
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 328
    .local v0, "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    if-nez v0, :cond_1

    .line 329
    return v1

    .line 331
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupSuppressed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEntryAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 8
    .param p1, "added"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 123
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .line 124
    .local v6, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    .line 125
    .local v5, "isGroupChild":Z
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "groupKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 127
    .local v3, "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    if-nez v3, :cond_0

    .line 128
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .end local v3    # "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;-><init>()V

    .line 129
    .restart local v3    # "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_0
    if-eqz v5, :cond_2

    .line 132
    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v7, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 135
    :cond_2
    iput-object p1, v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 136
    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v7

    iput-boolean v7, v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    .line 137
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    .line 138
    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 140
    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 141
    .local v2, "childrenCopy":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 142
    .local v0, "child":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryBecomingChild(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_1

    .line 144
    .end local v0    # "child":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    invoke-interface {v7, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;->onGroupCreatedFromChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    goto :goto_0
.end method

.method public onEntryRemoved(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2
    .param p1, "removed"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 77
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public onEntryUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 8
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "oldNotification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v6, 0x0

    .line 219
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "oldKey":Ljava/lang/String;
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "newKey":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x0

    .line 222
    .local v0, "groupKeysChanged":Z
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    .line 223
    .local v4, "wasGroupChild":Z
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    .line 224
    .local v1, "isGroupChild":Z
    if-nez v0, :cond_3

    if-ne v4, v1, :cond_3

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsUpdatingUnchangedGroup:Z

    .line 225
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 226
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 228
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 229
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsUpdatingUnchangedGroup:Z

    .line 230
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isIsolated(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 231
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    if-eqz v0, :cond_1

    .line 233
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    .line 234
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    .line 218
    :cond_1
    :goto_2
    return-void

    .line 221
    .end local v0    # "groupKeysChanged":Z
    .end local v1    # "isGroupChild":Z
    .end local v4    # "wasGroupChild":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "groupKeysChanged":Z
    goto :goto_0

    .restart local v1    # "isGroupChild":Z
    .restart local v4    # "wasGroupChild":Z
    :cond_3
    move v5, v6

    .line 224
    goto :goto_1

    .line 236
    :cond_4
    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    .line 237
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryBecomingChild(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_2
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 404
    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 0
    .param p1, "inPinnedMode"    # Z

    .prologue
    .line 400
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "isHeadsUp"    # Z

    .prologue
    .line 413
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .line 414
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 415
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->shouldIsolate(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 419
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 426
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    .line 427
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;->onGroupsChanged()V

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->handleSuppressedSummaryHeadsUpped(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_0

    .line 432
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 435
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 437
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;->onGroupsChanged()V

    goto :goto_0
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 408
    return-void
.end method

.method public setGroupExpanded(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "expanded"    # Z

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 63
    .local v0, "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    if-nez v0, :cond_0

    .line 64
    return-void

    .line 66
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Z)V

    .line 61
    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0
    .param p1, "headsUpManager"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 487
    return-void
.end method

.method public setOnGroupChangeListener(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    .line 49
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    .line 272
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mBarState:I

    if-ne v0, p1, :cond_0

    .line 273
    return-void

    .line 275
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mBarState:I

    .line 276
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->collapseAllGroups()V

    .line 271
    :cond_1
    return-void
.end method

.method public toggleGroupExpansion(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v1, 0x0

    .line 366
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    .line 367
    .local v0, "group":Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;
    if-nez v0, :cond_0

    .line 368
    return v1

    .line 370
    :cond_0
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    if-eqz v2, :cond_1

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Z)V

    .line 371
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    return v1

    .line 370
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
