.class public Lcom/android/systemui/miui/statusbar/analytics/NotificationRemoveEvent;
.super Ljava/lang/Object;
.source "NotificationRemoveEvent.java"

# interfaces
.implements Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;


# instance fields
.field private mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

.field private mRemoveLocation:Ljava/lang/String;

.field private mRemoveTimestamp:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;Ljava/lang/String;)V
    .locals 2
    .param p1, "notificationEvent"    # Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;
    .param p2, "removeLocation"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationRemoveEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    .line 16
    iput-object p2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationRemoveEvent;->mRemoveLocation:Ljava/lang/String;

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationRemoveEvent;->mRemoveTimestamp:J

    .line 14
    return-void
.end method


# virtual methods
.method public getTinyData()Lcom/android/systemui/miui/statusbar/analytics/TinyData;
    .locals 5

    .prologue
    .line 48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/analytics/NotificationRemoveEvent;->wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/android/systemui/miui/statusbar/analytics/TinyData;

    const-string/jumbo v2, "notification"

    const-string/jumbo v3, "remove"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/miui/statusbar/analytics/TinyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 22
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationRemoveEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    if-eqz v1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationRemoveEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    invoke-virtual {v1, p1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 25
    :cond_0
    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationRemoveEvent;->mRemoveTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 27
    :try_start_0
    const-string/jumbo v1, "remove_timestamp"

    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationRemoveEvent;->mRemoveTimestamp:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_1
    :goto_0
    :try_start_1
    const-string/jumbo v1, "remove_location"

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationRemoveEvent;->mRemoveLocation:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 39
    :goto_1
    :try_start_2
    const-string/jumbo v1, "event"

    const-string/jumbo v2, "remove"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 43
    :goto_2
    return-object p1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 34
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 35
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 40
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 41
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method
