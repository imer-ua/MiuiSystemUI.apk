.class public Lcom/android/systemui/miui/statusbar/analytics/FoldClickEvent;
.super Lcom/android/systemui/miui/statusbar/analytics/FoldEvent;
.source "FoldClickEvent.java"


# instance fields
.field protected final CLICK_TIMESTAMP:Ljava/lang/String;

.field private mClickTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/analytics/FoldEvent;-><init>()V

    .line 11
    const-string/jumbo v0, "click_timestamp"

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/FoldClickEvent;->CLICK_TIMESTAMP:Ljava/lang/String;

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/miui/statusbar/analytics/FoldClickEvent;->mClickTimestamp:J

    .line 15
    return-void
.end method


# virtual methods
.method public getTinyData()Lcom/android/systemui/miui/statusbar/analytics/TinyData;
    .locals 5

    .prologue
    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 21
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/analytics/FoldClickEvent;->wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 22
    new-instance v1, Lcom/android/systemui/miui/statusbar/analytics/TinyData;

    const-string/jumbo v2, "notification"

    const-string/jumbo v3, "click"

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
    invoke-super {p0, p1}, Lcom/android/systemui/miui/statusbar/analytics/FoldEvent;->wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 29
    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/analytics/FoldClickEvent;->mClickTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 31
    :try_start_0
    const-string/jumbo v1, "click_timestamp"

    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/analytics/FoldClickEvent;->mClickTimestamp:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_0
    :goto_0
    :try_start_1
    const-string/jumbo v1, "event"

    const-string/jumbo v2, "click"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    :goto_1
    return-object p1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 39
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 40
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
