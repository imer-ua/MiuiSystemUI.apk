.class final Lcom/android/systemui/recents/misc/RecentsPushEventHelper$5;
.super Ljava/lang/Object;
.source "RecentsPushEventHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendOneKeyCleanEvent(JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$freeAtFirst:J

.field final synthetic val$freeAtLast:J

.field final synthetic val$total:J


# direct methods
.method constructor <init>(JJJ)V
    .locals 1
    .param p1, "val$freeAtFirst"    # J
    .param p3, "val$freeAtLast"    # J
    .param p5, "val$total"    # J

    .prologue
    .line 218
    iput-wide p1, p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$5;->val$freeAtFirst:J

    iput-wide p3, p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$5;->val$freeAtLast:J

    iput-wide p5, p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$5;->val$total:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 221
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 223
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "freeMemoryBeforeClean"

    iget-wide v4, p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$5;->val$freeAtFirst:J

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 224
    const-string/jumbo v2, "freeMemoryAfterClean"

    iget-wide v4, p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$5;->val$freeAtLast:J

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 225
    const-string/jumbo v2, "totalMemory"

    iget-wide v4, p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$5;->val$total:J

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    const-string/jumbo v2, "oneKeyCleanStart"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
