.class public Lcom/xiaomi/mistatistic/sdk/data/a;
.super Ljava/lang/Object;
.source "ClickableView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 24
    new-array v0, v0, [I

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 26
    aget v1, v0, v1

    iput v1, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->a:I

    const/4 v1, 0x1

    .line 27
    aget v0, v0, v1

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->b:I

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->c:I

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->d:I

    .line 30
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "left"

    .line 34
    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "top"

    .line 35
    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "width"

    .line 36
    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "height"

    .line 37
    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    .line 46
    return-object v0
.end method
