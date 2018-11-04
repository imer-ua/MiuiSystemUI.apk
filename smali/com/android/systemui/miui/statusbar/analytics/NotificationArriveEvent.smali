.class public Lcom/android/systemui/miui/statusbar/analytics/NotificationArriveEvent;
.super Ljava/lang/Object;
.source "NotificationArriveEvent.java"

# interfaces
.implements Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;


# instance fields
.field private mArriveTimestamp:J

.field private mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;)V
    .locals 2
    .param p1, "notificationEvent"    # Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationArriveEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationArriveEvent;->mArriveTimestamp:J

    .line 18
    return-void
.end method


# virtual methods
.method public getTinyData()Lcom/android/systemui/miui/statusbar/analytics/TinyData;
    .locals 5

    .prologue
    .line 74
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 75
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/analytics/NotificationArriveEvent;->wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 76
    new-instance v1, Lcom/android/systemui/miui/statusbar/analytics/TinyData;

    const-string/jumbo v2, "notification"

    const-string/jumbo v3, "arrive"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/miui/statusbar/analytics/TinyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 25
    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationArriveEvent;->mArriveTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 27
    :try_start_0
    const-string/jumbo v2, "arrive_timestamp"

    iget-wide v4, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationArriveEvent;->mArriveTimestamp:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5

    .line 33
    :cond_0
    :goto_0
    const-class v2, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    .line 35
    .local v1, "packageScoreCache":Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;
    :try_start_1
    const-string/jumbo v2, "total_click_count"

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->getTotalClickCount()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    .line 41
    :goto_1
    :try_start_2
    const-string/jumbo v2, "total_show_count"

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->getTotalShowCount()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 46
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationArriveEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    if-eqz v2, :cond_1

    .line 48
    :try_start_3
    const-string/jumbo v2, "package_click_count"

    .line 49
    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationArriveEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-virtual {v1, v3}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->getTotalClickCount(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 55
    :goto_3
    :try_start_4
    const-string/jumbo v2, "package_show_count"

    .line 56
    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationArriveEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-virtual {v1, v3}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->getTotalShowCount(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 61
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationArriveEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    invoke-virtual {v2, p1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 65
    :cond_1
    :try_start_5
    const-string/jumbo v2, "event"

    const-string/jumbo v3, "arrive"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 69
    :goto_5
    return-object p1

    .line 66
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    goto :goto_5

    .line 57
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Lorg/json/JSONException;
    goto :goto_4

    .line 50
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Lorg/json/JSONException;
    goto :goto_3

    .line 42
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Lorg/json/JSONException;
    goto :goto_2

    .line 36
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Lorg/json/JSONException;
    goto :goto_1

    .line 28
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "packageScoreCache":Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;
    :catch_5
    move-exception v0

    .restart local v0    # "e":Lorg/json/JSONException;
    goto :goto_0
.end method
