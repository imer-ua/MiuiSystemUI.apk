.class public Lcom/xiaomi/mistatistic/sdk/controller/o;
.super Ljava/lang/Object;
.source "ThermoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/o$a;
    }
.end annotation


# static fields
.field private static d:Lcom/xiaomi/mistatistic/sdk/controller/o;


# instance fields
.field private a:J

.field private b:Z

.field private c:Lcom/xiaomi/mistatistic/sdk/controller/o$a;

.field private e:Landroid/os/Handler;

.field private f:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->a:J

    .line 88
    iput-boolean v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->f:Z

    .line 51
    iput-boolean v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->b:Z

    .line 52
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/o$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/o$a;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/o;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->c:Lcom/xiaomi/mistatistic/sdk/controller/o$a;

    .line 53
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/o$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/o$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/o;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->e:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/o;)Lcom/xiaomi/mistatistic/sdk/controller/o$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->c:Lcom/xiaomi/mistatistic/sdk/controller/o$a;

    return-object v0
.end method

.method public static a()Lcom/xiaomi/mistatistic/sdk/controller/o;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->d:Lcom/xiaomi/mistatistic/sdk/controller/o;

    if-eqz v0, :cond_0

    .line 47
    :goto_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->d:Lcom/xiaomi/mistatistic/sdk/controller/o;

    return-object v0

    .line 45
    :cond_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/o;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/o;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->d:Lcom/xiaomi/mistatistic/sdk/controller/o;

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/o;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/o;->c(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/mistatistic/sdk/controller/o;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->e:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 181
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->b()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/o$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/o$2;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/o;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    .line 222
    return-void
.end method


# virtual methods
.method public b(Landroid/app/Activity;)Ljava/io/File;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 158
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 159
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 160
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 162
    invoke-virtual {p1}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 163
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "snapshot.jpg"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 166
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {v1, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 167
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 169
    return-object v2
.end method

.method public c()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->b:Z

    .line 75
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->b:Z

    .line 79
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->f()V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->f:Z

    return v0
.end method

.method public f()V
    .locals 3

    .prologue
    .line 99
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sensor"

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 101
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->c:Lcom/xiaomi/mistatistic/sdk/controller/o$a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->f:Z

    .line 103
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->c:Lcom/xiaomi/mistatistic/sdk/controller/o$a;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/o$a;->b()V

    const-string/jumbo v0, "disable AcceleroMeterSensor..."

    .line 104
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->a:J

    .line 174
    return-void
.end method

.method public h()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->a:J

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
