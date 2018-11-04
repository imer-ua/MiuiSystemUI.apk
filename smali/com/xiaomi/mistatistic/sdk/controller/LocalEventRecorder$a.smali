.class Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;
.super Ljava/lang/Object;
.source "LocalEventRecorder.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;->a:Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;

    .line 176
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 180
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;->a:Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;->toPojo()Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/f;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/controller/f;-><init>()V

    .line 182
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;->a:Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;

    instance-of v2, v2, Lcom/xiaomi/mistatistic/sdk/data/g;

    if-eqz v2, :cond_2

    .line 184
    :cond_0
    iget-object v2, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    .line 185
    iget-object v3, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    .line 186
    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    move-result-object v4

    .line 187
    if-nez v4, :cond_3

    .line 189
    :cond_1
    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    .line 201
    :goto_0
    return-void

    .line 182
    :cond_2
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;->a:Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;

    instance-of v2, v2, Lcom/xiaomi/mistatistic/sdk/data/h;

    if-nez v2, :cond_0

    .line 198
    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    goto :goto_0

    .line 187
    :cond_3
    iget-object v5, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    iget-object v4, v4, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    .line 193
    invoke-virtual {v1, v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
