.class public Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;
.super Ljava/lang/Object;
.source "RemoteDataUploadJob.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;IZ)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->d:Z

    .line 62
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;

    .line 63
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->b:Ljava/lang/String;

    .line 64
    iput p3, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->c:I

    .line 65
    iput-boolean p4, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->d:Z

    .line 66
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v0, "seed:%s-%s-%s"

    const/4 v1, 0x3

    .line 164
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    .line 166
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "data"

    .line 154
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "data"

    .line 155
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "delay"

    .line 156
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "delay"

    .line 157
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 158
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(J)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v1, "RDUJ"

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Upload complete, result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :goto_1
    return v3

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 133
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "status"

    .line 134
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v2, "ok"

    .line 136
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "result status isn\'t ok, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 148
    :catch_0
    move-exception v0

    const-string/jumbo v1, "parseUploadingResult exception "

    .line 147
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    :try_start_1
    const-string/jumbo v1, "test ok"

    const-string/jumbo v2, "reason"

    .line 137
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 140
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a()Lcom/xiaomi/mistatistic/sdk/controller/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->d()V

    .line 142
    :goto_2
    const/4 v0, 0x1

    return v0

    .line 138
    :cond_3
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a()Lcom/xiaomi/mistatistic/sdk/controller/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static synthetic b(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;)Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 9

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/p;->g()I

    move-result v4

    .line 72
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/p;->f()J

    move-result-wide v6

    .line 73
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 74
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/e;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    iget-boolean v8, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->d:Z

    if-eqz v8, :cond_1

    move v1, v2

    :goto_1
    const-string/jumbo v3, "app_id"

    .line 85
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->b()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "app_key"

    .line 86
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->c()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "device_id"

    .line 87
    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "id_type"

    .line 88
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "channel"

    .line 89
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "policy"

    .line 90
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "interval"

    .line 91
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "sdk_version"

    const-string/jumbo v3, "1.9.16"

    .line 92
    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "upload policy:%d, upload interval:%d, mistat upload version:%d, upload %d events."

    const/4 v3, 0x4

    .line 93
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 94
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x3

    iget v6, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    .line 93
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->e()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    const-string/jumbo v1, "RDUJ"

    const-string/jumbo v3, "stat_value:%s"

    const/4 v4, 0x1

    .line 100
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->b:Ljava/lang/String;

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->c()Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-direct {p0, v1, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "stat_value"

    .line 105
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "mistatv"

    const/4 v1, 0x4

    .line 106
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "size"

    .line 107
    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isTest()Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "http://data.mistat.xiaomi.com/mistats/v2"

    .line 111
    :goto_3
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;)V

    invoke-static {v0, v5, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V

    .line 127
    :goto_4
    return-void

    .line 74
    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 77
    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isInternationalBuild()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    move v1, v3

    .line 78
    goto/16 :goto_1

    .line 77
    :cond_3
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->c()Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v3, "version"

    .line 98
    invoke-interface {v5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 126
    :catch_0
    move-exception v0

    const-string/jumbo v1, "RDUJ"

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteDataUploadJob exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;

    iget-boolean v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->d:Z

    invoke-interface {v0, v2, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;->a(ZZ)V

    goto :goto_4

    :cond_5
    :try_start_1
    const-string/jumbo v0, "http://10.235.124.13:8097/mistats"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
