.class public Lcom/xiaomi/mistatistic/sdk/controller/d;
.super Ljava/lang/Object;
.source "AsyncJobDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/d$a;,
        Lcom/xiaomi/mistatistic/sdk/controller/d$b;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/mistatistic/sdk/controller/d;

.field private static b:Lcom/xiaomi/mistatistic/sdk/controller/d;


# instance fields
.field private volatile c:Landroid/os/Handler;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/controller/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/d;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    .line 13
    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/d;->b:Lcom/xiaomi/mistatistic/sdk/controller/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/d;->d:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/d$b;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/d;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->start()V

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/d;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/d;->c:Landroid/os/Handler;

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/xiaomi/mistatistic/sdk/controller/d;
    .locals 3

    .prologue
    const-class v1, Lcom/xiaomi/mistatistic/sdk/controller/d;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/d;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    if-eqz v0, :cond_0

    .line 19
    :goto_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/d;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 17
    :cond_0
    :try_start_1
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/d;

    const-string/jumbo v2, "local_job_dispatcher"

    invoke-direct {v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/d;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/d;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/d;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static declared-synchronized b()Lcom/xiaomi/mistatistic/sdk/controller/d;
    .locals 3

    .prologue
    const-class v1, Lcom/xiaomi/mistatistic/sdk/controller/d;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/d;->b:Lcom/xiaomi/mistatistic/sdk/controller/d;

    if-eqz v0, :cond_0

    .line 26
    :goto_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/d;->b:Lcom/xiaomi/mistatistic/sdk/controller/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :cond_0
    :try_start_1
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/d;

    const-string/jumbo v2, "remote_job_dispatcher"

    invoke-direct {v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/d;->b:Lcom/xiaomi/mistatistic/sdk/controller/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V
    .locals 3

    .prologue
    .line 39
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/d;->d:Ljava/util/ArrayList;

    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/d;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/d;->c:Landroid/os/Handler;

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/controller/d$1;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/d$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/d;Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    :goto_0
    monitor-exit v1

    .line 59
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;J)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/d;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string/jumbo v0, "drop the job as handler is not ready."

    .line 78
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/d;->c:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/d$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/d$2;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/d;Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
