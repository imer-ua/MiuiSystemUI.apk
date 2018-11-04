.class Lcom/xiaomi/mistatistic/sdk/controller/l$1;
.super Ljava/lang/Object;
.source "RemoteDataUploadManager.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/l;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/l;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/l;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/l$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;JJIZ)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/l;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string/jumbo v0, "RDUM"

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "packing completed with empty data, set Uploading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/l;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/l$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/l;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(Lcom/xiaomi/mistatistic/sdk/controller/l;Ljava/lang/String;JJIZ)V

    goto :goto_0
.end method
