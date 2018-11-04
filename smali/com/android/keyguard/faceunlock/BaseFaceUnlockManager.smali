.class public abstract Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;
.super Ljava/lang/Object;
.source "BaseFaceUnlockManager.java"

# interfaces
.implements Lcom/android/keyguard/faceunlock/IPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;,
        Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$2;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field private static mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field public static sInitFaceUlockUtil:Z

.field public static sStageInFaceUnlockTime:J

.field public static sStartFaceUnlockTime:J


# instance fields
.field protected mCallback:Lcom/android/keyguard/faceunlock/FaceUnlockCallback;

.field protected mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

.field private mCloseCameraHandler:Landroid/os/Handler;

.field private mCloseCameraRunnable:Ljava/lang/Runnable;

.field private mCloseCameraThread:Landroid/os/HandlerThread;

.field protected mContext:Landroid/content/Context;

.field protected mFaceUnlockView:Landroid/view/TextureView;

.field protected mFailedCount:I

.field protected mFailedLiveCount:I

.field protected mFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field protected mHasFace:Z

.field protected mHasInit:Z

.field protected mHelpStringResId:I

.field protected mIsDetecting:Z

.field protected mIsSuccess:Z

.field protected mIsTrigger:Z

.field protected mLiveAttack:Z

.field protected mLiveAttackValue:I

.field protected mMainHandler:Landroid/os/Handler;

.field protected mNoFaceDetectedValue:I

