.class final Lcom/android/systemui/recents/misc/RecentsPushEventHelper$2;
.super Ljava/lang/Object;
.source "RecentsPushEventHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendMultiWindowEvent(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "val$name"    # Ljava/lang/String;
    .param p2, "val$data"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$2;->val$name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$2;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 95
    const-string/jumbo v2, "enterMultiWindow"

    iget-object v3, p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$2;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->-set2(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 100
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "id"

    invoke-static {}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->-get2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string/jumbo v2, "content"

    iget-object v3, p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$2;->val$data:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    const-string/jumbo v2, "multi_window"

    iget-object v3, p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$2;->val$name:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
