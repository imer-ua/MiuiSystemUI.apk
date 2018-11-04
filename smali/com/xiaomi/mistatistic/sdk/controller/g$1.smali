.class Lcom/xiaomi/mistatistic/sdk/controller/g$1;
.super Ljava/lang/Object;
.source "HttpEventController.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/HttpEventFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/g;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/g;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/g;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 65
    return-object v0

    :cond_0
    const-string/jumbo v1, "\\?"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    .line 62
    invoke-virtual {p1, v0}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->setUrl(Ljava/lang/String;)V

    .line 63
    return-object p1
.end method
