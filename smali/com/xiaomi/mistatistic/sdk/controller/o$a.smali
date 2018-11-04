.class Lcom/xiaomi/mistatistic/sdk/controller/o$a;
.super Ljava/lang/Object;
.source "ThermoManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/o;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/o;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$a;->a:Lcom/xiaomi/mistatistic/sdk/controller/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$a;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    const-string/jumbo v1, "clearActivity exception: "

    .line 150
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v6, 0x41980000    # 19.0f

    .line 120
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 121
    aget v3, v2, v1

    .line 122
    aget v4, v2, v0

    const/4 v5, 0x2

    .line 123
    aget v5, v2, v5

    .line 126
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2

    move v2, v0

    :goto_0
    if-nez v2, :cond_0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v6

    if-lez v2, :cond_3

    :goto_1
    if-nez v0, :cond_0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_1

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$a;->a:Lcom/xiaomi/mistatistic/sdk/controller/o;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->b(Lcom/xiaomi/mistatistic/sdk/controller/o;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string/jumbo v0, "shaking..."

    .line 128
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    .line 130
    :cond_1
    return-void

    :cond_2
    move v2, v1

    .line 126
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
