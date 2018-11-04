.class public Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatteryStatus"
.end annotation


# instance fields
.field public final health:I

.field public final level:I

.field public final maxChargingWattage:I

.field public final plugged:I

.field public final status:I

.field public final temperature:I

.field public final voltage:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "level"    # I
    .param p3, "plugged"    # I
    .param p4, "health"    # I
    .param p5, "maxChargingWattage"    # I
    .param p6, "voltage"    # I
    .param p7, "temperature"    # I

    .prologue
    .line 1256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1258
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    .line 1259
    iput p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    .line 1260
    iput p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    .line 1261
    iput p4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->health:I

    .line 1262
    iput p5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    .line 1263
    iput p6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->voltage:I

    .line 1264
    iput p7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->temperature:I

    .line 1257
    return-void
.end method


# virtual methods
.method public final getChargingSpeed(II)I
    .locals 2
    .param p1, "slowThreshold"    # I
    .param p2, "fastThreshold"    # I

    .prologue
    const/4 v0, 0x0

    .line 1296
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    if-gtz v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    .line 1297
    :cond_1
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    if-lt v1, p1, :cond_0

    .line 1298
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    if-le v0, p2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 1299
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isBatteryLow()Z
    .locals 2

    .prologue
    .line 1292
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCharged()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1284
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPluggedIn()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1272
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    if-eq v1, v0, :cond_0

    .line 1273
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1272
    :cond_0
    :goto_0
    return v0

    .line 1274
    :cond_1
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
