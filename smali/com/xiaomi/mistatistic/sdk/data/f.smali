.class public abstract Lcom/xiaomi/mistatistic/sdk/data/f;
.super Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;
.source "CustomNumericEvent.java"


# instance fields
.field protected a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/f;->b:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/data/f;->c:Ljava/lang/String;

    .line 34
    iput-wide p3, p0, Lcom/xiaomi/mistatistic/sdk/data/f;->a:J

    .line 35
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/f;->b:Ljava/lang/String;

    const-string/jumbo v1, "mistat_basic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    :goto_0
    if-eqz p5, :cond_3

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/f;->d:Ljava/util/Map;

    .line 43
    :goto_1
    return-void

    .line 35
    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isInternationalBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/data/f;->setAnonymous(I)V

    goto :goto_0

    .line 35
    :cond_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->c()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 39
    :cond_3
    iput-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/f;->d:Ljava/util/Map;

    goto :goto_1
.end method

.method private a(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 80
    if-nez p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-object v4

    .line 80
    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 82
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 82
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 89
    :catch_0
    move-exception v0

    const-string/jumbo v1, "json error"

    .line 88
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 96
    if-eq p0, p1, :cond_1

    .line 100
    instance-of v1, p1, Lcom/xiaomi/mistatistic/sdk/data/f;

    if-eqz v1, :cond_2

    .line 104
    check-cast p1, Lcom/xiaomi/mistatistic/sdk/data/f;

    .line 106
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/f;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/f;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    return v0

    .line 101
    :cond_2
    return v2

    .line 106
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/f;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/f;->c:Ljava/lang/String;

    .line 107
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/data/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/f;->a:J

    iget-wide v4, p1, Lcom/xiaomi/mistatistic/sdk/data/f;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/f;->d:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/f;->d:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/mistatistic/sdk/data/f;->d:Ljava/util/Map;

    .line 110
    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toPojo()Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    .locals 4

    .prologue
    .line 67
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/f;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/f;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    .line 70
    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/f;->mTS:J

    iput-wide v2, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->timeStamp:J

    .line 71
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/f;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    .line 72
    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/f;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/f;->d:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/xiaomi/mistatistic/sdk/data/f;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->extra:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/f;->getAnonymous()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->anonymous:I

    .line 75
    return-object v0
.end method

.method public valueToJSon()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "category"

    .line 55
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "key"

    .line 56
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    .line 57
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "value"

    .line 58
    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/f;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 59
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/f;->d:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "params"

    .line 60
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/data/f;->d:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method
