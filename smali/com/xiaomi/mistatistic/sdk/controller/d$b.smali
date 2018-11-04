.class Lcom/xiaomi/mistatistic/sdk/controller/d$b;
.super Landroid/os/HandlerThread;
.source "AsyncJobDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/d;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    .line 85
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 86
    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 92
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d;Landroid/os/Handler;)Landroid/os/Handler;

    .line 94
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    if-nez v0, :cond_2

    .line 112
    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 113
    return-void

    .line 96
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 97
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 98
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 103
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mistatistic/sdk/controller/d$a;

    .line 106
    :try_start_2
    invoke-interface {v0}, Lcom/xiaomi/mistatistic/sdk/controller/d$a;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 109
    :catch_0
    move-exception v0

    const-string/jumbo v2, "error while executing job."

    .line 108
    invoke-static {v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
