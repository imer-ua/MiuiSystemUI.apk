.class public Lcom/xiaomi/mistatistic/sdk/CustomSettings;
.super Ljava/lang/Object;
.source "CustomSettings.java"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    sput-boolean v1, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->a:Z

    .line 19
    sput-boolean v1, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->b:Z

    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->c:Z

    .line 23
    sput-boolean v1, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->d:Z

    .line 25
    sput-boolean v1, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDataUploadingEnabled()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->c:Z

    return v0
.end method

.method public static isUploadForegroundPackageEnabled()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->e:Z

    return v0
.end method

.method public static isUploadInstalledPackageEnabled()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->d:Z

    return v0
.end method

.method public static isUseSystemStatService()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->b:Z

    return v0
.end method

.method public static isUseSystemUploadingService()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->a:Z

    return v0
.end method

.method public static setUseSystemStatService(Z)V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    if-nez p0, :cond_2

    .line 81
    :cond_0
    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->b:Z

    .line 82
    return-void

    :cond_1
    const-string/jumbo v0, "MI_STAT"

    const-string/jumbo v1, "The statistics is disabled."

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void

    .line 78
    :cond_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 79
    return-void
.end method
