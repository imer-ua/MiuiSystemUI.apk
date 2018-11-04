.class public Lcom/android/systemui/miui/statusbar/analytics/NotificationArriveEvent;
.super Ljava/lang/Object;
.source "NotificationArriveEvent.java"

# interfaces
.implements Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;


# instance fields
.field protected final ARRIVE_TIMESTAMP:Ljava/lang/String;

.field private mArriveTimestamp:J

.field private mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;)V
    .locals 2
    .param p1, "notificationEvent"    # Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string/jumbo v0, "arrive_timestamp"

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationArriveEvent;->ARRIVE_TIMESTAMP:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationArriveEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationArriveEvent;->mArriveTimestamp:J

    .line 11
    return-void
.end method


# virtual methods
.method public getTinyData()Lcom/android/systemui/miui/statusbar/analytics/TinyData;
    .locals 5

    .prologue
    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 40
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/analytics/NotificationArriveEvent;->wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 41
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
    .line 18
    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationArriveEvent;->mArriveTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 20
    :try_start_0
    const-string/jumbo v1, "arrive_timestamp"

    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationArriveEvent;->mArriveTimestamp:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationArriveEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    if-eqz v1, :cond_1

    .line 27
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationArriveEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    invoke-virtual {v1, p1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 30
    :cond_1
    :try_start_1
    const-string/jumbo v1, "event"

    const-string/jumbo v2, "arrive"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    :goto_1
    return-object p1

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 31
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 32
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
