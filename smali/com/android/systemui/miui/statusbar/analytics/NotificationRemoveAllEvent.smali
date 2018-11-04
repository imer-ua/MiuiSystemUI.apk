.class public Lcom/android/systemui/miui/statusbar/analytics/NotificationRemoveAllEvent;
.super Ljava/lang/Object;
.source "NotificationRemoveAllEvent.java"

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
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationRemoveAllEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    .line 18
    iput-object p2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationRemoveAllEvent;->mRemoveLocation:Ljava/lang/String;

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationRemoveAllEvent;->mRemoveTimestamp:J

    .line 16
    return-void
.end method


# virtual methods
.method public getTinyData()Lcom/android/systemui/miui/statusbar/analytics/TinyData;
    .locals 5

    .prologue
    .line 56
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 57
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/analytics/NotificationRemoveAllEvent;->wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 58
    new-instance v1, Lcom/android/systemui/miui/statusbar/analytics/TinyData;

    const-string/jumbo v2, "notification"

    const-string/jumbo v3, "remove_all"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/miui/statusbar/analytics/TinyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 24
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationRemoveAllEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    if-eqz v1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationRemoveAllEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    invoke-virtual {v1, p1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 28
    :cond_0
    :try_start_0
    const-string/jumbo v1, "remove_location"

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationRemoveAllEvent;->mRemoveLocation:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationRemoveAllEvent;->mRemoveTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 34
    :try_start_1
    const-string/jumbo v1, "remove_timestamp"

    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationRemoveAllEvent;->mRemoveTimestamp:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    :cond_1
    :goto_1
    :try_start_2
    const-string/jumbo v1, "bucket"

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;->getFoldBucket()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 47
    :goto_2
    :try_start_3
    const-string/jumbo v1, "user_fold"

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isUserFold()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 51
    :goto_3
    return-object p1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 35
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 36
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 42
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 43
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 48
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v0

    .line 49
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method
