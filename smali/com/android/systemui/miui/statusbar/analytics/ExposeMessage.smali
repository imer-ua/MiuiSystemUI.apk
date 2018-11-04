.class public Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;
.super Ljava/lang/Object;
.source "ExposeMessage.java"


# instance fields
.field private final EXPOSE_TIMESTAMP:Ljava/lang/String;

.field private final IS_GROUP_EXPANDED:Ljava/lang/String;

.field private final IS_HEADS_UP:Ljava/lang/String;

.field private final IS_KEYGUARD:Ljava/lang/String;

.field private final LENGTH:Ljava/lang/String;

.field private mExposeTimestamp:J

.field private mIsGroupExpanded:Z

.field private mIsHeadsUp:Z

.field private mIsKeyguard:Z

.field private mLength:J


# direct methods
.method public constructor <init>(JZZZ)V
    .locals 5
    .param p1, "exposeTimestamp"    # J
    .param p3, "isGroupExpanded"    # Z
    .param p4, "isHeadsUp"    # Z
    .param p5, "isKeyguard"    # Z

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string/jumbo v0, "expose_timestamp"

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;->EXPOSE_TIMESTAMP:Ljava/lang/String;

    .line 8
    const-string/jumbo v0, "length"

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;->LENGTH:Ljava/lang/String;

    .line 9
    const-string/jumbo v0, "is_group_expanded"

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;->IS_GROUP_EXPANDED:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, "is_heads_up"

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;->IS_HEADS_UP:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, "is_keyguard"

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;->IS_KEYGUARD:Ljava/lang/String;

    .line 20
    iput-wide p1, p0, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;->mExposeTimestamp:J

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;->mExposeTimestamp:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;->mLength:J

    .line 22
    iput-boolean p3, p0, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;->mIsGroupExpanded:Z

    .line 23
    iput-boolean p4, p0, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;->mIsHeadsUp:Z

    .line 24
    iput-boolean p5, p0, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;->mIsKeyguard:Z

    .line 19
    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 28
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 29
    .local v1, "jsonObject":Lorg/json/JSONObject;
    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;->mLength:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 30
    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;->mExposeTimestamp:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 32
    :try_start_0
    const-string/jumbo v2, "expose_timestamp"

    iget-wide v4, p0, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;->mExposeTimestamp:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_0
    :goto_0
    :try_start_1
    const-string/jumbo v2, "length"

    iget-wide v4, p0, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;->mLength:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    :goto_1
    :try_start_2
    const-string/jumbo v2, "is_group_expanded"

    iget-boolean v3, p0, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;->mIsGroupExpanded:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 51
    :goto_2
    :try_start_3
    const-string/jumbo v2, "is_heads_up"

    iget-boolean v3, p0, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;->mIsHeadsUp:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 57
    :goto_3
    :try_start_4
    const-string/jumbo v2, "is_keyguard"

    iget-boolean v3, p0, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;->mIsKeyguard:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 62
    :cond_1
    :goto_4
    return-object v1

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 40
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 41
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 46
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 47
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 52
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v0

    .line 53
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 58
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v0

    .line 59
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4
.end method
