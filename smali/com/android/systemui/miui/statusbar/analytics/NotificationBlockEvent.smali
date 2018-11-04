.class public Lcom/android/systemui/miui/statusbar/analytics/NotificationBlockEvent;
.super Ljava/lang/Object;
.source "NotificationBlockEvent.java"

# interfaces
.implements Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;


# instance fields
.field protected final BLOCK_LOCATION:Ljava/lang/String;

.field protected final BLOCK_PACKAGE:Ljava/lang/String;

.field protected final BLOCK_TIMESTAMP:Ljava/lang/String;

.field private mBlockLocation:Ljava/lang/String;

.field private mBlockPackage:Ljava/lang/String;

.field private mBlockTimestamp:J

.field private mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "notificationEvent"    # Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;
    .param p2, "blockPackage"    # Ljava/lang/String;
    .param p3, "blockLocation"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string/jumbo v0, "block_package"

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationBlockEvent;->BLOCK_PACKAGE:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, "block_timestamp"

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationBlockEvent;->BLOCK_TIMESTAMP:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, "block_location"

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationBlockEvent;->BLOCK_LOCATION:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationBlockEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    .line 20
    iput-object p2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationBlockEvent;->mBlockPackage:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationBlockEvent;->mBlockLocation:Ljava/lang/String;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationBlockEvent;->mBlockTimestamp:J

    .line 18
    return-void
.end method


# virtual methods
.method public getTinyData()Lcom/android/systemui/miui/statusbar/analytics/TinyData;
    .locals 5

    .prologue
    .line 66
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 67
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/analytics/NotificationBlockEvent;->wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 68
    new-instance v1, Lcom/android/systemui/miui/statusbar/analytics/TinyData;

    const-string/jumbo v2, "notification"

    const-string/jumbo v3, "block"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/miui/statusbar/analytics/TinyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 27
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationBlockEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    if-eqz v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationBlockEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    invoke-virtual {v1, p1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationBlockEvent;->mBlockPackage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 33
    :try_start_0
    const-string/jumbo v1, "block_package"

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationBlockEvent;->mBlockPackage:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 39
    :cond_1
    :goto_0
    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationBlockEvent;->mBlockTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 41
    :try_start_1
    const-string/jumbo v1, "block_timestamp"

    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationBlockEvent;->mBlockTimestamp:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 47
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationBlockEvent;->mBlockLocation:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 49
    :try_start_2
    const-string/jumbo v1, "block_location"

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationBlockEvent;->mBlockLocation:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 56
    :cond_3
    :goto_2
    :try_start_3
    const-string/jumbo v1, "event"

    const-string/jumbo v2, "block"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 61
    :goto_3
    return-object p1

    .line 57
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    goto :goto_3

    .line 50
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Lorg/json/JSONException;
    goto :goto_2

    .line 42
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Lorg/json/JSONException;
    goto :goto_1

    .line 34
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Lorg/json/JSONException;
    goto :goto_0
.end method
