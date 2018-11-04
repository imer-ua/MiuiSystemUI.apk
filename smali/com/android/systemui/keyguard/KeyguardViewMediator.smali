.class public Lcom/android/systemui/keyguard/KeyguardViewMediator;
.super Lcom/android/systemui/SystemUI;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/KeyguardViewMediator$10;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$11;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$1;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$2;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$3;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$4;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$5;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$6;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$7;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$8;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$9;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
    }
.end annotation


# static fields
.field public static final STRONG_AUTH_REQUIRED_AFTER_TIMEOUT:I

.field private static final USER_PRESENT_INTENT:Landroid/content/Intent;

.field public static sScreenOnDelay:J


# instance fields
.field public final OFF_BECAUSE_OF_ADMIN:I

.field public final OFF_BECAUSE_OF_TIMEOUT:I

.field public final OFF_BECAUSE_OF_USER:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBleUnlockHelper:Lcom/android/keyguard/MiuiBleUnlockHelper;

.field private mBootCompleted:Z

.field private mBootSendUserPresent:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDelayedProfileShowingSequence:I

.field private mDelayedShowingSequence:I

.field private mDeviceInteractive:Z

.field private final mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

.field private mDisplay:Landroid/view/Display;

.field private mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

.field private mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

.field private mExternallyEnabled:Z

.field private mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

.field private mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

.field mFullScreenGestureObserver:Landroid/database/ContentObserver;

.field private mGoingToSleep:Z

.field private mHandler:Landroid/os/Handler;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private final mHideAnimationFinishedRunnable:Ljava/lang/Runnable;

.field private mHideAnimationRun:Z

.field private mHideAnimationRunning:Z

.field private mHideLockForLid:Z

.field private mHiding:Z

.field private mInitAllRunnable:Ljava/lang/Runnable;

.field private mInputRestricted:Z

.field private mIsFullScreenGestureOpened:Z

.field private mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

.field private mKeyguardDonePending:Z

.field private final mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

.field private final mKeyguardStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/IKeyguardStateCallbackCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mLargeAreaTouchSensor:Landroid/hardware/Sensor;

.field private mLargeAreaTouchSensorListener:Landroid/hardware/SensorEventListener;

.field private mLockLater:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundId:I

.field private mLockSoundStreamId:I

.field private mLockSoundVolume:F

.field private mLockSounds:Landroid/media/SoundPool;

.field private mLockWhenSimRemoved:Z

.field private mMigrateFilesRunnable:Ljava/lang/Runnable;

.field private mNeedToReshowWhenReenabled:Z

.field private mOccluded:Z

.field private mPM:Landroid/os/PowerManager;

.field private mPendingLock:Z

.field private mPendingReset:Z

.field private mPhoneState:Ljava/lang/String;

.field private mReadyForKeyEvent:Z

.field private mScreeningOn:Z

.field private mSendKeyEventScreenOn:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowing:Z

.field private mShuttingDown:Z

.field private mSimLockedOrMissing:Z

.field private mSmartCoverHelper:Lcom/android/keyguard/smartcover/SmartCoverHelper;

.field private mStartedWakingUp:Z

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSystemReady:Z

.field private mTrustManager:Landroid/app/trust/TrustManager;

.field private mTrustedSoundId:I

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field private mUiSoundsStreamType:I

.field private mUnlockByFace:Z

.field private mUnlockByFingerPrint:Z

.field private mUnlockSoundId:I

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mWaitingUntilKeyguardVisible:Z

.field private mWakeAndUnlocking:Z

.field private mWakeupAndSleepSensor:Landroid/hardware/Sensor;

.field private mWakeupAndSleepSensorListener:Landroid/hardware/SensorEventListener;

.field private mWakeupByPickUp:Z

.field private mWorkLockController:Lcom/android/systemui/keyguard/WorkLockActivityController;


# direct methods
.method static synthetic -get0()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsFullScreenGestureOpened:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/keyguard/KeyguardViewMediator;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    return v0
.end method

