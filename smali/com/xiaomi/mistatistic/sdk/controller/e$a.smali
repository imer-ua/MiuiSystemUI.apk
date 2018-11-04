.class Lcom/xiaomi/mistatistic/sdk/controller/e$a;
.super Ljava/lang/Object;
.source "DeviceIdHolder.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/e$a;->a:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/e$a;->a:Landroid/content/Context;

    const-string/jumbo v1, "imei"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/e$a;->a:Landroid/content/Context;

    const-string/jumbo v1, "device_id"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    :goto_1
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/e$a;->a:Landroid/content/Context;

    const-string/jumbo v1, "imei"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->d(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/e$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method
