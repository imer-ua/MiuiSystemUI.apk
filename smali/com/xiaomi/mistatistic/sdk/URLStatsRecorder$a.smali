.class Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder$a;
.super Ljava/net/URLStreamHandler;
.source "URLStatsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/net/URLStreamHandler;


# direct methods
.method public constructor <init>(Ljava/net/URLStreamHandler;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder$a;->a:Ljava/net/URLStreamHandler;

    .line 136
    return-void
.end method


# virtual methods
.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-class v0, Ljava/net/URLStreamHandler;

    const-string/jumbo v1, "openConnection"

    const/4 v4, 0x1

    .line 142
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/net/URL;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 143
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 144
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder$a;->a:Ljava/net/URLStreamHandler;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    .line 146
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-nez v1, :cond_0

    .line 151
    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_1

    .line 157
    return-object v0

    .line 147
    :cond_0
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/network/d;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v1, v0}, Lcom/xiaomi/mistatistic/sdk/network/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 148
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(J)V

    .line 149
    return-object v1

    .line 152
    :cond_1
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/network/c;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-direct {v1, v0}, Lcom/xiaomi/mistatistic/sdk/network/c;-><init>(Ljava/net/HttpURLConnection;)V

    .line 153
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    return-object v1

    .line 157
    :catch_0
    move-exception v0

    .line 160
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a()Lcom/xiaomi/mistatistic/sdk/controller/g;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)V

    .line 161
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-class v0, Ljava/net/URLStreamHandler;

    const-string/jumbo v1, "openConnection"

    const/4 v4, 0x2

    .line 169
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/net/URL;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/net/Proxy;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 171
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 172
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder$a;->a:Ljava/net/URLStreamHandler;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    .line 174
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-nez v1, :cond_0

    .line 179
    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_1

    .line 185
    return-object v0

    .line 175
    :cond_0
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/network/d;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v1, v0}, Lcom/xiaomi/mistatistic/sdk/network/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 176
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(J)V

    .line 177
    return-object v1

    .line 180
    :cond_1
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/network/c;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-direct {v1, v0}, Lcom/xiaomi/mistatistic/sdk/network/c;-><init>(Ljava/net/HttpURLConnection;)V

    .line 181
    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    return-object v1

    .line 185
    :catch_0
    move-exception v0

    .line 188
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a()Lcom/xiaomi/mistatistic/sdk/controller/g;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    .line 189
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)V

    .line 190
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method
