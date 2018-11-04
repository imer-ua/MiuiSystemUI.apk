.class public Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;
.super Ljava/lang/Object;
.source "RankUtil.java"


# static fields
.field private static final SUPPORT_HIGH_PRIORITY:Z

.field public static UNFLOD_LIMIT:I

.field public static sGap:J

.field private static sHighPriorityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sIMPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastNotificationAddedTime:J

.field public static sNewNotification:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-wide/32 v0, 0x6ddd00

    sput-wide v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sGap:J

    .line 19
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sNewNotification:J

    .line 20
    const/4 v0, 0x3

    sput v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->UNFLOD_LIMIT:I

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->SUPPORT_HIGH_PRIORITY:Z

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sLastNotificationAddedTime:J

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sIMPackages:Ljava/util/List;

    .line 27
    sget-object v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sIMPackages:Ljava/util/List;

    const-string/jumbo v1, "com.android.mms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sIMPackages:Ljava/util/List;

    const-string/jumbo v1, "com.tencent.mobileqq"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sIMPackages:Ljava/util/List;

    const-string/jumbo v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sHighPriorityMap:Ljava/util/HashMap;

    .line 16
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I
    .locals 2
    .param p0, "a"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p1, "b"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "headsUpManager"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .prologue
    .line 35
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v0

    .line 36
    .local v0, "isHeadsUp":Z
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 37
    if-eqz v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 38
    :cond_1
    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v1

    return v1

    .line 41
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public static compareHighPriority(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 5
    .param p0, "a"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p1, "b"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v4, 0x0

    .line 45
    sget-boolean v2, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->SUPPORT_HIGH_PRIORITY:Z

    if-nez v2, :cond_0

    .line 46
    return v4

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->isHighPriority(Ljava/lang/String;I)Z

    move-result v0

    .line 50
    .local v0, "aHighPriority":Z
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->isHighPriority(Ljava/lang/String;I)Z

    move-result v1

    .line 51
    .local v1, "bHighPriority":Z
    if-eq v0, v1, :cond_2

    .line 52
    if-eqz v0, :cond_1

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 54
    :cond_2
    return v4
.end method

.method public static compareIM(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 3
    .param p0, "a"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p1, "b"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 88
    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->isIMNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    .line 89
    .local v0, "aIM":Z
    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->isIMNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    .line 90
    .local v1, "bIM":Z
    if-eq v0, v1, :cond_1

    .line 91
    if-eqz v0, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 93
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static compareMedia(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;IILjava/lang/String;)I
    .locals 5
    .param p0, "a"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p1, "b"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "aImportance"    # I
    .param p3, "bImportance"    # I
    .param p4, "activeMediaNotificationKey"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 98
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 99
    if-le p2, v2, :cond_1

    const/4 v0, 0x1

    .line 100
    .local v0, "aMedia":Z
    :goto_0
    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 101
    if-le p3, v2, :cond_3

    move v1, v2

    .line 102
    .local v1, "bMedia":Z
    :goto_1
    if-eq v0, v1, :cond_5

    .line 103
    if-eqz v0, :cond_0

    const/4 v2, -0x1

    :cond_0
    return v2

    .line 99
    .end local v0    # "aMedia":Z
    .end local v1    # "bMedia":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "aMedia":Z
    goto :goto_0

    .line 98
    .end local v0    # "aMedia":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "aMedia":Z
    goto :goto_0

    :cond_3
    move v1, v3

    .line 101
    goto :goto_1

    :cond_4
    move v1, v3

    .line 100
    goto :goto_1

    .line 105
    .restart local v1    # "bMedia":Z
    :cond_5
    return v3
.end method

.method public static compareNew(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 3
    .param p0, "a"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p1, "b"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->isNewNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    .line 80
    .local v0, "aNew":Z
    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->isNewNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    .line 81
    .local v1, "bNew":Z
    if-eq v0, v1, :cond_1

    .line 82
    if-eqz v0, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 84
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static compareRank(II)I
    .locals 1
    .param p0, "aRank"    # I
    .param p1, "bRank"    # I

    .prologue
    .line 119
    sub-int v0, p0, p1

    return v0
.end method

.method public static compareSystemMax(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;II)I
    .locals 3
    .param p0, "a"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p1, "b"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "aImportance"    # I
    .param p3, "bImportance"    # I

    .prologue
    .line 110
    invoke-static {p0, p2}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->isSystemMaxImportanceNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Z

    move-result v0

    .line 111
    .local v0, "aSystemMax":Z
    invoke-static {p1, p3}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->isSystemMaxImportanceNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Z

    move-result v1

    .line 112
    .local v1, "bSystemMax":Z
    if-eq v0, v1, :cond_1

    .line 113
    if-eqz v0, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 115
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private static isHighPriority(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 58
    sget-object v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sHighPriorityMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-static {p0, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->updateHighPriorityMap(Ljava/lang/String;I)V

    .line 61
    :cond_0
    sget-object v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sHighPriorityMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static isIMNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 2
    .param p0, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 129
    :cond_1
    sget-object v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sIMPackages:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isNewNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 6
    .param p0, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .line 134
    .local v0, "na":Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    sget-wide v2, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sLastNotificationAddedTime:J

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-wide v4, v1, Landroid/app/Notification;->when:J

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sNewNotification:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSystemMaxImportanceNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Z
    .locals 1
    .param p0, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p1, "importance"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateHighPriorityMap(Ljava/lang/String;I)V
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 65
    sget-boolean v2, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->SUPPORT_HIGH_PRIORITY:Z

    if-nez v2, :cond_0

    .line 66
    return-void

    .line 70
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/systemui/SystemUICompat;->isHighPriority(Ljava/lang/String;I)Z

    move-result v1

    .line 71
    .local v1, "isHighPriority":Z
    sget-object v2, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sHighPriorityMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "isHighPriority":Z
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sHighPriorityMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static updateLastNotificationAddedTime()V
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sLastNotificationAddedTime:J

    .line 137
    return-void
.end method
