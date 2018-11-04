.class public Lcom/android/systemui/miui/analytics/AnalyticsWrapper;
.super Ljava/lang/Object;
.source "AnalyticsWrapper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 34
    const-string/jumbo v3, "1000271"

    const-string/jumbo v4, "420100086271"

    invoke-static {}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->resolveChannelName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->setUploadPolicy(IJ)V

    .line 36
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->enableExceptionCatcher(Z)V

    .line 37
    sget-boolean v0, Lcom/android/systemui/Constants;->DEBUG:Z

    .line 38
    .local v0, "enableLog":Z
    if-eqz v0, :cond_1

    :goto_0
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->setUseSystemStatService(Z)V

    .line 39
    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->enableLog()V

    .line 33
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 38
    goto :goto_0
.end method

.method public static recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 61
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 60
    return-void
.end method

.method public static recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 69
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;J)V

    .line 68
    return-void
.end method

.method public static recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 72
    return-void
.end method

.method public static recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    return-void
.end method

.method public static recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 56
    return-void
.end method

.method public static recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static recordStringPropertyEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordStringPropertyEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private static resolveChannelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_0

    .line 25
    const-string/jumbo v0, "MIUI10-alpha"

    return-object v0

    .line 26
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v0, :cond_1

    .line 27
    const-string/jumbo v0, "MIUI10-dev"

    return-object v0

    .line 29
    :cond_1
    const-string/jumbo v0, "MIUI10"

    return-object v0
.end method
