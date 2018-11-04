.class Lcom/xiaomi/mistatistic/sdk/controller/p$4;
.super Ljava/lang/Object;
.source "UploadPolicyEngine.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/p;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/p;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/p;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$4;->a:Lcom/xiaomi/mistatistic/sdk/controller/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->isExceptionCatcherEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->shouldExceptionUploadImmediately()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 170
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->c()V

    goto :goto_0

    .line 166
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mistatistic/sdk/b$a;

    .line 167
    invoke-static {v0, v2}, Lcom/xiaomi/mistatistic/sdk/b;->a(Lcom/xiaomi/mistatistic/sdk/b$a;Z)V

    goto :goto_1
.end method
