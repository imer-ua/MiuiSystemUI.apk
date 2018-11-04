.class public Lcom/android/keyguard/faceunlock/FaceUnlockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FaceUnlockController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mMode:I

.field private mPendingAuthenticatedUserId:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/faceunlock/FaceUnlockController;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mPendingAuthenticatedUserId:I

    return v0
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
    .line 118
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mHandler:Landroid/os/Handler;

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mPendingAuthenticatedUserId:I

    .line 124
    iput-object p1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mContext:Landroid/content/Context;

    .line 125
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mPowerManager:Landroid/os/PowerManager;

    .line 126
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 127
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 128
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 129
    iput-object p2, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 130
    iput-object p3, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 131
    iput-object p4, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 132
    iput-object p5, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 133
    iput-object p6, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 123
    return-void
.end method

.method private calculateMode(I)I
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x3

    .line 240
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed(I)Z

    move-result v0

    .line 241
    .local v0, "unlockingAllowed":Z
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    if-nez v1, :cond_3

    .line 242
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    const/4 v1, 0x4

    return v1

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 245
    const/4 v1, 0x2

    return v1

    .line 246
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    return v2

    .line 247
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 252
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 253
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 254
    const/4 v1, 0x6

    return v1

    .line 255
    :cond_4
    if-eqz v0, :cond_5

    .line 256
    const/4 v1, 0x5

    return v1

    .line 257
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v1

    if-nez v1, :cond_6

    .line 258
    return v2

    .line 261
    :cond_6
    const/4 v1, 0x0

    return v1
.end method

.method private cleanup()V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method private sendFaceUnlcokSucceedBroadcast()V
    .locals 4

    .prologue
    .line 304
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isScreenTurnOnDelayed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.keyguard.face_unlock_succeed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 307
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 303
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public onFaceAuthFailed(Z)V
    .locals 2
    .param p1, "hasFace"    # Z

    .prologue
    .line 266
    if-eqz p1, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/android/keyguard/faceunlock/FaceUnlockController;->cleanup()V

    .line 268
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateCollapsePanels(F)V

    .line 265
    :cond_0
    return-void
.end method

.method public onFaceAuthenticated()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 143
    const-string/jumbo v1, "FingerprintUnlockController#onFaceAuthenticated"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 145
    .local v0, "wasDeviceInteractive":Z
    invoke-direct {p0, v5}, Lcom/android/keyguard/faceunlock/FaceUnlockController;->calculateMode(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mMode:I

    .line 146
    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/FaceUnlockController;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "calculateMode userid=0;mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/Class;Ljava/lang/String;)V

    .line 147
    if-nez v0, :cond_0

    .line 149
    const-string/jumbo v1, "FaceUnlockController"

    const-string/jumbo v2, "fp wakelock: Authenticated, waking up..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "android.policy:FACE"

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 153
    :cond_0
    const-string/jumbo v1, "release wake-and-unlock"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 155
    iget v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 206
    :goto_0
    :pswitch_0
    iget v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mMode:I

    if-eq v1, v7, :cond_1

    .line 207
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceDozeBrightness(Z)V

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyFpAuthModeChanged()V

    .line 210
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 142
    return-void

    .line 157
    :pswitch_1
    const-string/jumbo v1, "MODE_DISMISS"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    .line 160
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 163
    :pswitch_2
    const-string/jumbo v1, "MODE_UNLOCK"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 164
    if-nez v0, :cond_2

    .line 165
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyDeviceWakeUpRequested()V

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->canPanelBeCollapsed()Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "perseus"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndOccluded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 168
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    .line 169
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    .line 170
    invoke-direct {p0}, Lcom/android/keyguard/faceunlock/FaceUnlockController;->sendFaceUnlcokSucceedBroadcast()V

    .line 172
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 175
    :pswitch_3
    const-string/jumbo v1, "MODE_UNLOCK or MODE_SHOW_BOUNCER"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 176
    if-nez v0, :cond_5

    .line 177
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyDeviceWakeUpRequested()V

    .line 179
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 180
    const v2, 0x3f8ccccd    # 1.1f

    .line 179
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateCollapsePanels(F)V

    .line 181
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 185
    :pswitch_4
    iget v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mMode:I

    if-ne v1, v7, :cond_7

    .line 186
    const-string/jumbo v1, "MODE_WAKE_AND_UNLOCK_PULSING"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    .line 193
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    .line 194
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking()V

    .line 195
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setWakeAndUnlocking()V

    .line 196
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setWakeAndUnlocking()V

    .line 197
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 198
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    .line 200
    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    .line 190
    :cond_7
    const-string/jumbo v1, "MODE_WAKE_AND_UNLOCK"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->abortDoze()V

    goto :goto_1

    .line 155
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

.method public onFaceLocked()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateCollapsePanels(F)V

    .line 272
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 3
    .param p1, "why"    # I

    .prologue
    const/4 v2, -0x1

    .line 220
    const-string/jumbo v0, "FingerprintUnlockController#onFinishedGoingToSleep"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 221
    iget v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mPendingAuthenticatedUserId:I

    if-eq v0, v2, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/faceunlock/FaceUnlockController$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/faceunlock/FaceUnlockController$1;-><init>(Lcom/android/keyguard/faceunlock/FaceUnlockController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    :cond_0
    iput v2, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mPendingAuthenticatedUserId:I

    .line 232
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 219
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 1
    .param p1, "why"    # I

    .prologue
    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mPendingAuthenticatedUserId:I

    .line 214
    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0
    .param p1, "statusBarKeyguardViewManager"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 137
    return-void
.end method

.method public unblockScreenOn()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->unblockScreenOn()V

    .line 299
    return-void
.end method
