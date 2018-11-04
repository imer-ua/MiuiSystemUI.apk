.class Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$2;
.super Ljava/lang/Object;
.source "LocalEventRecorder.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 108
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "LER"

    const-string/jumbo v1, "StatSystemService is already disconnected"

    .line 114
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$2;->a:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->b()Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 110
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Z)Z

    const/4 v0, 0x0

    .line 111
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/xmsf/push/service/b;)Lcom/xiaomi/xmsf/push/service/b;

    const-string/jumbo v0, "LER"

    const-string/jumbo v1, "unbind StatSystemService success"

    .line 112
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    const-string/jumbo v1, ""

    .line 117
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