.field protected mPreviewFrame:[B

.field protected mReport:[I

.field protected mSharedPreferenceUtil:Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;

.field protected mSkipIfNotFound:Z

.field protected mStartSetMeteringAreasTime:J

.field protected mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 1

    sget-object v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/KeyguardMonitor;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 0

    sput-object p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->DEBUG:Z

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->sInitFaceUlockUtil:Z

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "face_unlock"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 44
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "close_camera"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCloseCameraThread:Landroid/os/HandlerThread;

    .line 52
    const/16 v0, 0x14

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mReport:[I

    .line 56
    iput v2, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mNoFaceDetectedValue:I

    .line 57
    iput-boolean v2, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHasFace:Z

    .line 58
    iput-boolean v2, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mLiveAttack:Z

    .line 79
    iput-boolean v2, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mSkipIfNotFound:Z

    .line 93
    new-instance v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;-><init>(Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mMainHandler:Landroid/os/Handler;

    .line 239
    new-instance v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$2;-><init>(Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;)V

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCloseCameraRunnable:Ljava/lang/Runnable;

    .line 36
    return-void
.end method

.method private newWorkerHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$3;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$3;-><init>(Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;Landroid/os/Looper;)V

    return-object v0
.end method


# virtual methods
.method protected abstract getFeatureCount()I
.end method

.method protected abstract getRunOutTime()I
.end method

.method protected abstract getVersion()Ljava/lang/String;
.end method

.method protected handlePassed()V
    .locals 2

    .prologue
    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsSuccess:Z

    .line 304
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 305
    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->stopDetect()V

    .line 302
    return-void
.end method

.method public hasInit()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHasInit:Z

    return v0
.end method

.method public initFaceUnlockUtil()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportFaceUnlock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    new-instance v0, Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mSharedPreferenceUtil:Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 158
    invoke-direct {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->newWorkerHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    .line 159
    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->isFaceJiajia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCloseCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 161
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCloseCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCloseCameraHandler:Landroid/os/Handler;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportFaceUnlockUseCamera1(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    new-instance v0, Lcom/android/keyguard/faceunlock/Camera1Util;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/faceunlock/Camera1Util;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    .line 169
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->sInitFaceUlockUtil:Z

    .line 171
    :cond_1
    new-instance v0, Lcom/android/keyguard/FingerprintHelper;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/FingerprintHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

    .line 172
    invoke-static {}, Lcom/android/keyguard/faceunlock/BoostFrameworkHelper;->initBoostFramework()V

    .line 154
    return-void

    .line 167
    :cond_2
    new-instance v0, Lcom/android/keyguard/faceunlock/Camera2Util;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->isIrCamera()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/keyguard/faceunlock/Camera2Util;-><init>(Landroid/content/Context;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    goto :goto_0
.end method

.method protected isFaceJiajia()Z
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method protected isFaceUnlockLocked()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 314
    iget v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFailedCount:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFailedLiveCount:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isIrCamera()Z
.end method

.method public openCameraSucced(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "result"    # Z

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsTrigger:Z

    if-nez v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->stopDetect()V

    .line 283
    return-void

    .line 285
    :cond_0
    if-eqz p2, :cond_3

    .line 286
    sget-boolean v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 287
    const-string/jumbo v0, "face_unlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "open camera succeed time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->sStageInFaceUnlockTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->sStageInFaceUnlockTime:J

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFaceUnlockView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->startPreview(Landroid/graphics/SurfaceTexture;Z)V

    .line 291
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->getRunOutTime()I

    move-result v1

    int-to-long v2, v1

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 292
    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->isFaceJiajia()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCloseCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCloseCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 294
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCloseCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCloseCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->getRunOutTime()I

    move-result v2

    add-int/lit16 v2, v2, 0x1388

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    :cond_2
    :goto_0
    return-void

    .line 298
    :cond_3
    const-string/jumbo v0, "face_unlock"

    const-string/jumbo v1, "open Camera failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->release(Z)V

    .line 223
    return-void
.end method

.method public release(Z)V
    .locals 4
    .param p1, "delay"    # Z

    .prologue
    const/16 v1, 0x3ef

    .line 228
    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHasInit:Z

    if-nez v0, :cond_0

    return-void

    .line 229
    :cond_0
    if-nez p1, :cond_2

    .line 230
    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->releaseFaceUnlock()V

    .line 227
    :cond_1
    :goto_0
    return-void

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected abstract releaseFaceUnlock()V
.end method

.method public resetFailCount()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 309
    iput v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFailedCount:I

    .line 310
    iput v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFailedLiveCount:I

    .line 308
    return-void
.end method

.method public runOnFaceUnlockWorkerThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 148
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 145
    :goto_0
    return-void

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startFaceUnlock(Landroid/view/TextureView;Lcom/android/keyguard/faceunlock/FaceUnlockCallback;)V
    .locals 7
    .param p1, "textureView"    # Landroid/view/TextureView;
    .param p2, "callback"    # Lcom/android/keyguard/faceunlock/FaceUnlockCallback;

    .prologue
    const/4 v6, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->isFaceUnlockLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 182
    return-void

    .line 184
    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFaceUnlockView:Landroid/view/TextureView;

    .line 185
    iput-object p2, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCallback:Lcom/android/keyguard/faceunlock/FaceUnlockCallback;

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->sStartFaceUnlockTime:J

    .line 187
    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsTrigger:Z

    if-nez v0, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->isFaceUnlockLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    :cond_1
    const-string/jumbo v0, "face_unlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsTrigger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsTrigger:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 210
    const-string/jumbo v2, ";isFaceUnlockLocked="

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 210
    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->isFaceUnlockLocked()Z

    move-result v2

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 211
    const-string/jumbo v2, ";getFeatureCount="

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 211
    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->getFeatureCount()I

    move-result v2

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 212
    const-string/jumbo v2, ";mHasInit="

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 212
    iget-boolean v2, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHasInit:Z

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_0
    return-void

    .line 189
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->getFeatureCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 190
    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHasInit:Z

    .line 187
    if-eqz v0, :cond_1

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsTrigger:Z

    .line 192
    iput-boolean v6, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsSuccess:Z

    .line 193
    iput-boolean v6, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsDetecting:Z

    .line 194
    iput-boolean v6, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mLiveAttack:Z

    .line 195
    iput-boolean v6, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHasFace:Z

    .line 196
    iput-boolean v6, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mSkipIfNotFound:Z

    .line 197
    iput v6, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mLiveAttackValue:I

    .line 198
    iput v6, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mNoFaceDetectedValue:I

    .line 199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mStartSetMeteringAreasTime:J

    .line 200
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 201
    const-string/jumbo v0, "face_unlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start open camera time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->sScreenTurnedOnTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  sdk version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->sStageInFaceUnlockTime:J

    .line 203
    invoke-static {}, Lcom/android/keyguard/faceunlock/BoostFrameworkHelper;->setBoostFramework()V

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 205
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->setCameraCallback(Lcom/android/keyguard/faceunlock/IPreviewCallback;)V

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    invoke-virtual {v0, v6}, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->openCamera(I)V

    goto :goto_0
.end method

.method protected stopDetect()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->stopDetect(Z)V

    .line 252
    return-void
.end method

.method protected stopDetect(Z)V
    .locals 2
    .param p1, "closeCamera"    # Z

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->isFaceJiajia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCloseCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCloseCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 261
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsTrigger:Z

    .line 262
    if-eqz p1, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    invoke-virtual {v0}, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->closeCamera()V

    .line 265
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHasFace:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsSuccess:Z

    if-eqz v0, :cond_4

    .line 271
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mLiveAttack:Z

    if-eqz v0, :cond_3

    .line 272
    iget v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFailedLiveCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFailedLiveCount:I

    .line 273
    iget v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFailedLiveCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 274
    invoke-static {}, Lcom/android/keyguard/AnalyticsHelper;->trackFaceUnlockLocked()V

    .line 256
    :cond_3
    return-void

    .line 266
    :cond_4
    iget v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFailedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFailedCount:I

    .line 267
    iget v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFailedCount:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 268
    invoke-static {}, Lcom/android/keyguard/AnalyticsHelper;->trackFaceUnlockLocked()V

    goto :goto_0
.end method

.method public stopFaceUnlock()V
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsTrigger:Z

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsTrigger:Z

    .line 219
    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->stopDetect()V

    .line 216
    :cond_0
    return-void
.end method