.method static synthetic -get15(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/media/SoundPool;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockWhenSimRemoved:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedProfileShowingSequence:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShuttingDown:Z

    return v0
.end method

.method static synthetic -get21(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/app/trust/TrustManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/UiOffloadThread;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiSoundsStreamType:I

    return v0
.end method

.method static synthetic -get25(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeupByPickUp:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationFinishedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockByFingerPrint:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeupByPickUp:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsFullScreenGestureOpened:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockWhenSimRemoved:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mReadyForKeyEvent:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSendKeyEventScreenOn:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShuttingDown:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockByFace:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->migrateKeyguardFiles()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyFinishedGoingToSleep()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenTurnedOff()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenTurnedOn()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyStartedGoingToSleep()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyStartedWakingUp()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleReset()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V
    .locals 0
    .param p1, "isOccluded"    # Z
    .param p2, "animate"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleSetOccluded(ZZ)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/systemui/keyguard/KeyguardViewMediator;JJ)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    return-void
.end method

.method static synthetic -wrap20(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleVerifyUnlock()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lockProfile(I)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .param p1, "hasLockscreenWallpaper"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyHasLockscreenWallpaperChanged(Z)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendKeyEvent()V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendReEntryFaceUnlockNotification()V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .param p1, "forceHideHomeClockBack"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked(Z)V

    return-void
.end method

.method static synthetic -wrap30(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->tryKeyguardDone()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->disableFullScreenGesture(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleDismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDoneDrawing()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDone()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    sput v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->STRONG_AUTH_REQUIRED_AFTER_TIMEOUT:I

    .line 369
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    const/high16 v1, 0x24200000

    .line 369
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    .line 171
    return-void

    .line 193
    :cond_0
    const/16 v0, 0x100

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 218
    iput v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->OFF_BECAUSE_OF_ADMIN:I

    .line 220
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->OFF_BECAUSE_OF_USER:I

    .line 222
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->OFF_BECAUSE_OF_TIMEOUT:I

    .line 260
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 267
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mReadyForKeyEvent:Z

    .line 268
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSendKeyEventScreenOn:Z

    .line 269
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockByFingerPrint:Z

    .line 270
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockByFace:Z

    .line 279
    iput-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeupAndSleepSensor:Landroid/hardware/Sensor;

    .line 280
    iput-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLargeAreaTouchSensor:Landroid/hardware/Sensor;

    .line 289
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeupByPickUp:Z

    .line 305
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 312
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 322
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 344
    new-instance v0, Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/DismissCallbackRegistry;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    .line 356
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    .line 378
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 380
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 381
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 382
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    .line 436
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 643
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 1701
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mMigrateFilesRunnable:Ljava/lang/Runnable;

    .line 1713
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInitAllRunnable:Ljava/lang/Runnable;

    .line 1790
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1846
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    .line 2151
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    .line 2185
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationFinishedRunnable:Ljava/lang/Runnable;

    .line 2713
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsFullScreenGestureOpened:Z

    .line 2715
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFullScreenGestureObserver:Landroid/database/ContentObserver;

    .line 2737
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeupAndSleepSensorListener:Landroid/hardware/SensorEventListener;

    .line 2763
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$11;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLargeAreaTouchSensorListener:Landroid/hardware/SensorEventListener;

    .line 171
    return-void
.end method

.method private adjustStatusBarLocked()V
    .locals 1

    .prologue
    .line 2340
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked(Z)V

    .line 2339
    return-void
.end method

.method private adjustStatusBarLocked(Z)V
    .locals 4
    .param p1, "forceHideHomeClockBack"    # Z

    .prologue
    .line 2344
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_0

    .line 2346
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2345
    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 2348
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_1

    .line 2349
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Could not get status bar manager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    :goto_0
    return-void

    .line 2353
    :cond_1
    const/4 v0, 0x0

    .line 2354
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_2

    .line 2358
    const/high16 v0, 0x1000000

    .line 2360
    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2361
    :cond_3
    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 2362
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 2363
    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    .line 2367
    :cond_4
    const-string/jumbo v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "adjustStatusBarLocked: mShowing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mOccluded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2368
    const-string/jumbo v3, " isSecure="

    .line 2367
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2368
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v3

    .line 2367
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2368
    const-string/jumbo v3, " force="

    .line 2367
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2369
    const-string/jumbo v3, " --> flags=0x"

    .line 2367
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2369
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 2367
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private cancelDoKeyguardForChildProfilesLocked()V
    .locals 1

    .prologue
    .line 1114
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedProfileShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedProfileShowingSequence:I

    .line 1113
    return-void
.end method

.method private cancelDoKeyguardLaterLocked()V
    .locals 1

    .prologue
    .line 1110
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 1109
    return-void
.end method

.method private deleteFile(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 1688
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1689
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1690
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1687
    :cond_0
    :goto_0
    return-void

    .line 1691
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1692
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1693
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 1694
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->deleteFile(Ljava/io/File;)V

    .line 1693
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1696
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private disableFullScreenGesture(Z)V
    .locals 2
    .param p1, "disable"    # Z

    .prologue
    .line 2725
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsFullScreenGestureOpened:Z

    if-eqz v0, :cond_0

    .line 2726
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "typefrom_keyguard"

    invoke-static {v0, v1, p1}, Lcom/android/systemui/util/Utils;->updateFsgState(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2724
    :cond_0
    return-void
.end method

.method private doKeyguardForChildProfilesLocked()V
    .locals 6

    .prologue
    .line 1101
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 1102
    .local v1, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/UserManagerCompat;->getEnabledProfileIds(Landroid/os/UserManager;I)[I

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget v0, v3, v2

    .line 1103
    .local v0, "profileId":I
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v5, v0}, Lcom/android/internal/widget/LockPatternUtilsCompat;->isSeparateProfileChallengeEnabled(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1104
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lockProfile(I)V

    .line 1102
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1100
    .end local v0    # "profileId":I
    :cond_1
    return-void
.end method

.method private doKeyguardLaterForChildProfilesLocked()V
    .locals 15

    .prologue
    const/high16 v14, 0x10000000

    const/4 v9, 0x0

    .line 1079
    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 1080
    .local v3, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-static {v3, v8}, Landroid/os/UserManagerCompat;->getEnabledProfileIds(Landroid/os/UserManager;I)[I

    move-result-object v10

    array-length v11, v10

    move v8, v9

    :goto_0
    if-ge v8, v11, :cond_2

    aget v2, v10, v8

    .line 1081
    .local v2, "profileId":I
    iget-object v12, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v12, v2}, Lcom/android/internal/widget/LockPatternUtilsCompat;->isSeparateProfileChallengeEnabled(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1082
    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getLockTimeout(I)J

    move-result-wide v4

    .line 1083
    .local v4, "userTimeout":J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_1

    .line 1084
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardForChildProfilesLocked()V

    .line 1080
    .end local v4    # "userTimeout":J
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1086
    .restart local v4    # "userTimeout":J
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    add-long v6, v12, v4

    .line 1087
    .local v6, "userWhen":J
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v12, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_LOCK"

    invoke-direct {v0, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1088
    .local v0, "lockIntent":Landroid/content/Intent;
    const-string/jumbo v12, "seq"

    iget v13, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedProfileShowingSequence:I

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1089
    const-string/jumbo v12, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1090
    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1092
    iget-object v12, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 1091
    invoke-static {v12, v9, v0, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1093
    .local v1, "lockSender":Landroid/app/PendingIntent;
    iget-object v12, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v13, 0x2

    invoke-virtual {v12, v13, v6, v7, v1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 1078
    .end local v0    # "lockIntent":Landroid/content/Intent;
    .end local v1    # "lockSender":Landroid/app/PendingIntent;
    .end local v2    # "profileId":I
    .end local v4    # "userTimeout":J
    .end local v6    # "userWhen":J
    :cond_2
    return-void
.end method

.method private doKeyguardLaterLocked()V
    .locals 4

    .prologue
    .line 1056
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getLockTimeout(I)J

    move-result-wide v0

    .line 1057
    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1058
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 1055
    :goto_0
    return-void

    .line 1060
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked(J)V

    goto :goto_0
.end method

.method private doKeyguardLaterLocked(J)V
    .locals 7
    .param p1, "timeout"    # J

    .prologue
    const/high16 v6, 0x10000000

    .line 1066
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v2, v4, p1

    .line 1067
    .local v2, "when":J
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1068
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "seq"

    iget v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1069
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1070
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 1071
    const/4 v5, 0x0

    .line 1070
    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1072
    .local v1, "sender":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 1073
    const-string/jumbo v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setting alarm to turn off keyguard, seq = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1074
    iget v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 1073
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterForChildProfilesLocked()V

    .line 1064
    return-void
.end method

.method private doKeyguardLocked(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 1473
    iget-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v5, :cond_0

    .line 1474
    const-string/jumbo v4, "KeyguardViewMediator"

    const-string/jumbo v5, "doKeyguard: not showing because externally disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    return-void

    .line 1489
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1490
    const-string/jumbo v4, "KeyguardViewMediator"

    const-string/jumbo v5, "doKeyguard: not showing because it is already showing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    .line 1492
    return-void

    .line 1496
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mustNotUnlockCurrentUser()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1497
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1539
    :cond_2
    const-string/jumbo v4, "KeyguardViewMediator"

    const-string/jumbo v5, "doKeyguard: showing the lock screen"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 1471
    return-void

    .line 1500
    :cond_3
    const-string/jumbo v5, "keyguard.no_require_sim"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v3, 0x0

    .line 1502
    .local v3, "requireSim":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v5

    .line 1501
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    .line 1504
    .local v0, "absent":Z
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v5

    .line 1503
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    .line 1505
    .local v1, "disabled":Z
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1506
    if-nez v0, :cond_4

    if-eqz v1, :cond_7

    .line 1505
    .end local v3    # "requireSim":Z
    :cond_4
    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSimLockedOrMissing:Z

    .line 1508
    iget-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSimLockedOrMissing:Z

    if-nez v5, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1509
    const-string/jumbo v4, "KeyguardViewMediator"

    const-string/jumbo v5, "doKeyguard: not showing because device isn\'t provisioned and the sim is not locked or missing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    return-void

    .line 1500
    .end local v0    # "absent":Z
    .end local v1    # "disabled":Z
    :cond_5
    const/4 v3, 0x1

    .restart local v3    # "requireSim":Z
    goto :goto_0

    .line 1505
    .restart local v0    # "absent":Z
    .restart local v1    # "disabled":Z
    :cond_6
    const/4 v3, 0x1

    goto :goto_1

    :cond_7
    move v3, v4

    .line 1506
    goto :goto_1

    .line 1514
    .end local v3    # "requireSim":Z
    :cond_8
    if-eqz p1, :cond_a

    const-string/jumbo v5, "force_show"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1515
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1516
    iget-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSimLockedOrMissing:Z

    if-eqz v5, :cond_b

    .line 1521
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->checkVoldPassword(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1522
    const-string/jumbo v5, "KeyguardViewMediator"

    const-string/jumbo v6, "Not showing lock screen since just decrypted"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    invoke-direct {p0, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 1525
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 1526
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSuccessfulStrongAuthUnlockAttempt()V

    .line 1527
    return-void

    .line 1514
    :cond_a
    const/4 v2, 0x0

    .local v2, "forceShow":Z
    goto :goto_2

    .line 1516
    .end local v2    # "forceShow":Z
    :cond_b
    if-nez v2, :cond_9

    .line 1517
    const-string/jumbo v4, "KeyguardViewMediator"

    const-string/jumbo v5, "doKeyguard: not showing because lockscreen is off"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    return-void

    .line 1530
    :cond_c
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideLockForLid:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSimLockedOrMissing:Z

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1531
    const-string/jumbo v4, "KeyguardViewMediator"

    const-string/jumbo v5, "Not showing lock screen since in smart cover mode"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v4, :cond_d

    .line 1533
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V

    .line 1535
    :cond_d
    return-void
.end method

.method private getLockTimeout(I)J
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1014
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private handleDismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;

    .prologue
    .line 1564
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_2

    .line 1565
    if-eqz p1, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->addCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    .line 1568
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissAndCollapse()V

    .line 1563
    :cond_1
    :goto_0
    return-void

    .line 1569
    :cond_2
    if-eqz p1, :cond_1

    .line 1570
    new-instance v0, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;-><init>(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DismissCallbackWrapper;->notifyDismissError()V

    goto :goto_0
.end method

.method private handleHide()V
    .locals 4

    .prologue
    .line 2198
    const-string/jumbo v0, "KeyguardViewMediator#handleHide"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2199
    monitor-enter p0

    .line 2200
    :try_start_0
    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "handleHide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mustNotUnlockCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2207
    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "Split system user, quit unlocking."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2208
    return-void

    .line 2210
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 2212
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceUnlockStarted(Z)V

    .line 2213
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$18;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$18;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->runOnFaceUnlockWorkerThread(Ljava/lang/Runnable;)V

    .line 2236
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eqz v0, :cond_3

    .line 2240
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 2241
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    .line 2239
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V

    .line 2244
    :goto_0
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2245
    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->onKeyguardHide()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    .line 2248
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->unregisterWakeupAndSleepSensor()V

    .line 2249
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->unregisterSeneorsForKeyguard()V

    .line 2250
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2197
    return-void

    .line 2237
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleKeyguardDone()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1951
    const-string/jumbo v2, "KeyguardViewMediator#handleKeyguardDone"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1952
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 1953
    .local v0, "currentUser":I
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$13;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1961
    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "handleKeyguardDone"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    monitor-enter p0

    .line 1963
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1966
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 1967
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerprintRecognized()V

    .line 1968
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resetAllFingerprintLockout()V

    .line 1969
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBleUnlockHelper:Lcom/android/keyguard/MiuiBleUnlockHelper;

    invoke-virtual {v2}, Lcom/android/keyguard/MiuiBleUnlockHelper;->unregisterUnlockListener()V

    .line 1971
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1972
    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/keyguard/fod/MiuiGxzwManager;->setUnlockLockout(Z)V

    .line 1975
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    if-eqz v2, :cond_1

    .line 1976
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->resetMode()V

    .line 1977
    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "Device is going to sleep, aborting keyguardDone"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    return-void

    .line 1962
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1980
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v2, :cond_2

    .line 1982
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1987
    :goto_0
    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1991
    iput-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1992
    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1993
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestricted()V

    .line 1996
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V

    .line 1997
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportFaceUnlock(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1998
    const-string/jumbo v2, "face_unlock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keyguard dismiss time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->sStageInFaceUnlockTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    const-string/jumbo v2, "face_unlock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "face unlock time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/android/keyguard/KeyguardUpdateMonitor;->sScreenTurnedOnTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$14;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 2009
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1950
    return-void

    .line 1983
    :catch_0
    move-exception v1

    .line 1984
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "Failed to call onKeyguardExitResult()"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleKeyguardDoneDrawing()V
    .locals 2

    .prologue
    .line 2039
    const-string/jumbo v0, "KeyguardViewMediator#handleKeyguardDoneDrawing"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2040
    monitor-enter p0

    .line 2041
    :try_start_0
    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "handleKeyguardDoneDrawing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_0

    .line 2043
    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "handleKeyguardDoneDrawing: notifying mWaitingUntilKeyguardVisible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 2045
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyAll()V

    .line 2050
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 2053
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2038
    return-void

    .line 2040
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleNotifyFinishedGoingToSleep()V
    .locals 2

    .prologue
    .line 2414
    monitor-enter p0

    .line 2415
    :try_start_0
    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "handleNotifyFinishedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onFinishedGoingToSleep()V

    .line 2417
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->unregisterLargeAreaTouchSensor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2413
    return-void

    .line 2414
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleNotifyScreenTurnedOff()V
    .locals 2

    .prologue
    .line 2482
    monitor-enter p0

    .line 2483
    :try_start_0
    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "handleNotifyScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onScreenTurnedOff()V

    .line 2485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 2486
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 2487
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBleUnlockHelper:Lcom/android/keyguard/MiuiBleUnlockHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->unregisterUnlockListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2481
    return-void

    .line 2482
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleNotifyScreenTurnedOn()V
    .locals 2

    .prologue
    .line 2468
    const-string/jumbo v0, "KeyguardViewMediator#handleNotifyScreenTurnedOn"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2469
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2470
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/keyguard/LatencyTracker;->onActionEnd(I)V

    .line 2472
    :cond_0
    monitor-enter p0

    .line 2473
    :try_start_0
    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "handleNotifyScreenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSmartCoverHelper:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->onScreenTurnedOn()V

    .line 2475
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onScreenTurnedOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2477
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBleUnlockHelper:Lcom/android/keyguard/MiuiBleUnlockHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->verifyBLEDeviceRssi()V

    .line 2478
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2467
    return-void

    .line 2472
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleNotifyScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    .line 2434
    const-string/jumbo v0, "KeyguardViewMediator#handleNotifyScreenTurningOn"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2435
    monitor-enter p0

    .line 2436
    :try_start_0
    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "handleNotifyScreenTurningOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startFaceUnlock()V

    .line 2438
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onScreenTurningOn()V

    .line 2439
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isKeyguardWallpaperPreviewAvailable()Z

    move-result v0

    invoke-static {v0}, Lcom/android/keyguard/AnalyticsHelper;->recordScreenOn(Z)V

    .line 2440
    if-eqz p1, :cond_0

    .line 2441
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    if-eqz v0, :cond_2

    .line 2442
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 2451
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mReadyForKeyEvent:Z

    .line 2452
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSendKeyEventScreenOn:Z

    if-eqz v0, :cond_1

    .line 2453
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$21;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$21;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 2464
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2433
    return-void

    .line 2444
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isScreenTurnOnDelayed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2445
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyDrawnWhenScreenOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2435
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2447
    :cond_3
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private handleNotifyStartedGoingToSleep()V
    .locals 2

    .prologue
    .line 2402
    monitor-enter p0

    .line 2403
    :try_start_0
    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "handleNotifyStartedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopFaceUnlock()V

    .line 2405
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onStartedGoingToSleep()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2401
    return-void

    .line 2402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleNotifyStartedWakingUp()V
    .locals 2

    .prologue
    .line 2422
    const-string/jumbo v0, "KeyguardViewMediator#handleMotifyStartedWakingUp"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2423
    monitor-enter p0

    .line 2424
    :try_start_0
    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "handleNotifyWakingUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startFaceUnlock()V

    .line 2426
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onStartedWakingUp()V

    .line 2427
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->registerLargeAreaTouchSensor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStartedWakingUp:Z

    .line 2430
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2421
    return-void

    .line 2423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleReset()V
    .locals 2

    .prologue
    .line 2381
    monitor-enter p0

    .line 2382
    :try_start_0
    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "handleReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2380
    return-void

    .line 2381
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleSetOccluded(ZZ)V
    .locals 6
    .param p1, "isOccluded"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1390
    const-string/jumbo v1, "KeyguardViewMediator#handleSetOccluded"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1391
    monitor-enter p0

    .line 1392
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1395
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->startKeyguardExitAnimation(JJ)V

    .line 1398
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eq v1, p1, :cond_4

    .line 1399
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 1400
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardShowingAndOccluded(ZZ)V

    .line 1401
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_1

    .line 1402
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState(Z)V

    .line 1405
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSmartCoverHelper:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    invoke-virtual {v1}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->refreshSmartCover()V

    .line 1406
    if-eqz p1, :cond_2

    .line 1407
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopFaceUnlock()V

    .line 1409
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz p2, :cond_6

    .line 1410
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    .line 1409
    :goto_0
    invoke-virtual {v2, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setOccluded(ZZ)V

    .line 1411
    if-nez p1, :cond_3

    .line 1412
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startFaceUnlock()V

    .line 1413
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBleUnlockHelper:Lcom/android/keyguard/MiuiBleUnlockHelper;

    invoke-virtual {v1}, Lcom/android/keyguard/MiuiBleUnlockHelper;->verifyBLEDeviceRssi()V

    .line 1415
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1417
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_5

    .line 1418
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eqz v1, :cond_7

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->disableFullScreenGesture(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    .line 1421
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1389
    return-void

    :cond_6
    move v1, v0

    .line 1409
    goto :goto_0

    .line 1418
    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    .line 1391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleShow(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2111
    const-string/jumbo v4, "KeyguardViewMediator#handleShow"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2112
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 2113
    .local v0, "currentUser":I
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2114
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/app/admin/DevicePolicyManagerCompat;->reportKeyguardSecured(Landroid/app/admin/DevicePolicyManager;I)V

    .line 2116
    :cond_0
    monitor-enter p0

    .line 2117
    :try_start_0
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-nez v4, :cond_1

    .line 2118
    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "ignoring handleShow because system is not ready."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2119
    return-void

    .line 2121
    :cond_1
    :try_start_1
    const-string/jumbo v4, "KeyguardViewMediator"

    const-string/jumbo v5, "handleShow"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 2125
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 2126
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 2127
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 2128
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 2129
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 2130
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 2131
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 2133
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2134
    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/fod/MiuiGxzwManager;->onKeyguardShow()V

    .line 2137
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 2139
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardDisplayManager;->show()V

    .line 2140
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eqz v4, :cond_4

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->disableFullScreenGesture(Z)V

    .line 2141
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->registerWakeupAndSleepSensor()V

    .line 2143
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "security"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/security/SecurityManager;

    .line 2144
    .local v1, "securityManager":Lmiui/security/SecurityManager;
    if-eqz v1, :cond_3

    .line 2145
    const-string/jumbo v2, "*"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lmiui/security/SecurityManager;->removeAccessControlPassAsUser(Ljava/lang/String;I)V

    .line 2147
    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2110
    return-void

    .line 2116
    .end local v1    # "securityManager":Lmiui/security/SecurityManager;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_4
    move v2, v3

    .line 2140
    goto :goto_0
.end method

.method private handleStartKeyguardExitAnimation(JJ)V
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 2254
    const-string/jumbo v0, "KeyguardViewMediator#handleStartKeyguardExitAnimation"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2255
    const-string/jumbo v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleStartKeyguardExitAnimation startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2256
    const-string/jumbo v2, " fadeoutDuration="

    .line 2255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    monitor-enter p0

    .line 2259
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 2260
    return-void

    .line 2262
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 2264
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    if-eqz v0, :cond_1

    .line 2269
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->setReportNextDraw()V

    .line 2270
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 2271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 2276
    :cond_1
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2277
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 2280
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 2281
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 2282
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->notifyDismissSucceeded()V

    .line 2283
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hide(JJ)V

    .line 2284
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 2285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 2286
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 2287
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 2288
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V

    .line 2289
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$19;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$19;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 2296
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockByFingerPrint:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockByFace:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isTopActivitySystemApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2307
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->unregisterLargeAreaTouchSensor()V

    .line 2309
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportFaceUnlock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2310
    const-string/jumbo v0, "face_unlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keyguard exit time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->sScreenTurnedOnTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit p0

    .line 2313
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2253
    return-void

    .line 2297
    :cond_6
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockByFingerPrint:Z

    .line 2298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockByFace:Z

    .line 2299
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mReadyForKeyEvent:Z

    if-eqz v0, :cond_7

    .line 2300
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendKeyEvent()V

    .line 2301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mReadyForKeyEvent:Z

    .line 2302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSendKeyEventScreenOn:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2304
    :cond_7
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSendKeyEventScreenOn:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private handleVerifyUnlock()V
    .locals 2

    .prologue
    .line 2392
    const-string/jumbo v0, "KeyguardViewMediator#handleVerifyUnlock"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2393
    monitor-enter p0

    .line 2394
    :try_start_0
    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "handleVerifyUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 2396
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissAndCollapse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2398
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2391
    return-void

    .line 2393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hideLocked()V
    .locals 3

    .prologue
    .line 1749
    const-string/jumbo v1, "KeyguardViewMediator#hideLocked"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1750
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "hideLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1752
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1753
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1748
    return-void
.end method

.method private isTriggerSensorEnabled()Z
    .locals 4

    .prologue
    .line 2815
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pick_up_gesture_wakeup_mode"

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method private lockProfile(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/app/trust/TrustManagerCompat;->setDeviceLockedForUser(Landroid/app/trust/TrustManager;IZ)V

    .line 1551
    return-void
.end method

.method private maybeSendUserPresentBroadcast()V
    .locals 2

    .prologue
    .line 1186
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1187
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 1186
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1191
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 1185
    :cond_0
    :goto_0
    return-void

    .line 1192
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/widget/LockPatternUtilsCompat;->userPresent(Lcom/android/internal/widget/LockPatternUtils;I)V

    goto :goto_0
.end method

.method private migrateKeyguardFiles()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1658
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/data/user_de/0/com.android.keyguard/files/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1659
    .local v3, "keyguardFolder":Ljava/io/File;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1663
    new-instance v4, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    invoke-direct {v4, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 1669
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-nez v4, :cond_2

    .line 1670
    :cond_0
    const-string/jumbo v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "old files dir "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " has no file to migrate"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    return v8

    .line 1660
    .end local v1    # "files":[Ljava/io/File;
    :cond_1
    const-string/jumbo v4, "KeyguardViewMediator"

    const-string/jumbo v5, "old files not exist"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    return v8

    .line 1674
    .restart local v1    # "files":[Ljava/io/File;
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 1675
    aget-object v4, v1, v2

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/data/user_de/0/com.android.systemui/files/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1676
    const-string/jumbo v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "is migrating "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1674
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1679
    :cond_3
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "/data/user_de/0/com.android.keyguard/"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->deleteFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1680
    return v8

    .line 1681
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    .end local v3    # "keyguardFolder":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1682
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "KeyguardViewMediator"

    const-string/jumbo v5, "migrateKeyguardFiles fail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1683
    return v9
.end method

.method private notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    .line 2492
    const-string/jumbo v1, "KeyguardViewMediator#notifyDrawn"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2494
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDrawnCallback;->onDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2498
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2491
    return-void

    .line 2495
    :catch_0
    move-exception v0

    .line 2496
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Exception calling onDrawn():"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyDrawnWhenScreenOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    .line 2502
    const-string/jumbo v0, "KeyguardViewMediator#notifyDrawn"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2503
    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->screenTurnedOnCallback(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 2504
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2501
    return-void
.end method

.method private notifyFinishedGoingToSleep()V
    .locals 2

    .prologue
    .line 1603
    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "notifyFinishedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1602
    return-void
.end method

.method private notifyHasLockscreenWallpaperChanged(Z)V
    .locals 5
    .param p1, "hasLockscreenWallpaper"    # Z

    .prologue
    .line 2664
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2665
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2667
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->onHasLockscreenWallpaperChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2665
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2669
    :catch_0
    move-exception v0

    .line 2670
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "KeyguardViewMediator"

    const-string/jumbo v4, "Failed to call onHasLockscreenWallpaperChanged"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2671
    instance-of v3, v0, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 2672
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2663
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method private notifyScreenOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    .line 1613
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "notifyScreenOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1615
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1612
    return-void
.end method

.method private notifyScreenTurnedOff()V
    .locals 3

    .prologue
    .line 1625
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "notifyScreenTurnedOff"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1627
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1624
    return-void
.end method

.method private notifyScreenTurnedOn()V
    .locals 3

    .prologue
    .line 1619
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "notifyScreenTurnedOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1621
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1618
    return-void
.end method

.method private notifyStartedGoingToSleep()V
    .locals 2

    .prologue
    .line 1598
    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "notifyStartedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1597
    return-void
.end method

.method private notifyStartedWakingUp()V
    .locals 2

    .prologue
    .line 1608
    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "notifyStartedWakingUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1607
    return-void
.end method

.method private notifyTrustedChangedLocked(Z)V
    .locals 5
    .param p1, "trusted"    # Z

    .prologue
    .line 2650
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2651
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2653
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->onTrustedChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2651
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2654
    :catch_0
    move-exception v0

    .line 2655
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "KeyguardViewMediator"

    const-string/jumbo v4, "Failed to call notifyTrustedChangedLocked"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2656
    instance-of v3, v0, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 2657
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2649
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method private playSound(I)V
    .locals 3
    .param p1, "soundId"    # I

    .prologue
    const/4 v2, 0x1

    .line 2061
    if-nez p1, :cond_0

    return-void

    .line 2062
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2063
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "lockscreen_sounds_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 2065
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 2067
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_2

    .line 2068
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    .line 2069
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_1

    return-void

    .line 2070
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getUiSoundsStreamType()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiSoundsStreamType:I

    .line 2073
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$16;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$16;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 2060
    :cond_3
    return-void
.end method

.method private playSounds(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .prologue
    .line 2057
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSound(I)V

    .line 2056
    return-void

    .line 2057
    :cond_0
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    goto :goto_0
.end method

.method private registerLargeAreaTouchSensor()V
    .locals 4

    .prologue
    .line 2801
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "polaris"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    if-eqz v0, :cond_1

    .line 2800
    :cond_0
    :goto_0
    return-void

    .line 2801
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    .line 2802
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa2657

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLargeAreaTouchSensor:Landroid/hardware/Sensor;

    .line 2803
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLargeAreaTouchSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLargeAreaTouchSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method

.method private registerWakeupAndSleepSensor()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 2778
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isTriggerSensorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2779
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportPickupByXiaomi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2780
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa263e

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeupAndSleepSensor:Landroid/hardware/Sensor;

    .line 2781
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeupAndSleepSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeupAndSleepSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2777
    :cond_0
    :goto_0
    return-void

    .line 2782
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportNewPickupSensorByXiaomi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2783
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa265c

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeupAndSleepSensor:Landroid/hardware/Sensor;

    .line 2784
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeupAndSleepSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeupAndSleepSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 2785
    :cond_2
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "cactus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "cereus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2786
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeupAndSleepSensor:Landroid/hardware/Sensor;

    .line 2787
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeupAndSleepSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeupAndSleepSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method

.method private resetKeyguardDonePendingLocked()V
    .locals 2

    .prologue
    .line 2525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 2526
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2524
    return-void
.end method

.method private resetStateLocked()V
    .locals 3

    .prologue
    .line 1583
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "resetStateLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1585
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1582
    return-void
.end method

.method private static screenTurnedOnCallback(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 6
    .param p0, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    .line 2508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2509
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2511
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.policy.IKeyguardDrawnCallback"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2512
    sget-wide v4, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sScreenOnDelay:J

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 2513
    invoke-interface {p0}, Lcom/android/internal/policy/IKeyguardDrawnCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/16 v4, 0xff

    const/4 v5, 0x1

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2514
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2520
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2507
    :goto_0
    return-void

    .line 2515
    :catch_0
    move-exception v1

    .line 2516
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v3, "MiuiKeyguardUtils"

    const-string/jumbo v4, "something wrong when delayed turn on screen"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2520
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 2518
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    .line 2519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2520
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2518
    throw v3
.end method

.method private sendKeyEvent()V
    .locals 2

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$20;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$20;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 2316
    return-void
.end method

.method private sendReEntryFaceUnlockNotification()V
    .locals 7

    .prologue
    .line 1733
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1734
    .local v4, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.android.systemui"

    const-string/jumbo v2, "com.android.keyguard.settings.MiuiFaceDataInput"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1735
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 1736
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const v2, 0x9100435

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1737
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const v3, 0x9100436

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1741
    const-string/jumbo v6, "com.android.settings"

    .line 1738
    const v3, 0x90202c5

    .line 1740
    const/4 v5, 0x1

    .line 1735
    invoke-static/range {v0 .. v6}, Lcom/android/keyguard/KeyguardCompatibilityHelperForO;->sendNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZLjava/lang/String;)V

    .line 1732
    return-void
.end method

.method private sendUserPresentBroadcast()V
    .locals 5

    .prologue
    .line 2013
    monitor-enter p0

    .line 2014
    :try_start_0
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    if-eqz v3, :cond_0

    .line 2015
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 2016
    .local v1, "currentUserId":I
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 2017
    .local v0, "currentUser":Landroid/os/UserHandle;
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 2018
    const-string/jumbo v4, "user"

    .line 2017
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 2019
    .local v2, "um":Landroid/os/UserManager;
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v4, Lcom/android/systemui/keyguard/KeyguardViewMediator$15;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$15;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/UserManager;Landroid/os/UserHandle;I)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "currentUser":Landroid/os/UserHandle;
    .end local v1    # "currentUserId":I
    .end local v2    # "um":Landroid/os/UserManager;
    :goto_0
    monitor-exit p0

    .line 2012
    return-void

    .line 2029
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2013
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private setShowingLocked(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 2618
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(ZZ)V

    .line 2617
    return-void
.end method

.method private setShowingLocked(ZZ)V
    .locals 7
    .param p1, "showing"    # Z
    .param p2, "forceCallbacks"    # Z

    .prologue
    .line 2622
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-ne p1, v4, :cond_0

    if-eqz p2, :cond_3

    .line 2623
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 2624
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    iget-boolean v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    invoke-virtual {v4, v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardShowingAndOccluded(ZZ)V

    .line 2625
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateShowingState(Z)V

    .line 2626
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2627
    .local v3, "size":I
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 2628
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;

    .line 2630
    .local v0, "callback":Lcom/android/internal/policy/IKeyguardStateCallbackCompat;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->onShowingStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2627
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2631
    :catch_0
    move-exception v1

    .line 2632
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "KeyguardViewMediator"

    const-string/jumbo v5, "Failed to call onShowingStateChanged"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2633
    instance-of v4, v1, Landroid/os/DeadObjectException;

    if-eqz v4, :cond_1

    .line 2634
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2638
    .end local v0    # "callback":Lcom/android/internal/policy/IKeyguardStateCallbackCompat;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 2639
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v5, Lcom/android/systemui/keyguard/KeyguardViewMediator$22;

    invoke-direct {v5, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$22;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 2645
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState(Z)V

    .line 2621
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_3
    return-void
.end method

.method private setupLocked()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 796
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "power"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 797
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "trust"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/trust/TrustManager;

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 798
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "sensor"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSensorManager:Landroid/hardware/SensorManager;

    .line 799
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    .line 800
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "window"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 801
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDisplay:Landroid/view/Display;

    .line 803
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string/jumbo v8, "show keyguard"

    invoke-virtual {v5, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 804
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 806
    new-instance v5, Lcom/android/keyguard/MiuiBleUnlockHelper;

    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8, p0}, Lcom/android/keyguard/MiuiBleUnlockHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBleUnlockHelper:Lcom/android/keyguard/MiuiBleUnlockHelper;

    .line 807
    new-instance v5, Lcom/android/keyguard/smartcover/SmartCoverHelper;

    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8, p0}, Lcom/android/keyguard/smartcover/SmartCoverHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSmartCoverHelper:Lcom/android/keyguard/smartcover/SmartCoverHelper;

    .line 809
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 810
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 811
    const-string/jumbo v5, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_LOCK"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 812
    const-string/jumbo v5, "xiaomi.intent.action.SHOW_SECURE_KEYGUARD"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 813
    const-string/jumbo v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 814
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 816
    new-instance v5, Lcom/android/keyguard/KeyguardDisplayManager;

    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/keyguard/KeyguardDisplayManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    .line 818
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "alarm"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 820
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 821
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardViewMediator(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 823
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 824
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCurrentUser(I)V

    .line 828
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 829
    const v8, 0x90d001a

    .line 828
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 830
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v5

    if-nez v5, :cond_e

    .line 831
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 832
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    .line 831
    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    if-eqz v5, :cond_d

    move v5, v6

    .line 830
    :goto_0
    invoke-direct {p0, v5, v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setShowingLocked(ZZ)V

    .line 836
    :cond_0
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 837
    iget-object v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 836
    invoke-virtual {v5, v8, v9, v10}, Lcom/android/systemui/SystemUIFactory;->createStatusBarKeyguardViewManager(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v5

    .line 835
    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 838
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 840
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    .line 842
    new-instance v5, Landroid/media/SoundPool;

    invoke-direct {v5, v7, v7, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 843
    const-string/jumbo v5, "lock_sound"

    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 844
    .local v3, "soundPath":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 845
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v5, v3, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    .line 847
    :cond_1
    if-eqz v3, :cond_2

    iget v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    if-nez v5, :cond_3

    .line 848
    :cond_2
    const-string/jumbo v5, "KeyguardViewMediator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to load lock sound from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_3
    const-string/jumbo v5, "unlock_sound"

    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 851
    if-eqz v3, :cond_4

    .line 852
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v5, v3, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    .line 854
    :cond_4
    if-eqz v3, :cond_5

    iget v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    if-nez v5, :cond_6

    .line 855
    :cond_5
    const-string/jumbo v5, "KeyguardViewMediator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to load unlock sound from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_6
    const-string/jumbo v5, "trusted_sound"

    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 858
    if-eqz v3, :cond_7

    .line 859
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v5, v3, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    .line 861
    :cond_7
    if-eqz v3, :cond_8

    iget v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    if-nez v5, :cond_9

    .line 862
    :cond_8
    const-string/jumbo v5, "KeyguardViewMediator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "failed to load trusted sound from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 866
    const v7, 0x10e0005

    .line 865
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 867
    .local v2, "lockSoundDefaultAttenuation":I
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    int-to-float v5, v2

    const/high16 v7, 0x41a00000    # 20.0f

    div-float/2addr v5, v7

    float-to-double v10, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v5, v8

    iput v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    .line 869
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 870
    const v7, 0x10a0054

    .line 869
    invoke-static {v5, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    .line 872
    new-instance v5, Lcom/android/systemui/keyguard/WorkLockActivityController;

    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/android/systemui/keyguard/WorkLockActivityController;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWorkLockController:Lcom/android/systemui/keyguard/WorkLockActivityController;

    .line 874
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 875
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/fod/MiuiGxzwManager;->init(Landroid/content/Context;)V

    .line 878
    :cond_a
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->hasNavigationBar()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 879
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 880
    const-string/jumbo v7, "force_fsg_nav_bar"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 881
    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFullScreenGestureObserver:Landroid/database/ContentObserver;

    .line 879
    invoke-virtual {v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 882
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFullScreenGestureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 885
    :cond_b
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFaceUnlock()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 886
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mMigrateFilesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->runOnFaceUnlockWorkerThread(Ljava/lang/Runnable;)V

    .line 795
    :cond_c
    return-void

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "lockSoundDefaultAttenuation":I
    .end local v3    # "soundPath":Ljava/lang/String;
    :cond_d
    move v5, v7

    .line 831
    goto/16 :goto_0

    :cond_e
    move v5, v6

    .line 830
    goto/16 :goto_0
.end method

.method private shouldWaitForProvisioning()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1556
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showLocked(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1635
    const-string/jumbo v1, "KeyguardViewMediator#showLocked aqcuiring mShowKeyguardWakeLock"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1636
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "showLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1640
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    .line 1641
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFaceUnlock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1642
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInitAllRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->runOnFaceUnlockWorkerThread(Ljava/lang/Runnable;)V

    .line 1645
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1646
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1647
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1634
    return-void
.end method

.method private tryKeyguardDone()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1934
    const-string/jumbo v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryKeyguardDone mKeyguardDonePending = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1935
    const-string/jumbo v2, " mHideAnimationRun = "

    .line 1934
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1935
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 1934
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1936
    const-string/jumbo v2, " mHideAnimationRunning = "

    .line 1934
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1936
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    .line 1934
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    if-eqz v0, :cond_2

    .line 1939
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    if-nez v0, :cond_1

    .line 1940
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 1941
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRunning:Z

    .line 1942
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationFinishedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->startPreHideAnimation(Ljava/lang/Runnable;)V

    .line 1933
    :cond_1
    :goto_0
    return-void

    .line 1938
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDone()V

    goto :goto_0
.end method

.method private unregisterLargeAreaTouchSensor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2808
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLargeAreaTouchSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 2809
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLargeAreaTouchSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2810
    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLargeAreaTouchSensor:Landroid/hardware/Sensor;

    .line 2807
    :cond_0
    return-void
.end method

.method private unregisterWakeupAndSleepSensor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2793
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeupAndSleepSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 2794
    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "unregisterWakeupAndSleepSensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeupAndSleepSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2796
    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeupAndSleepSensor:Landroid/hardware/Sensor;

    .line 2792
    :cond_0
    return-void
.end method

.method private updateActivityLockScreenState(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    .line 2094
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$17;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$17;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 2093
    return-void
.end method

.method private updateInputRestricted()V
    .locals 1

    .prologue
    .line 1444
    monitor-enter p0

    .line 1445
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1443
    return-void

    .line 1444
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateInputRestrictedLocked()V
    .locals 7

    .prologue
    .line 1450
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isInputRestricted()Z

    move-result v3

    .line 1451
    .local v3, "inputRestricted":Z
    iget-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    if-eq v5, v3, :cond_1

    .line 1452
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    .line 1453
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1454
    .local v4, "size":I
    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1455
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;

    .line 1457
    .local v0, "callback":Lcom/android/internal/policy/IKeyguardStateCallbackCompat;
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->onInputRestrictedStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1454
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1458
    :catch_0
    move-exception v1

    .line 1459
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "KeyguardViewMediator"

    const-string/jumbo v6, "Failed to call onDeviceProvisioned"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1460
    instance-of v5, v1, Landroid/os/DeadObjectException;

    if-eqz v5, :cond_0

    .line 1461
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1449
    .end local v0    # "callback":Lcom/android/internal/policy/IKeyguardStateCallbackCompat;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .end local v4    # "size":I
    :cond_1
    return-void
.end method


# virtual methods
.method public addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallbackCompat;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardStateCallbackCompat;

    .prologue
    .line 2679
    monitor-enter p0

    .line 2680
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2682
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->onSimSecureStateChanged(Z)V

    .line 2683
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->onShowingStateChanged(Z)V

    .line 2684
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->onInputRestrictedStateChanged(Z)V

    .line 2685
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2686
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 2685
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->onTrustedChanged(Z)V

    .line 2687
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasLockscreenWallpaper()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->onHasLockscreenWallpaperChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    .line 2678
    return-void

    .line 2688
    :catch_0
    move-exception v0

    .line 2689
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Failed to call to IKeyguardStateCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2679
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1574
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0xa

    .line 1429
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1430
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1431
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1428
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2581
    const-string/jumbo v0, "  mSystemReady: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2582
    const-string/jumbo v0, "  mBootCompleted: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2583
    const-string/jumbo v0, "  mBootSendUserPresent: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2584
    const-string/jumbo v0, "  mExternallyEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2585
    const-string/jumbo v0, "  mShuttingDown: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShuttingDown:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2586
    const-string/jumbo v0, "  mNeedToReshowWhenReenabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2587
    const-string/jumbo v0, "  mShowing: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2588
    const-string/jumbo v0, "  mInputRestricted: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2589
    const-string/jumbo v0, "  mOccluded: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2590
    const-string/jumbo v0, "  mDelayedShowingSequence: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2591
    const-string/jumbo v0, "  mExitSecureCallback: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2592
    const-string/jumbo v0, "  mDeviceInteractive: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2593
    const-string/jumbo v0, "  mStartedWakingUp: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStartedWakingUp:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2594
    const-string/jumbo v0, "  mScreeningOn: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreeningOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2595
    const-string/jumbo v0, "  mGoingToSleep: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2596
    const-string/jumbo v0, "  mHiding: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2597
    const-string/jumbo v0, "  mWaitingUntilKeyguardVisible: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2598
    const-string/jumbo v0, "  mKeyguardDonePending: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2599
    const-string/jumbo v0, "  mHideAnimationRun: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2600
    const-string/jumbo v0, "  mPendingReset: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2601
    const-string/jumbo v0, "  mPendingLock: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2602
    const-string/jumbo v0, "  mWakeAndUnlocking: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2603
    const-string/jumbo v0, "  mDrawnCallback: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDrawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2580
    return-void
.end method

.method public getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;
    .locals 1

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-object v0
.end method

.method public handleSimSecureStateChanged()V
    .locals 6

    .prologue
    .line 771
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 772
    .local v3, "size":I
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v2

    .line 773
    .local v2, "simPinSecure":Z
    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 775
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;

    invoke-virtual {v4, v2}, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->onSimSecureStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 776
    :catch_0
    move-exception v0

    .line 777
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "KeyguardViewMediator"

    const-string/jumbo v5, "Failed to call onSimSecureStateChanged"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 778
    instance-of v4, v0, Landroid/os/DeadObjectException;

    if-eqz v4, :cond_0

    .line 779
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 770
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method public isFaceUnlockInited()Z
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    invoke-virtual {v0}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->hasInit()Z

    move-result v0

    return v0
.end method

.method public isHiding()Z
    .locals 1

    .prologue
    .line 1355
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    return v0
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 1440
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isScreeningOn()Z
    .locals 1

    .prologue
    .line 1371
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreeningOn:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 1757
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure(I)Z

    move-result v0

    return v0
.end method

.method public isSecure(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1762
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    .line 1761
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isShowingAndNotOccluded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1351
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isShowingAndOccluded()Z
    .locals 1

    .prologue
    .line 1363
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimLockedOrMissing()Z
    .locals 1

    .prologue
    .line 1548
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSimLockedOrMissing:Z

    return v0
.end method

.method public isStartedWakingUp()Z
    .locals 1

    .prologue
    .line 1367
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStartedWakingUp:Z

    return v0
.end method

.method public keyguardDone()V
    .locals 3

    .prologue
    .line 1830
    const-string/jumbo v1, "KeyguardViewMediator#keyguardDone"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1831
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "keyguardDone()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 1833
    const v1, 0x11170

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1834
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1835
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1836
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1829
    return-void
.end method

.method mustNotUnlockCurrentUser()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 790
    invoke-static {}, Landroid/os/UserManagerCompat;->isSplitSystemUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 791
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/proxy/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v1

    .line 790
    if-eqz v1, :cond_1

    .line 792
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 790
    :cond_1
    return v0
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 2531
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchBootCompleted()V

    .line 2532
    monitor-enter p0

    .line 2533
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    .line 2534
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    if-eqz v0, :cond_0

    .line 2535
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 2530
    return-void

    .line 2532
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDreamingStarted()V
    .locals 2

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchDreamingStarted()V

    .line 1206
    monitor-enter p0

    .line 1207
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 1207
    if-eqz v0, :cond_0

    .line 1209
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1204
    return-void

    .line 1206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDreamingStopped()V
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchDreamingStopped()V

    .line 1219
    monitor-enter p0

    .line 1220
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    .line 1221
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1217
    return-void

    .line 1219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onFinishedGoingToSleep(IZ)V
    .locals 4
    .param p1, "why"    # I
    .param p2, "cameraGestureTriggered"    # Z

    .prologue
    .line 971
    const-string/jumbo v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFinishedGoingToSleep("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    monitor-enter p0

    .line 973
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    .line 974
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    .line 976
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 977
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 979
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyFinishedGoingToSleep()V

    .line 981
    if-eqz p2, :cond_0

    .line 982
    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "Camera gesture was triggered, preventing Keyguard locking."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 986
    const-string/jumbo v1, "com.android.systemui:CAMERA_GESTURE_PREVENT_LOCK"

    .line 985
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 987
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    .line 988
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    .line 991
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    if-eqz v0, :cond_1

    .line 992
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    .line 993
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    .line 996
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    if-eqz v0, :cond_2

    .line 997
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 998
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    .line 1004
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockLater:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    :goto_0
    monitor-exit p0

    .line 1009
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchFinishedGoingToSleep(I)V

    .line 970
    return-void

    .line 1005
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardForChildProfilesLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 972
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 1181
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenTurnedOff()V

    .line 1182
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchScreenTurnedOff()V

    .line 1180
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 1173
    const-string/jumbo v0, "KeyguardViewMediator#onScreenTurnedOn"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreeningOn:Z

    .line 1175
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenTurnedOn()V

    .line 1176
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchScreenTurnedOn()V

    .line 1177
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1172
    return-void
.end method

.method public onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    .line 1166
    const-string/jumbo v0, "KeyguardViewMediator#onScreenTurningOn"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreeningOn:Z

    .line 1168
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 1169
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1165
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 12
    .param p1, "why"    # I

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x3

    .line 919
    const-string/jumbo v3, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onStartedGoingToSleep("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    monitor-enter p0

    .line 921
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    .line 922
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mGoingToSleep:Z

    .line 923
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeupByPickUp:Z

    .line 924
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockByFingerPrint:Z

    .line 925
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockByFace:Z

    .line 926
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mReadyForKeyEvent:Z

    .line 927
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSendKeyEventScreenOn:Z

    .line 932
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 934
    .local v0, "currentUser":I
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 935
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    .line 936
    .local v2, "lockImmediately":Z
    :goto_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getLockTimeout(I)J

    move-result-wide v4

    .line 937
    .local v4, "timeout":J
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockLater:Z

    .line 938
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v3, :cond_4

    .line 939
    const-string/jumbo v3, "KeyguardViewMediator"

    const-string/jumbo v6, "pending exit secure callback cancelled"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 941
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 945
    :goto_1
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 946
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v3, :cond_0

    .line 947
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 960
    :cond_0
    :goto_2
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z

    if-eqz v3, :cond_1

    if-eq p1, v8, :cond_1

    .line 961
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSounds(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    .line 964
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchStartedGoingToSleep(I)V

    .line 965
    sput-wide v10, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sScreenOnDelay:J

    .line 966
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyStartedGoingToSleep()V

    .line 967
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v3

    new-instance v6, Lcom/android/systemui/events/ScreenOffEvent;

    invoke-direct {v6}, Lcom/android/systemui/events/ScreenOffEvent;-><init>()V

    invoke-virtual {v3, v6}, Lcom/android/systemui/recents/events/RecentsEventBus;->post(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 918
    return-void

    .line 934
    .end local v2    # "lockImmediately":Z
    .end local v4    # "timeout":J
    :cond_2
    const/4 v2, 0x1

    .restart local v2    # "lockImmediately":Z
    goto :goto_0

    .line 935
    .end local v2    # "lockImmediately":Z
    :cond_3
    const/4 v2, 0x1

    .restart local v2    # "lockImmediately":Z
    goto :goto_0

    .line 942
    .restart local v4    # "timeout":J
    :catch_0
    move-exception v1

    .line 943
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v3, "KeyguardViewMediator"

    const-string/jumbo v6, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v3, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 920
    .end local v0    # "currentUser":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "lockImmediately":Z
    .end local v4    # "timeout":J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 949
    .restart local v0    # "currentUser":I
    .restart local v2    # "lockImmediately":Z
    .restart local v4    # "timeout":J
    :cond_4
    :try_start_4
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    if-eqz v3, :cond_7

    .line 952
    :cond_5
    if-ne p1, v8, :cond_8

    cmp-long v3, v4, v10

    if-lez v3, :cond_8

    .line 954
    :cond_6
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked(J)V

    .line 955
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockLater:Z

    goto :goto_2

    .line 950
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x7

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 951
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingReset:Z

    goto :goto_2

    .line 953
    :cond_8
    const/4 v3, 0x2

    if-ne p1, v3, :cond_9

    if-eqz v2, :cond_6

    .line 956
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 957
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPendingLock:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public onStartedWakingUp()V
    .locals 3

    .prologue
    .line 1121
    const-string/jumbo v0, "KeyguardViewMediator#onStartedWakingUp"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1124
    monitor-enter p0

    .line 1125
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDeviceInteractive:Z

    .line 1126
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 1127
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelDoKeyguardForChildProfilesLocked()V

    .line 1128
    const-string/jumbo v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartedWakingUp, seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyStartedWakingUp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1131
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchStartedWakingUp()V

    .line 1132
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 1133
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/events/ScreenOnEvent;

    invoke-direct {v1}, Lcom/android/systemui/events/ScreenOnEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->post(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 1134
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1120
    return-void

    .line 1124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStartedWakingUp(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1142
    monitor-enter p0

    .line 1143
    :try_start_0
    const-string/jumbo v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartedWakingUp, reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStartedWakingUp:Z

    .line 1145
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportScreenOnDelayed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldListenForFaceUnlock()Z

    move-result v0

    .line 1145
    if-eqz v0, :cond_0

    .line 1146
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isFaceUnlockInited()Z

    move-result v0

    .line 1145
    if-eqz v0, :cond_0

    .line 1147
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->setScreenTurnOnDelayed(Z)V

    .line 1148
    const-string/jumbo v0, "face_unlock"

    const-string/jumbo v1, "face unlock when screen on delayed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    const-wide/16 v0, 0x226

    sput-wide v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sScreenOnDelay:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 1140
    return-void

    .line 1151
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->setScreenTurnOnDelayed(Z)V

    .line 1152
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sScreenOnDelay:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSystemReady()V
    .locals 2

    .prologue
    .line 902
    monitor-enter p0

    .line 903
    :try_start_0
    const-string/jumbo v0, "KeyguardViewMediator"

    const-string/jumbo v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    .line 905
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 906
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 910
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 901
    return-void

    .line 902
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onWakeAndUnlocking()V
    .locals 1

    .prologue
    .line 2541
    const-string/jumbo v0, "KeyguardViewMediator#onWakeAndUnlocking"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWakeAndUnlocking:Z

    .line 2543
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    .line 2544
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2540
    return-void
.end method

.method public registerStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;Lcom/android/keyguard/faceunlock/FaceUnlockController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 7
    .param p1, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p4, "fingerprintUnlockController"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;
    .param p5, "faceUnlockController"    # Lcom/android/keyguard/faceunlock/FaceUnlockController;

    .prologue
    .line 2552
    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 2553
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 2555
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2553
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->registerStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;Lcom/android/keyguard/faceunlock/FaceUnlockController;Lcom/android/systemui/keyguard/DismissCallbackRegistry;)V

    .line 2556
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method public setCurrentUser(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .prologue
    .line 1780
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCurrentUser(I)V

    .line 1781
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1782
    if-eqz p1, :cond_0

    .line 1783
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->setUserAuthenticatedSinceBootSecond()V

    .line 1785
    :cond_0
    monitor-enter p0

    .line 1786
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyTrustedChangedLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1779
    return-void

    .line 1785
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHideLockForLid(Z)V
    .locals 0
    .param p1, "hideLockForLid"    # Z

    .prologue
    .line 1544
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideLockForLid:Z

    .line 1543
    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 1232
    monitor-enter p0

    .line 1233
    :try_start_0
    const-string/jumbo v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setKeyguardEnabled("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1237
    if-nez p1, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_2

    .line 1238
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v2, :cond_0

    .line 1239
    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "in process of verifyUnlock request, ignoring"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1242
    return-void

    .line 1246
    :cond_0
    :try_start_1
    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "remembering to reshow, hiding keyguard, disabling status bar expansion"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1249
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 1250
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    .line 1231
    return-void

    .line 1251
    :cond_2
    if-eqz p1, :cond_1

    :try_start_2
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz v2, :cond_1

    .line 1253
    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "previously hidden, reshowing, reenabling status bar expansion"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1256
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 1258
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v2, :cond_3

    .line 1259
    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "onKeyguardExitResult(false), resetting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1261
    :try_start_3
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1265
    :goto_1
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1266
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1232
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1268
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 1273
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1274
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1275
    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "waiting until mWaitingUntilKeyguardVisible is false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :goto_2
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_4

    .line 1278
    :try_start_6
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 1279
    :catch_1
    move-exception v1

    .line 1280
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 1283
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_4
    const-string/jumbo v2, "KeyguardViewMediator"

    const-string/jumbo v3, "done waiting for mWaitingUntilKeyguardVisible"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0
.end method

.method public setOccluded(ZZ)V
    .locals 7
    .param p1, "isOccluded"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/16 v6, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1378
    const-string/jumbo v3, "KeyguardViewMediator#setOccluded"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1379
    const-string/jumbo v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOccluded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1381
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v3, v1

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v4, v6, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1382
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1383
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1377
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v3, v2

    .line 1381
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public shouldListenForFaceUnlock()Z
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFaceUnlock()Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 892
    monitor-enter p0

    .line 893
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setupLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 895
    const-class v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 891
    return-void

    .line 892
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 9
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 2560
    const-string/jumbo v1, "KeyguardViewMediator#startKeyguardExitAnimation"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2561
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    .line 2562
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    const/4 v6, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;-><init>(JJLcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;)V

    .line 2561
    const/16 v2, 0xc

    invoke-virtual {v7, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2563
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2564
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2559
    return-void
.end method

.method public unblockScreenOn()V
    .locals 8

    .prologue
    .line 2695
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;

    .line 2696
    .local v0, "callback":Lcom/android/internal/policy/IKeyguardStateCallbackCompat;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2697
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2699
    .local v4, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "com.android.internal.policy.IKeyguardStateCallback"

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2700
    invoke-virtual {v0}, Lcom/android/internal/policy/IKeyguardStateCallbackCompat;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/16 v6, 0xff

    const/4 v7, 0x1

    invoke-interface {v5, v6, v2, v4, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2701
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2706
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2707
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 2702
    :catch_0
    move-exception v3

    .line 2703
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v5, "MiuiKeyguardUtils"

    const-string/jumbo v6, "something wrong when unblock screen on"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2706
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2707
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 2705
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    .line 2706
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2707
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2705
    throw v5

    .line 2694
    .end local v0    # "callback":Lcom/android/internal/policy/IKeyguardStateCallbackCompat;
    .end local v2    # "data":Landroid/os/Parcel;
    .end local v4    # "reply":Landroid/os/Parcel;
    :cond_0
    return-void
.end method

.method public userActivity()V
    .locals 4

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 785
    return-void
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardExitCallback;

    .prologue
    .line 1293
    const-string/jumbo v1, "KeyguardViewMediator#verifyUnlock"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1294
    monitor-enter p0

    .line 1295
    :try_start_0
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "verifyUnlock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1298
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "ignoring because device isn\'t provisioned"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1300
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    .line 1344
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1292
    return-void

    .line 1301
    :catch_0
    move-exception v0

    .line 1302
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1294
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1304
    :cond_0
    :try_start_3
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v1, :cond_1

    .line 1308
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "verifyUnlock called when not externally disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1310
    const/4 v1, 0x0

    :try_start_4
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1311
    :catch_1
    move-exception v0

    .line 1312
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1314
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_2

    .line 1317
    const/4 v1, 0x0

    :try_start_6
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1318
    :catch_2
    move-exception v0

    .line 1319
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_7
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1321
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1325
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1326
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1327
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateInputRestricted()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1329
    const/4 v1, 0x1

    :try_start_8
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 1330
    :catch_3
    move-exception v0

    .line 1331
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_9
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 1338
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    const/4 v1, 0x0

    :try_start_a
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    .line 1339
    :catch_4
    move-exception v0

    .line 1340
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_b
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0
.end method
