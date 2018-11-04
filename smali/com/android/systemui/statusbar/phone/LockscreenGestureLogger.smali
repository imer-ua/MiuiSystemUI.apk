.class public Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;
.super Ljava/lang/Object;
.source "LockscreenGestureLogger.java"


# instance fields
.field private mLegacyMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLogMaker:Landroid/metrics/LogMakerCompat;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v1, Landroid/metrics/LogMakerCompat;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/metrics/LogMakerCompat;-><init>(I)V

    .line 37
    const/4 v2, 0x4

    .line 36
    invoke-virtual {v1, v2}, Landroid/metrics/LogMakerCompat;->setType(I)Landroid/metrics/LogMakerCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->mLogMaker:Landroid/metrics/LogMakerCompat;

    .line 38
    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/MetricsLogger;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 41
    new-instance v1, Landroid/util/ArrayMap;

    sget-object v2, Lcom/android/systemui/EventLogConstants;->METRICS_GESTURE_TYPE_MAP:[I

    array-length v2, v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->mLegacyMap:Landroid/util/ArrayMap;

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/systemui/EventLogConstants;->METRICS_GESTURE_TYPE_MAP:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->mLegacyMap:Landroid/util/ArrayMap;

    sget-object v2, Lcom/android/systemui/EventLogConstants;->METRICS_GESTURE_TYPE_MAP:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method private safeLookup(I)I
    .locals 3
    .param p1, "gesture"    # I

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->mLegacyMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 58
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 59
    const/4 v1, 0x0

    return v1

    .line 61
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method


# virtual methods
.method public write(Landroid/content/Context;III)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gesture"    # I
    .param p3, "length"    # I
    .param p4, "velocity"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->mLogMaker:Landroid/metrics/LogMakerCompat;

    invoke-virtual {v1, p2}, Landroid/metrics/LogMakerCompat;->setCategory(I)Landroid/metrics/LogMakerCompat;

    move-result-object v1

    .line 49
    const/4 v2, 0x4

    .line 48
    invoke-virtual {v1, v2}, Landroid/metrics/LogMakerCompat;->setType(I)Landroid/metrics/LogMakerCompat;

    move-result-object v1

    .line 50
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x33a

    .line 48
    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMakerCompat;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMakerCompat;

    move-result-object v1

    .line 51
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x33b

    .line 48
    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMakerCompat;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMakerCompat;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/metrics/LogMakerCompat;->write(Landroid/content/Context;Lcom/android/internal/logging/MetricsLogger;Landroid/metrics/LogMakerCompat;)V

    .line 53
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->safeLookup(I)I

    move-result v0

    invoke-static {v0, p3, p4}, Lcom/android/systemui/EventLogTags;->writeSysuiLockscreenGesture(III)V

    .line 47
    return-void
.end method
