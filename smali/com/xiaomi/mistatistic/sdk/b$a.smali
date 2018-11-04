.class public Lcom/xiaomi/mistatistic/sdk/b$a;
.super Ljava/lang/Object;
.source "MIStatsExceptionHandler.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Throwable;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    .line 145
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->b:Ljava/lang/String;

    .line 146
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->c:Ljava/lang/String;

    .line 147
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->d:Ljava/lang/String;

    .line 148
    iput-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->e:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->a:Ljava/lang/Throwable;

    .line 137
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->b:Ljava/lang/String;

    .line 138
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->c:Ljava/lang/String;

    .line 139
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->d:Ljava/lang/String;

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b$a;->e:Ljava/lang/String;

    .line 141
    return-void
.end method
