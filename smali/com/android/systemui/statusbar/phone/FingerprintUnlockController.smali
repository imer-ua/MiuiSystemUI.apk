.class public Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FingerprintUnlockController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$1;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field private mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mMode:I

.field private mPendingAuthenticatedUserId:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->releaseFingerprintWakeLock()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dozeScrimController"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;
    .param p3, "keyguardViewMediator"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p4, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p5, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p6, "unlockMethodCache"    # Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    .line 139
    new-instance v0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$1;-><init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    .line 123
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    .line 124
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 126
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 127
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 128
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 129
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 130
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 131
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 121
    return-void
.end method

.method private calculateMode(I)I
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x3

    .line 332
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed(I)Z

    move-result v0

    .line 333
    .local v0, "unlockingAllowed":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    if-nez v1, :cond_3

    .line 334
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    const/4 v1, 0x4

    return v1

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 337
    const/4 v1, 0x2

    return v1

    .line 338
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 341
    return v2

    .line 339
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 344
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 345
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 346
    const/4 v1, 0x6

    return v1

    .line 347
    :cond_4
    if-eqz v0, :cond_5

    .line 348
    const/4 v1, 0x5

    return v1

    .line 349
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v1

    if-nez v1, :cond_6

    .line 350
    return v2

    .line 353
    :cond_6
    const/4 v1, 0x0

    return v1
.end method

.method private cleanup()V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->releaseFingerprintWakeLock()V

    .line 374
    return-void
.end method

.method private keyguardDoneWithoutHomeAnim()V
    .locals 4

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "is_fingerprint_unlock"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 301
    return-void
.end method

.method private releaseFingerprintWakeLock()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 153
    const-string/jumbo v0, "FingerprintController"

    const-string/jumbo v1, "releasing fp wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 156
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public finishKeyguardFadingAway()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 390
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->resetMode()V

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceDozeBrightness(Z)V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyFpAuthModeChanged()V

    .line 389
    return-void
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    return v0
.end method

.method public onFingerprintAcquired()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 162
    const-string/jumbo v0, "FingerprintUnlockController#onFingerprintAcquired"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->releaseFingerprintWakeLock()V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v0

    .line 167
    const/4 v1, 0x2

    .line 166
    invoke-virtual {v0, v1}, Lcom/android/keyguard/LatencyTracker;->onActionStart(I)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    .line 170
    const-string/jumbo v1, "wake-and-unlock wakelock"

    .line 169
    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 171
    const-string/jumbo v0, "acquiring wake-and-unlock"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 173
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 175
    const-string/jumbo v0, "FingerprintController"

    const-string/jumbo v1, "fingerprint acquired, grabbing fp wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

    .line 178
    const-wide/16 v2, 0x3a98

    .line 177
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceDozeBrightness(Z)V

    .line 188
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 161
    return-void
.end method

