.class public abstract Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;
.super Ljava/lang/Object;
.source "LocalEventRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/xiaomi/xmsf/push/service/b;

.field private static volatile b:Z

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/Object;

.field private static e:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a:Lcom/xiaomi/xmsf/push/service/b;

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->b:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->c:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->d:Ljava/lang/Object;

    .line 123
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$3;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$3;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/xmsf/push/service/b;)Lcom/xiaomi/xmsf/push/service/b;
    .locals 0

    .prologue
    .line 29
    sput-object p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a:Lcom/xiaomi/xmsf/push/service/b;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V
    .locals 0

    .prologue
    .line 29
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->b(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->b:Z

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "mistat_basic"

    .line 71
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "mistat_session"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "mistat_pt"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "mistat_pv"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "mistat_session_extra"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 29
    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->b:Z

    return p0
.end method

.method static synthetic b()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->e:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 95
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->b:Z

    if-eqz v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.xiaomi.xmsf"

    const-string/jumbo v2, "com.xiaomi.xmsf.push.service.StatService"

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->e:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->b:Z

    const-string/jumbo v0, "LER"

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bind StatSystemService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V
    .locals 3

    .prologue
    .line 77
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->b(Landroid/content/Context;)V

    .line 79
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a:Lcom/xiaomi/xmsf/push/service/b;

    if-nez v0, :cond_0

    .line 84
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :try_start_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :goto_0
    return-void

    .line 80
    :cond_0
    :try_start_2
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a:Lcom/xiaomi/xmsf/push/service/b;

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;->valueToJSon()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/xmsf/push/service/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    const-string/jumbo v1, "LER"

    const-string/jumbo v2, "insertEventUseSystemService exception: "

    .line 90
    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method static synthetic c()Lcom/xiaomi/xmsf/push/service/b;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a:Lcom/xiaomi/xmsf/push/service/b;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 104
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$2;-><init>(Landroid/content/Context;)V

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;J)V

    .line 121
    return-void
.end method

.method static synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e()Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->c:Ljava/util/List;

    return-object v0
.end method

.method public static insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V
    .locals 3

    .prologue
    .line 40
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 46
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isCTABuild()Z

    move-result v1

    if-nez v1, :cond_2

    .line 51
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->isUseSystemStatService()Z

    move-result v1

    if-nez v1, :cond_3

    .line 62
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isDisabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 66
    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;-><init>(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    .line 67
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/p;->c()V

    .line 68
    return-void

    :cond_1
    const-string/jumbo v0, "LER"

    const-string/jumbo v1, "mistats is not initialized properly."

    .line 42
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void

    :cond_2
    const-string/jumbo v0, "LER"

    const-string/jumbo v1, "disable local event upload for CTA build"

    .line 47
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void

    :cond_3
    const-string/jumbo v0, "LER"

    const-string/jumbo v1, "insert event use systemstatsvc"

    .line 52
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$1;-><init>(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    .line 59
    return-void

    .line 62
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;->getAnonymous()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "LER"

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disabled local event upload, event category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method
