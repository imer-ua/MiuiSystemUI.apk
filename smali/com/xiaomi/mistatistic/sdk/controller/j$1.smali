.class Lcom/xiaomi/mistatistic/sdk/controller/j$1;
.super Ljava/lang/Object;
.source "NetworkUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/j$b;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/Map;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/j$b;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 528
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/j$b;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/j$1;Z)Z
    .locals 0

    .prologue
    .line 528
    iput-boolean p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->e:Z

    return p1
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 544
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;

    invoke-direct {v1, p0, p2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/j$1;Landroid/os/IBinder;Landroid/content/ServiceConnection;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    .line 561
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "error while perform IPC connection."

    .line 533
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 534
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->e:Z

    if-eqz v0, :cond_0

    .line 538
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/j$b;

    invoke-interface {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j$b;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "disconnected, remote http post hasn\'t not processed"

    .line 536
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
