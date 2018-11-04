.class Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$3;
.super Ljava/lang/Object;
.source "LocalEventRecorder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "LER"

    const-string/jumbo v1, "IStatService connected"

    .line 133
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {p2}, Lcom/xiaomi/xmsf/push/service/b$a;->a(Landroid/os/IBinder;)Lcom/xiaomi/xmsf/push/service/b;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/xmsf/push/service/b;)Lcom/xiaomi/xmsf/push/service/b;

    .line 135
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->c()Lcom/xiaomi/xmsf/push/service/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$3$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$3$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$3;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "LER"

    const-string/jumbo v1, "IStatService has unexpectedly disconnected"

    .line 126
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 127
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/xmsf/push/service/b;)Lcom/xiaomi/xmsf/push/service/b;

    .line 128
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Z)Z

    .line 129
    return-void
.end method
