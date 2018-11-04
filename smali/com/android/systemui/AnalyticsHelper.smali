.class public Lcom/android/systemui/AnalyticsHelper;
.super Ljava/lang/Object;
.source "AnalyticsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/AnalyticsHelper$1;
    }
.end annotation


# static fields
.field private static mAnalyticsReceiver:Landroid/content/BroadcastReceiver;

.field private static sCalendar:Ljava/util/Calendar;

.field private static sExpandStartTime:J

.field private static sStatusBarExpandParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/AnalyticsHelper;->sCalendar:Ljava/util/Calendar;

    .line 112
    new-instance v0, Lcom/android/systemui/AnalyticsHelper$1;

    invoke-direct {v0}, Lcom/android/systemui/AnalyticsHelper$1;-><init>()V

    sput-object v0, Lcom/android/systemui/AnalyticsHelper;->mAnalyticsReceiver:Landroid/content/BroadcastReceiver;

    .line 306
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/systemui/AnalyticsHelper;->sExpandStartTime:J

    .line 307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/AnalyticsHelper;->sStatusBarExpandParam:Ljava/util/Map;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getHour()Ljava/lang/String;
    .locals 4

    .prologue
    .line 298
    sget-object v0, Lcom/android/systemui/AnalyticsHelper;->sCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 299
    sget-object v0, Lcom/android/systemui/AnalyticsHelper;->sCalendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static registerReceiver(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 134
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 135
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "com.android.systemui.action_track_settings_app_notifications"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v0, "com.android.systemui.action_track_settings_toggle_positions"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string/jumbo v0, "com.android.systemui.action_track_settings_count_event"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    sget-object v1, Lcom/android/systemui/AnalyticsHelper;->mAnalyticsReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 133
    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
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
    .line 146
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "page"

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->sQsExpanded:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "dual"

    :goto_0
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string/jumbo v0, "alogrithm"

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;->getFoldBucket()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-class v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 145
    return-void

    .line 146
    :cond_0
    const-string/jumbo v0, "single"

    goto :goto_0
.end method

.method public static trackActionClick(Ljava/lang/String;I)V
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "actionIndex"    # I

    .prologue
    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 232
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "pkg"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string/jumbo v1, "time"

    invoke-static {}, Lcom/android/systemui/AnalyticsHelper;->getHour()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string/jumbo v1, "actionIndex"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string/jumbo v1, "systemui_notifications"

    const-string/jumbo v2, "systemui_notification_action_click"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 230
    return-void
.end method

.method public static trackFoldClick()V
    .locals 3

    .prologue
    .line 285
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 286
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "time"

    invoke-static {}, Lcom/android/systemui/AnalyticsHelper;->getHour()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string/jumbo v1, "systemui_notifications"

    const-string/jumbo v2, "systemui_fold_click"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 284
    return-void
.end method

.method public static trackMaxAspectChangedEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 436
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 437
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string/jumbo v1, "systemui_settings_status"

    invoke-static {v1, v0}, Lcom/android/systemui/AnalyticsHelper;->trackSettingsCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 435
    return-void
.end method

.method public static trackNotificationBlock(Ljava/lang/String;)V
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 201
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "pkg"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string/jumbo v1, "block_time"

    invoke-static {}, Lcom/android/systemui/AnalyticsHelper;->getHour()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string/jumbo v1, "block_from"

    const-string/jumbo v2, "settings"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string/jumbo v1, "systemui_notifications"

    const-string/jumbo v2, "systemui_notification_block"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 199
    return-void
.end method

.method public static trackNotificationBlock(Ljava/lang/String;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
    .locals 6
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "pkg"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string/jumbo v1, "base_pkg"

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string/jumbo v1, "block_time"

    invoke-static {}, Lcom/android/systemui/AnalyticsHelper;->getHour()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string/jumbo v1, "when"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-wide v4, v3, Landroid/app/Notification;->when:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string/jumbo v1, "post_time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPostTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string/jumbo v1, "id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string/jumbo v1, "tag"

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string/jumbo v1, "block_from"

    const-string/jumbo v2, "systemui"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string/jumbo v1, "systemui_notifications"

    const-string/jumbo v2, "systemui_notification_block"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 207
    return-void
.end method

.method public static trackNotificationClearAll(I)V
    .locals 4
    .param p0, "clearableCount"    # I

    .prologue
    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 279
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "actualClearCount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string/jumbo v1, "systemui_notifications"

    const-string/jumbo v2, "systemui_notification_clear_all"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 277
    return-void
.end method

.method public static trackNotificationClick(Ljava/lang/String;I)V
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "pkg"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string/jumbo v1, "time"

    invoke-static {}, Lcom/android/systemui/AnalyticsHelper;->getHour()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string/jumbo v1, "index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string/jumbo v1, "systemui_notifications"

    const-string/jumbo v2, "systemui_notification_click_google"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 227
    const-class v1, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    invoke-virtual {v1, p0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->addClick(Ljava/lang/String;)Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    .line 220
    return-void
.end method

.method public static trackNotificationRemove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "removeWay"    # Ljava/lang/String;

    .prologue
    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 266
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "pkg"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string/jumbo v1, "removeWay"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string/jumbo v1, "systemui_notifications"

    const-string/jumbo v2, "systemui_notification_remove"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 264
    return-void
.end method

.method public static trackSetImportance(Ljava/lang/String;I)V
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "newValue"    # I

    .prologue
    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 240
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "pkg"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string/jumbo v1, "newValue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string/jumbo v1, "systemui_notifications"

    const-string/jumbo v2, "systemui_notification_set_importance"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 238
    return-void
.end method

.method public static trackSettings(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    const-string/jumbo v1, "systemui_settings"

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 445
    return-void
.end method

.method public static trackSettingsAppNotifications()V
    .locals 3

    .prologue
    .line 418
    const-string/jumbo v0, "systemui_settings"

    const-string/jumbo v1, "systemui_settings_app_notifications"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/systemui/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 417
    return-void
.end method

.method public static trackSettingsCountEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    const-string/jumbo v1, "systemui_settings"

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 441
    return-void
.end method

.method public static trackSettingsTogglePositions(Ljava/lang/String;)V
    .locals 3
    .param p0, "from"    # Ljava/lang/String;

    .prologue
    .line 430
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 431
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "from"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const-string/jumbo v1, "systemui_settings"

    const-string/jumbo v2, "systemui_settings_toggle_positions"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 429
    return-void
.end method

.method public static trackStatusBarCollapse(Ljava/lang/String;)V
    .locals 3
    .param p0, "collapseWay"    # Ljava/lang/String;

    .prologue
    .line 332
    sget-boolean v1, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v1, :cond_0

    .line 333
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 334
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "collapseWay"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string/jumbo v1, "systemui_statusbar"

    const-string/jumbo v2, "systemui_statusbar_collapse"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 331
    .end local v0    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
