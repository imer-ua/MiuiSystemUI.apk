.class public abstract Lcom/android/systemui/miui/statusbar/analytics/FoldEvent;
.super Ljava/lang/Object;
.source "FoldEvent.java"

# interfaces
.implements Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 12
    :try_start_0
    const-string/jumbo v1, "is_fold_tips"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_0
    :try_start_1
    const-string/jumbo v1, "user_fold"

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isUserFold()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 24
    :goto_1
    :try_start_2
    const-string/jumbo v1, "notification_type"

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 29
    :goto_2
    return-object p1

    .line 13
    :catch_0
    move-exception v0

    .line 14
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 19
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 20
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 25
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 26
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method