.method public onFingerprintAuthFailed()V
    .locals 1

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->cleanup()V

    .line 359
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->FAILED:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 360
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils;->processFingerprintResultAnalytics(I)V

    .line 357
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 193
    const-string/jumbo v3, "FingerprintUnlockController#onFingerprintAuthenticated"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 194
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 195
    iput p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    .line 196
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed(I)Z

    move-result v1

    .line 197
    .local v1, "unlockingAllowed":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 198
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintMode(I)V

    .line 202
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 203
    return-void

    .line 199
    :cond_1
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintMode(I)V

    goto :goto_0

    .line 205
    .end local v1    # "unlockingAllowed":Z
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    .line 206
    .local v2, "wasDeviceInteractive":Z
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->calculateMode(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    .line 207
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    if-eq v3, p1, :cond_5

    iget v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    if-eq v3, v5, :cond_5

    .line 208
    iget v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    .line 209
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/keyguard/MiuiKeyguardUtils;->canSwitchUser(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 210
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 211
    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/fod/MiuiGxzwManager;->onKeyguardHide()V

    .line 214
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintMode(I)V

    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "calculateMode userid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/Class;Ljava/lang/String;)V

    .line 228
    if-nez v2, :cond_6

    .line 230
    const-string/jumbo v3, "FingerprintController"

    const-string/jumbo v4, "fp wakelock: Authenticated, waking up..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-string/jumbo v6, "android.policy:FINGERPRINT"

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 234
    :cond_6
    const-string/jumbo v3, "release wake-and-unlock"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->releaseFingerprintWakeLock()V

    .line 236
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 237
    iget v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    packed-switch v3, :pswitch_data_0

    .line 292
    :goto_2
    :pswitch_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    if-eq v3, v9, :cond_7

    .line 293
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceDozeBrightness(Z)V

    .line 295
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyFpAuthModeChanged()V

    .line 296
    sget-object v3, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->SUCCEEDED:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 297
    invoke-static {v8}, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils;->processFingerprintResultAnalytics(I)V

    .line 298
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 192
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FingerprintController"

    const-string/jumbo v4, "switchUser failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 223
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_8
    iput v5, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    goto :goto_1

    .line 239
    :pswitch_1
    const-string/jumbo v3, "MODE_DISMISS"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 240
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    .line 242
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    .line 245
    :pswitch_2
    const-string/jumbo v3, "MODE_UNLOCK"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 246
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->keyguardDoneWithoutHomeAnim()V

    .line 248
    if-nez v2, :cond_9

    .line 249
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyDeviceWakeUpRequested()V

    .line 252
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    .line 253
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    .line 254
    const-string/jumbo v3, "fp"

    invoke-static {v3}, Lcom/android/keyguard/AnalyticsHelper;->recordUnlockWay(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    .line 258
    :pswitch_3
    const-string/jumbo v3, "MODE_SHOW_BOUNCER"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 259
    if-nez v2, :cond_a

    .line 260
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyDeviceWakeUpRequested()V

    .line 262
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 263
    const/high16 v4, 0x43960000    # 300.0f

    .line 262
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateCollapsePanels(F)V

    .line 264
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    .line 268
    :pswitch_4
    iget v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    if-ne v3, v9, :cond_c

    .line 269
    const-string/jumbo v3, "MODE_WAKE_AND_UNLOCK_PULSING"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 270
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3, v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    .line 277
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->keyguardDoneWithoutHomeAnim()V

    .line 278
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    .line 279
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking()V

    .line 280
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setWakeAndUnlocking()V

    .line 281
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setWakeAndUnlocking()V

    .line 282
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 283
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    .line 285
    :cond_b
    const-string/jumbo v3, "fp"

    invoke-static {v3}, Lcom/android/keyguard/AnalyticsHelper;->recordUnlockWay(Ljava/lang/String;)V

    .line 286
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_2

    .line 273
    :cond_c
    const-string/jumbo v3, "MODE_WAKE_AND_UNLOCK"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 274
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->abortDoze()V

    goto :goto_3

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onFingerprintError(ILjava/lang/String;)V
    .locals 2
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->cleanup()V

    .line 367
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->ERROR:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    if-eq v0, v1, :cond_1

    .line 368
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/high16 v1, 0x43960000    # 300.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateCollapsePanels(F)V

    .line 371
    :cond_1
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->ERROR:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 364
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 4
    .param p1, "why"    # I

    .prologue
    const/4 v3, -0x1

    .line 312
    const-string/jumbo v1, "FingerprintUnlockController#onFinishedGoingToSleep"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 313
    iget v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    if-eq v1, v3, :cond_0

    .line 314
    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    .line 316
    .local v0, "pendingUserId":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$2;-><init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    .end local v0    # "pendingUserId":I
    :cond_0
    iput v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    .line 324
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 311
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintTemporarilyLockout()Z

    move-result v0

    .line 405
    if-eqz v0, :cond_1

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/high16 v1, 0x43960000    # 300.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateCollapsePanels(F)V

    .line 404
    :cond_1
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 1
    .param p1, "why"    # I

    .prologue
    .line 307
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    .line 306
    return-void
.end method

.method public resetMode()V
    .locals 2

    .prologue
    .line 399
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintMode(I)V

    .line 398
    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0
    .param p1, "statusBarKeyguardViewManager"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 135
    return-void
.end method

.method public startKeyguardFadingAway()V
    .locals 4

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$3;-><init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    .line 386
    const-wide/16 v2, 0x60

    .line 381
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 378
    return-void
.end method
