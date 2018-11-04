.class public Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;
.super Ljava/lang/Object;
.source "SystemUIStat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat$WorkHandler;
    }
.end annotation


# static fields
.field private static DEBUG:Z


# instance fields
.field private final NOTIFICATION_TIME_INTERVAL:J

.field private mBgHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mExposeMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mFoldViewVisibleTime:J

.field private mLastNotificationTime:J


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mLastNotificationTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->trackAppNotificationCount(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/systemui/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->DEBUG:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->NOTIFICATION_TIME_INTERVAL:J

    .line 70
    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mContext:Landroid/content/Context;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mExposeMessages:Ljava/util/List;

    .line 72
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SystemUIStat"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 73
    .local v0, "bgThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 74
    new-instance v1, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat$WorkHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat$WorkHandler;-><init>(Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mBgHandler:Landroid/os/Handler;

    .line 75
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mBgHandler:Landroid/os/Handler;

    const/16 v2, 0x3ee

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 69
    return-void
.end method

.method private markAllNotificationInVisibleAndExpose(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 10
    .param p1, "stackScrollLayout"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    const/4 v9, 0x0

    .line 284
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v6

    .line 285
    .local v6, "numChildren":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 286
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, "child":Landroid/view/View;
    instance-of v8, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v8, :cond_1

    .line 285
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v7, v0

    .line 290
    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 291
    .local v7, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    .line 292
    .local v3, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual {p0, v3, v9}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onVisibilityChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 293
    invoke-virtual {p0, v3}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->postExposeEventIfNeed(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 295
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 296
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v5

    .line 297
    .local v5, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    if-eqz v5, :cond_0

    .line 298
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "childRow$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 299
    .local v1, "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    .line 300
    invoke-virtual {p0, v3, v9}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onVisibilityChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 301
    invoke-virtual {p0, v3}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->postExposeEventIfNeed(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_1

    .line 308
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "childRow$iterator":Ljava/util/Iterator;
    .end local v3    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v5    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v7    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    invoke-virtual {p0, v9}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onFoldViewVisibilityChanged(Z)V

    .line 309
    iget-object v8, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mExposeMessages:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 310
    new-instance v8, Lcom/android/systemui/miui/statusbar/analytics/FoldExposeEvent;

    iget-object v9, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mExposeMessages:Ljava/util/List;

    invoke-direct {v8, v9}, Lcom/android/systemui/miui/statusbar/analytics/FoldExposeEvent;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v8}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->uploadTinyData(Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;)V

    .line 311
    iget-object v8, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mExposeMessages:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 283
    :cond_3
    return-void
.end method

.method private onRemoveSingle(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/String;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "removeLocation"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .line 152
    .local v0, "notification":Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    new-instance v1, Lcom/android/systemui/miui/statusbar/analytics/NotificationRemoveEvent;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/android/systemui/miui/statusbar/analytics/NotificationRemoveEvent;-><init>(Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->uploadTinyData(Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;)V

    .line 153
    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "right_swipe"

    invoke-static {v1, v2}, Lcom/android/systemui/AnalyticsHelper;->trackNotificationRemove(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/systemui/AdTracker;->trackRemove(Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 155
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onVisibilityChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->postExposeEventIfNeed(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 150
    return-void
.end method

.method private sendADBlockEvent(Lcom/android/systemui/miui/statusbar/analytics/ADBlock;)V
    .locals 2
    .param p1, "adBlock"    # Lcom/android/systemui/miui/statusbar/analytics/ADBlock;

    .prologue
    .line 371
    iget-object v0, p1, Lcom/android/systemui/miui/statusbar/analytics/ADBlock;->adId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mBgHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 370
    :cond_0
    return-void
.end method

.method private sendBlockNotificationEvent(Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "notificationEvent"    # Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;
    .param p2, "blockLocation"    # Ljava/lang/String;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "adId"    # Ljava/lang/String;

    .prologue
    .line 355
    new-instance v1, Lcom/android/systemui/miui/statusbar/analytics/NotificationBlockEvent;

    invoke-direct {v1, p1, p3, p2}, Lcom/android/systemui/miui/statusbar/analytics/NotificationBlockEvent;-><init>(Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->uploadTinyData(Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;)V

    .line 357
    const-string/jumbo v1, "com.miui.systemAdSolution"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    new-instance v0, Lcom/android/systemui/miui/statusbar/analytics/ADBlock;

    invoke-direct {v0}, Lcom/android/systemui/miui/statusbar/analytics/ADBlock;-><init>()V

    .line 359
    .local v0, "adBlock":Lcom/android/systemui/miui/statusbar/analytics/ADBlock;
    iput-object p4, v0, Lcom/android/systemui/miui/statusbar/analytics/ADBlock;->adId:Ljava/lang/String;

    .line 360
    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->sendADBlockEvent(Lcom/android/systemui/miui/statusbar/analytics/ADBlock;)V

    .line 354
    .end local v0    # "adBlock":Lcom/android/systemui/miui/statusbar/analytics/ADBlock;
    :cond_0
    return-void
.end method

.method private trackAppNotificationCount(Ljava/lang/String;)V
    .locals 18
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 198
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mContext:Landroid/content/Context;

    .line 199
    const-string/jumbo v13, "notification_count"

    const/4 v14, 0x0

    .line 198
    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 200
    .local v10, "share":Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-wide/16 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v10, v0, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 202
    .local v4, "current":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mLastNotificationTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mLastNotificationTime:J

    cmp-long v12, v12, v4

    if-lez v12, :cond_2

    .line 203
    :cond_0
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mLastNotificationTime:J

    .line 204
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string/jumbo v13, "pref_notification_time"

    invoke-interface {v12, v13, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    :cond_1
    :goto_0
    return-void

    .line 205
    :cond_2
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mLastNotificationTime:J

    sub-long v12, v4, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->NOTIFICATION_TIME_INTERVAL:J

    cmp-long v12, v12, v14

    if-lez v12, :cond_1

    .line 206
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mLastNotificationTime:J

    .line 207
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string/jumbo v13, "pref_notification_time"

    invoke-interface {v12, v13, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    :try_start_0
    invoke-interface {v10}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 210
    .local v2, "countMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v2, :cond_3

    .line 211
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 212
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 213
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 214
    .local v11, "value":Ljava/lang/Long;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 215
    .local v9, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v12, "pkg"

    invoke-interface {v9, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string/jumbo v12, "alogrithm"

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;->getFoldBucket()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string/jumbo v12, "systemui_notifications"

    const-string/jumbo v13, "systemui_notification_add_count"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v11, v9}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    goto :goto_1

    .line 221
    .end local v2    # "countMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v7    # "entry$iterator":Ljava/util/Iterator;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "value":Ljava/lang/Long;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 220
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "countMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_3
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private uploadTinyData(Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;

    .prologue
    .line 365
    invoke-static {}, Lcom/android/systemui/Util;->isUserExperienceProgramEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mBgHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 364
    :cond_0
    return-void
.end method


# virtual methods
.method public onActionClick(Lcom/android/systemui/miui/statusbar/ExpandedNotification;I)V
    .locals 2
    .param p1, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    .param p2, "actionIndex"    # I

    .prologue
    .line 236
    new-instance v0, Lcom/android/systemui/miui/statusbar/analytics/ActionClickEvent;

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/systemui/miui/statusbar/analytics/ActionClickEvent;-><init>(Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;I)V

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->uploadTinyData(Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;)V

    .line 237
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/systemui/AnalyticsHelper;->trackActionClick(Ljava/lang/String;I)V

    .line 235
    return-void
.end method

.method public onArrive(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
    .locals 3
    .param p1, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    .line 193
    new-instance v0, Lcom/android/systemui/miui/statusbar/analytics/NotificationArriveEvent;

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationArriveEvent;-><init>(Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->uploadTinyData(Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3ed

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 192
    return-void
.end method

.method public onBlock(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
    .locals 4
    .param p1, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    .line 171
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    move-result-object v0

    .line 172
    const-string/jumbo v1, "statusbar"

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/miui/statusbar/notification/PushEvents;->getADId(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->sendBlockNotificationEvent(Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/AnalyticsHelper;->trackNotificationBlock(Ljava/lang/String;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    .line 170
    return-void
.end method

.method public onBlock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "messageId"    # Ljava/lang/String;

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "adId":Ljava/lang/String;
    const-string/jumbo v1, "com.miui.systemAdSolution"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.miui.msa.global"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    :cond_0
    move-object v0, p2

    .line 185
    .end local v0    # "adId":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "settings"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1, p1, v0}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->sendBlockNotificationEvent(Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {p1}, Lcom/android/systemui/AnalyticsHelper;->trackNotificationBlock(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public onClick(Lcom/android/systemui/miui/statusbar/ExpandedNotification;ZZI)V
    .locals 2
    .param p1, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    .param p2, "floatNotification"    # Z
    .param p3, "keyguardNotification"    # Z
    .param p4, "index"    # I

    .prologue
    .line 231
    new-instance v0, Lcom/android/systemui/miui/statusbar/analytics/NotificationClickEvent;

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/android/systemui/miui/statusbar/analytics/NotificationClickEvent;-><init>(Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;ZZ)V

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->uploadTinyData(Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;)V

    .line 232
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/android/systemui/AnalyticsHelper;->trackNotificationClick(Ljava/lang/String;I)V

    .line 230
    return-void
.end method

.method public onCloseFold(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p1, "stackScrollLayout"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->markAllNotificationInVisibleAndExpose(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 340
    return-void
.end method

.method public onFoldViewVisibilityChanged(Z)V
    .locals 10
    .param p1, "visible"    # Z

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    .line 345
    if-eqz p1, :cond_1

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mFoldViewVisibleTime:J

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-wide v0, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mFoldViewVisibleTime:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mExposeMessages:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;

    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mFoldViewVisibleTime:J

    move v5, v4

    move v6, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;-><init>(JZZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    iput-wide v8, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mFoldViewVisibleTime:J

    goto :goto_0
.end method

.method public onOpenFold(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 1
    .param p1, "stackScrollLayout"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->markAllNotificationInVisibleAndExpose(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 333
    new-instance v0, Lcom/android/systemui/miui/statusbar/analytics/FoldClickEvent;

    invoke-direct {v0}, Lcom/android/systemui/miui/statusbar/analytics/FoldClickEvent;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->uploadTinyData(Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;)V

    .line 334
    invoke-static {}, Lcom/android/systemui/AnalyticsHelper;->trackFoldClick()V

    .line 331
    return-void
.end method

.method public onPanelCollapsed(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p1, "stackScrollLayout"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->markAllNotificationInVisibleAndExpose(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 279
    return-void
.end method

.method public onRemove(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/String;)V
    .locals 4
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "removeLocation"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onRemoveSingle(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    .line 142
    .local v2, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    if-eqz v2, :cond_0

    .line 143
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 144
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onRemoveSingle(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "child$iterator":Ljava/util/Iterator;
    .end local v2    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_0
    return-void
.end method

.method public onRemoveAll(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
    .locals 3
    .param p1, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    .line 163
    new-instance v0, Lcom/android/systemui/miui/statusbar/analytics/NotificationRemoveAllEvent;

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    move-result-object v1

    const-string/jumbo v2, "statusbar"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/miui/statusbar/analytics/NotificationRemoveAllEvent;-><init>(Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->uploadTinyData(Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;)V

    .line 164
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "click_clear_button"

    invoke-static {v0, v1}, Lcom/android/systemui/AnalyticsHelper;->trackNotificationRemove(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public onSetImportance(Lcom/android/systemui/miui/statusbar/ExpandedNotification;I)V
    .locals 2
    .param p1, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    .param p2, "importance"    # I

    .prologue
    .line 244
    new-instance v0, Lcom/android/systemui/miui/statusbar/analytics/NotificationImportanceEvent;

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/systemui/miui/statusbar/analytics/NotificationImportanceEvent;-><init>(Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;I)V

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->uploadTinyData(Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;)V

    .line 245
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/systemui/AnalyticsHelper;->trackSetImportance(Ljava/lang/String;I)V

    .line 243
    return-void
.end method

.method public onVisibilityChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 10
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "visible"    # Z

    .prologue
    const-wide/16 v8, 0x0

    .line 249
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSeen:Z

    if-eq p2, v0, :cond_4

    .line 250
    if-eqz p2, :cond_3

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSeen:Z

    .line 252
    iget-wide v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->seeTime:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_0

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->seeTime:J

    .line 255
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isGroupExpandedWhenExpose:Z

    .line 257
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isHeadsUpWhenExpose:Z

    .line 258
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isKeyguardWhenExpose:Z

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/AdTracker;->trackShow(Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 248
    :cond_2
    :goto_0
    return-void

    .line 262
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSeen:Z

    .line 263
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->messageList:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;

    iget-wide v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->seeTime:J

    iget-boolean v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isGroupExpandedWhenExpose:Z

    .line 264
    iget-boolean v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isHeadsUpWhenExpose:Z

    iget-boolean v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isKeyguardWhenExpose:Z

    .line 263
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;-><init>(JZZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iput-wide v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->seeTime:J

    goto :goto_0

    .line 267
    :cond_4
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isGroupExpandedWhenExpose:Z

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 269
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->messageList:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;

    iget-wide v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->seeTime:J

    iget-boolean v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isGroupExpandedWhenExpose:Z

    .line 270
    iget-boolean v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isHeadsUpWhenExpose:Z

    iget-boolean v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isKeyguardWhenExpose:Z

    .line 269
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;-><init>(JZZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isGroupExpandedWhenExpose:Z

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->seeTime:J

    goto :goto_0
.end method

.method public postExposeEventIfNeed(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 319
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->messageList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->messageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    :cond_0
    return-void

    .line 323
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .line 324
    .local v0, "notification":Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    new-instance v1, Lcom/android/systemui/miui/statusbar/analytics/NotificationExposeEvent;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotificationEvent()Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->messageList:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/miui/statusbar/analytics/NotificationExposeEvent;-><init>(Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;Ljava/util/List;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->uploadTinyData(Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;)V

    .line 325
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->messageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 318
    return-void
.end method

.method public recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 4
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v1, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SystemUIStat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "track() category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 388
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 389
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 390
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 391
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 392
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mBgHandler:Landroid/os/Handler;

    const/16 v2, 0x3ec

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 385
    return-void
.end method

.method public recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v1, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SystemUIStat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "track() category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 379
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 380
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 381
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 382
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->mBgHandler:Landroid/os/Handler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 376
    return-void
.end method
