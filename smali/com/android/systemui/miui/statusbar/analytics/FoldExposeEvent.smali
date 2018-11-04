.class public Lcom/android/systemui/miui/statusbar/analytics/FoldExposeEvent;
.super Lcom/android/systemui/miui/statusbar/analytics/FoldEvent;
.source "FoldExposeEvent.java"


# instance fields
.field private messageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "exposeMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;>;"
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/analytics/FoldEvent;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/FoldExposeEvent;->messageList:Ljava/util/List;

    .line 19
    return-void
.end method


# virtual methods
.method public getTinyData()Lcom/android/systemui/miui/statusbar/analytics/TinyData;
    .locals 5

    .prologue
    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 25
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/analytics/FoldExposeEvent;->wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 26
    new-instance v1, Lcom/android/systemui/miui/statusbar/analytics/TinyData;

    const-string/jumbo v2, "notification"

    const-string/jumbo v3, "expose"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/miui/statusbar/analytics/TinyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/android/systemui/miui/statusbar/analytics/FoldEvent;->wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 33
    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/analytics/FoldExposeEvent;->messageList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 34
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 35
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/analytics/FoldExposeEvent;->messageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 36
    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/analytics/FoldExposeEvent;->messageList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_0
    :try_start_0
    const-string/jumbo v3, "messageList"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    :goto_1
    :try_start_1
    const-string/jumbo v3, "event"

    const-string/jumbo v4, "expose"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    :goto_2
    return-object p1

    .line 40
    .restart local v1    # "i":I
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 47
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    .line 48
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method
