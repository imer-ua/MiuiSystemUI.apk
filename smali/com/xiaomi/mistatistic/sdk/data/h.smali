.class public Lcom/xiaomi/mistatistic/sdk/data/h;
.super Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;
.source "CustomStringPropertyEvent.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->b:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->c:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->a:Ljava/lang/String;

    const-string/jumbo v1, "mistat_basic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isInternationalBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/data/h;->setAnonymous(I)V

    goto :goto_0

    .line 25
    :cond_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->c()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    if-eq p0, p1, :cond_2

    .line 63
    instance-of v2, p1, Lcom/xiaomi/mistatistic/sdk/data/h;

    if-eqz v2, :cond_3

    .line 67
    check-cast p1, Lcom/xiaomi/mistatistic/sdk/data/h;

    .line 69
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/h;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    return v0

    .line 60
    :cond_2
    return v0

    .line 64
    :cond_3
    return v1

    .line 69
    :cond_4
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/h;->b:Ljava/lang/String;

    .line 70
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/h;->c:Ljava/lang/String;

    .line 71
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toPojo()Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    .locals 4

    .prologue
    .line 47
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    .line 50
    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->mTS:J

    iput-wide v2, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->timeStamp:J

    .line 51
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    const-string/jumbo v1, "property"

    .line 52
    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/h;->getAnonymous()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->anonymous:I

    .line 54
    return-object v0
.end method

.method public valueToJSon()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "category"

    .line 38
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "key"

    .line 39
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "property"

    .line 40
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "value"

    .line 41
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    return-object v0
.end method
