.class Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$1;
.super Ljava/lang/Object;
.source "RemoteDataUploadJob.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;

    invoke-static {v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->b(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;)Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;)Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;->a(ZZ)V

    .line 121
    return-void

    .line 119
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Upload MiStat data failed: "

    .line 118
    invoke-static {v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method
