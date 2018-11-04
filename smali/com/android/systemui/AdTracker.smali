.class public Lcom/android/systemui/AdTracker;
.super Ljava/lang/Object;
.source "AdTracker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static JSONArrayToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 92
    if-nez p0, :cond_0

    .line 93
    return-object v3

    .line 95
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 98
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "adTracker"

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 103
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    return-object v2
.end method

.method public static gerMonitorUrl(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "jsonTag"    # Lorg/json/JSONObject;
    .param p1, "monitor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 71
    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 73
    .local v0, "url":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/android/systemui/AdTracker;->JSONArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 75
    .end local v0    # "url":Lorg/json/JSONArray;
    :cond_0
    return-object v1
.end method

.method public static getExtra(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p0, "jsonTag"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, 0x0

    .line 64
    if-eqz p0, :cond_0

    .line 65
    const-string/jumbo v0, "ex"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    return-object v0
.end method

.method public static getJSONTag(Lcom/android/systemui/statusbar/NotificationData$Entry;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 79
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "tag":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "adTracker"

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private static trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/util/List;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p4, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    return-void

    .line 45
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/analytics/Actions;->newAdAction(Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;

    move-result-object v0

    .line 46
    .local v0, "adAction":Lcom/xiaomi/analytics/AdAction;
    const-string/jumbo v3, "ex"

    invoke-virtual {v0, v3, p2}, Lcom/xiaomi/analytics/AdAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    .line 47
    const-string/jumbo v3, "v"

    const-string/jumbo v4, "sdk_1.0"

    invoke-virtual {v0, v3, v4}, Lcom/xiaomi/analytics/AdAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    .line 48
    const-string/jumbo v3, "e"

    invoke-virtual {v0, v3, p1}, Lcom/xiaomi/analytics/AdAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    .line 49
    const-string/jumbo v3, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/xiaomi/analytics/AdAction;->addParam(Ljava/lang/String;J)Lcom/xiaomi/analytics/Action;

    .line 50
    if-eqz p4, :cond_1

    .line 51
    invoke-virtual {v0, p4}, Lcom/xiaomi/analytics/AdAction;->addAdMonitor(Ljava/util/List;)Lcom/xiaomi/analytics/AdAction;

    .line 55
    :cond_1
    :try_start_0
    sget-boolean v3, Lcom/android/systemui/Constants;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v1, "systemui_pushstaging"

    .line 56
    .local v1, "configKey":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "adTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "config = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {p0, v1, v0}, Lcom/xiaomi/analytics/Analytics;->trackSystem(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/analytics/Action;)V

    .line 40
    .end local v1    # "configKey":Ljava/lang/String;
    :goto_1
    return-void

    .line 55
    :cond_2
    const-string/jumbo v1, "systemui_push"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "configKey":Ljava/lang/String;
    goto :goto_0

    .line 58
    .end local v1    # "configKey":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "adTracker"

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static trackRemove(Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 35
    invoke-static {p1}, Lcom/android/systemui/AdTracker;->getJSONTag(Lcom/android/systemui/statusbar/NotificationData$Entry;)Lorg/json/JSONObject;

    move-result-object v1

    .line 36
    .local v1, "json":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/android/systemui/AdTracker;->getExtra(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "extra":Ljava/lang/String;
    const-string/jumbo v2, "NOTIFICATION_REMOVE"

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, p1, v3}, Lcom/android/systemui/AdTracker;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/util/List;)V

    .line 34
    return-void
.end method

.method public static trackShow(Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 28
    invoke-static {p1}, Lcom/android/systemui/AdTracker;->getJSONTag(Lcom/android/systemui/statusbar/NotificationData$Entry;)Lorg/json/JSONObject;

    move-result-object v1

    .line 29
    .local v1, "json":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/android/systemui/AdTracker;->getExtra(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "extra":Ljava/lang/String;
    const-string/jumbo v3, "viewMonitorUrls"

    invoke-static {v1, v3}, Lcom/android/systemui/AdTracker;->gerMonitorUrl(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 31
    .local v2, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "VIEW"

    invoke-static {p0, v3, v0, p1, v2}, Lcom/android/systemui/AdTracker;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/util/List;)V

    .line 27
    return-void
.end method
