.class public Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorCallback.java"


# instance fields
.field private mShowing:Z

.field private mVisibilityChangedCalled:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirplaneModeChanged()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onBootCompleted()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .locals 0
    .param p1, "dreaming"    # Z

    .prologue
    .line 275
    return-void
.end method

.method public onEmergencyCallAction()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public onFaceAuthFailed(Z)V
    .locals 0
    .param p1, "hasFace"    # Z

    .prologue
    .line 279
    return-void
.end method

.method public onFaceAuthenticated()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public onFaceHelp(Ljava/lang/String;)V
    .locals 0
    .param p1, "helpString"    # Ljava/lang/String;

    .prologue
    .line 277
    return-void
.end method

.method public onFaceLocked()V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method public onFaceStart()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method public onFaceUnlockStateChanged(ZI)V
    .locals 0
    .param p1, "running"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 248
    return-void
.end method

.method public onFingerprintAcquired()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public onFingerprintAuthFailed()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 228
    return-void
.end method

.method public onFingerprintError(ILjava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 243
    return-void
.end method

.method public onFingerprintHelp(ILjava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "helpString"    # Ljava/lang/String;

    .prologue
    .line 235
    return-void
.end method

.method public onFingerprintLockoutReset()V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public onFingerprintRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 253
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 184
    return-void
.end method

.method public onHasLockscreenWallpaperChanged(Z)V
    .locals 0
    .param p1, "hasLockscreenWallpaper"    # Z

    .prologue
    .line 269
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .prologue
    .line 89
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 74
    return-void
.end method

.method public onKeyguardVisibilityChangedRaw(Z)V
    .locals 6
    .param p1, "showing"    # Z

    .prologue
    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 78
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    if-ne p1, v2, :cond_0

    .line 79
    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 81
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    .line 82
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    .line 76
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .param p1, "phoneState"    # I

    .prologue
    .line 68
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 43
    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onRegionChanged()V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 60
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public onServiceStateChanged(ILandroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 130
    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 123
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 176
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 264
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 140
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 116
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 111
    return-void
.end method

.method public onUserUnlocked()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public unblockScreenOn()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method public updateShowingStatus(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 291
    return-void
.end method
