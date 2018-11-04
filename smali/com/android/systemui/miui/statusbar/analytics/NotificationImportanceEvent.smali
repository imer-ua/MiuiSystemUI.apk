.class public Lcom/android/systemui/miui/statusbar/analytics/NotificationImportanceEvent;
.super Ljava/lang/Object;
.source "NotificationImportanceEvent.java"

# interfaces
.implements Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;


# instance fields
.field private mImportance:I

.field private mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;I)V
    .locals 0
    .param p1, "notificationEvent"    # Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;
    .param p2, "importance"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationImportanceEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    .line 13
    iput p2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationImportanceEvent;->mImportance:I

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
    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/analytics/NotificationImportanceEvent;->wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 41
    new-instance v1, Lcom/android/systemui/miui/statusbar/analytics/TinyData;

    const-string/jumbo v2, "notification"

    const-string/jumbo v3, "set_importance"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/miui/statusbar/analytics/TinyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 18
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationImportanceEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    if-eqz v1, :cond_0

    .line 19
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationImportanceEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    invoke-virtual {v1, p1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 23
    :cond_0
    :try_start_0
    const-string/jumbo v1, "event"

    const-string/jumbo v2, "set_importance"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    iget v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationImportanceEvent;->mImportance:I

    if-eqz v1, :cond_1

    .line 30
    :try_start_1
    const-string/jumbo v1, "importance"

    iget v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationImportanceEvent;->mImportance:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    :cond_1
    :goto_1
    return-object p1

    .line 24
    :catch_0
    move-exception v0

    .line 25
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
