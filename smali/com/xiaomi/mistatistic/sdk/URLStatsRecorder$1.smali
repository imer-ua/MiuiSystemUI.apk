.class Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder$1;
.super Ljava/lang/Object;
.source "URLStatsRecorder.java"

# interfaces
.implements Ljava/net/URLStreamHandlerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->enableAutoRecord()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 85
    return-object v0

    .line 83
    :cond_0
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder$a;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLStreamHandler;

    invoke-direct {v1, v0}, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder$a;-><init>(Ljava/net/URLStreamHandler;)V

    return-object v1
.end method
