.class public Lcom/android/keyguard/settings/MiuiFaceDataInput;
.super Lmiui/preference/PreferenceActivity;
.source "MiuiFaceDataInput.java"

# interfaces
.implements Lcom/android/keyguard/faceunlock/IPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/settings/MiuiFaceDataInput$1;,
        Lcom/android/keyguard/settings/MiuiFaceDataInput$2;
    }
.end annotation


# instance fields
.field private mAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

.field private mCancelOrOkButton:Landroid/widget/Button;

.field private mConfig:[I

.field private mConfirmLockLaunched:Z

.field private mContext:Landroid/content/Context;

.field private final mDelayedHide:Ljava/lang/Runnable;

.field private mFaceAuthManager:Lcom/sensetime/faceauth/FaceAuthManager;

.field private mFaceInputMsg:Landroid/widget/TextView;

.field private mFaceInputTitle:Landroid/widget/TextView;

.field private mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHasConfirmPassword:Z

.field private mHasFaceData:Z

.field private mHasStart:Z

.field private mImage:[B

.field private mIsDetect:Z

.field private mIsKeyguardPasswordSecured:Z

.field private mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

.field private mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

.field private mOpenCameraStart:Z

.field private mOpenCameraSuccess:Z

.field private mSCStatus:I

.field private mSCStatusProviderObserver:Landroid/database/ContentObserver;

.field private mSavedFeature:[B

.field private mStartDetectTime:J

.field private mSucceed:Z

.field private mSurface:Lcom/android/keyguard/settings/CameraView;

.field private mValidFaceData:Z

.field private mWorkerHandler:Landroid/os/Handler;

.field private textureView:Landroid/view/TextureView;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Lcom/android/keyguard/faceunlock/AbstractCameraUtil;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCancelOrOkButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mSucceed:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Lcom/android/keyguard/settings/CameraView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mSurface:Lcom/android/keyguard/settings/CameraView;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->textureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mDelayedHide:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mFaceInputMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mFaceInputTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mHasConfirmPassword:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mOpenCameraStart:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/keyguard/settings/MiuiFaceDataInput;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mSCStatus:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/settings/MiuiFaceDataInput;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mOpenCameraStart:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/settings/MiuiFaceDataInput;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mOpenCameraSuccess:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/settings/MiuiFaceDataInput;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mSCStatus:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/keyguard/settings/MiuiFaceDataInput;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mStartDetectTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/settings/MiuiFaceDataInput;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->startOpenCamera()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mHandler:Landroid/os/Handler;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mConfirmLockLaunched:Z

    .line 78
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "detect"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mHandlerThread:Landroid/os/HandlerThread;

    .line 80
    const/16 v0, 0x2710

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mSavedFeature:[B

    .line 81
    const v0, 0x9c40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mImage:[B

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mConfig:[I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mFaceAuthManager:Lcom/sensetime/faceauth/FaceAuthManager;

    .line 232
    new-instance v0, Lcom/android/keyguard/settings/MiuiFaceDataInput$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput$1;-><init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;)V

    iput-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mDelayedHide:Ljava/lang/Runnable;

    .line 419
    new-instance v0, Lcom/android/keyguard/settings/MiuiFaceDataInput$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/settings/MiuiFaceDataInput$2;-><init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mSCStatusProviderObserver:Landroid/database/ContentObserver;

    .line 48
    return-void
.end method

.method private isAvailableFaceData()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mHasFaceData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mValidFaceData:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private start()V
    .locals 5

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x0

    .line 223
    iput-boolean v3, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mIsDetect:Z

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mHasStart:Z

    .line 225
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mFaceAuthManager:Lcom/sensetime/faceauth/FaceAuthManager;

    const/16 v1, 0x1cc

    const/16 v2, 0x258

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/sensetime/faceauth/FaceAuthManager;->setDetectArea(IIII)V

    .line 226
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->startPreview(Landroid/graphics/SurfaceTexture;Z)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mDelayedHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 222
    return-void
.end method

.method private startOpenCamera()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->setCameraCallback(Lcom/android/keyguard/faceunlock/IPreviewCallback;)V

    .line 306
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/settings/MiuiFaceDataInput$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput$6;-><init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 304
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 176
    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mSucceed:Z

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x9100410

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->finish()V

    .line 181
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 276
    invoke-super {p0, p1, p2, p3}, Lmiui/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 277
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 278
    if-ne p1, v4, :cond_3

    .line 279
    :cond_0
    if-ne p2, v2, :cond_2

    .line 280
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 281
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.systemui"

    const-string/jumbo v2, "com.android.keyguard.settings.MiuiFaceDataSuggestion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0, v0, v5}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->startActivityForResult(Landroid/content/Intent;I)V

    .line 275
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 285
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->finish()V

    goto :goto_0

    .line 288
    :cond_3
    if-ne p1, v5, :cond_1

    .line 289
    if-ne p2, v2, :cond_5

    .line 290
    iput-boolean v4, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mHasConfirmPassword:Z

    .line 291
    iget v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mSCStatus:I

    if-nez v1, :cond_4

    .line 292
    invoke-direct {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->startOpenCamera()V

    goto :goto_0

    .line 295
    :cond_4
    iput-boolean v3, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mOpenCameraStart:Z

    goto :goto_0

    .line 299
    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 90
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v1, 0x9040069

    invoke-virtual {p0, v1}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->setContentView(I)V

    .line 92
    new-instance v1, Landroid/security/MiuiLockPatternUtils;

    invoke-direct {v1, p0}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 93
    new-instance v1, Lcom/android/keyguard/LockPatternUtilsWrapper;

    iget-object v4, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-direct {v1, v4}, Lcom/android/keyguard/LockPatternUtilsWrapper;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    .line 94
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "face_unlock_has_feature"

    .line 95
    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v5

    .line 94
    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mHasFaceData:Z

    .line 96
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "face_unlock_valid_feature"

    .line 97
    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v5

    .line 96
    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mValidFaceData:Z

    .line 98
    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-virtual {v1}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getActivePasswordQuality()I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mIsKeyguardPasswordSecured:Z

    .line 100
    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 101
    new-instance v1, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mWorkerHandler:Landroid/os/Handler;

    .line 103
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportFaceUnlockUseCamera1(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 104
    new-instance v1, Lcom/android/keyguard/faceunlock/Camera1Util;

    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mWorkerHandler:Landroid/os/Handler;

    invoke-direct {v1, v4, v5}, Lcom/android/keyguard/faceunlock/Camera1Util;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    .line 109
    :goto_3
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    .line 111
    invoke-static {}, Lcom/sensetime/faceauth/FaceAuthManager;->getInstance()Lcom/sensetime/faceauth/FaceAuthManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mFaceAuthManager:Lcom/sensetime/faceauth/FaceAuthManager;

    .line 112
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x90b00f8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mConfig:[I

    .line 113
    if-eqz p1, :cond_0

    .line 114
    const-string/jumbo v1, "key_confirm_lock_launched"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mConfirmLockLaunched:Z

    .line 116
    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mIsKeyguardPasswordSecured:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->isAvailableFaceData()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 123
    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mIsKeyguardPasswordSecured:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->isAvailableFaceData()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 129
    :cond_2
    :goto_4
    const v1, 0x9120173

    invoke-virtual {p0, v1}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mFaceInputTitle:Landroid/widget/TextView;

    .line 130
    const v1, 0x9120174

    invoke-virtual {p0, v1}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mFaceInputMsg:Landroid/widget/TextView;

    .line 131
    const v1, 0x9120172

    invoke-virtual {p0, v1}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/settings/CameraView;

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mSurface:Lcom/android/keyguard/settings/CameraView;

    .line 132
    const v1, 0x9120171

    invoke-virtual {p0, v1}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->textureView:Landroid/view/TextureView;

    .line 133
    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->textureView:Landroid/view/TextureView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/TextureView;->setAlpha(F)V

    .line 134
    const v1, 0x9120175

    invoke-virtual {p0, v1}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCancelOrOkButton:Landroid/widget/Button;

    .line 135
    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCancelOrOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 136
    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCancelOrOkButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/keyguard/settings/MiuiFaceDataInput$3;

    invoke-direct {v4, p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput$3;-><init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 156
    const-string/jumbo v4, "sc_status"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 157
    iget-object v5, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mSCStatusProviderObserver:Landroid/database/ContentObserver;

    const/4 v6, -0x1

    .line 155
    invoke-virtual {v1, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 158
    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mSCStatusProviderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 159
    iget-object v4, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mFaceInputMsg:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mSCStatus:I

    if-ne v1, v2, :cond_9

    const v1, 0x910047c

    :goto_5
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 160
    iput-boolean v3, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mOpenCameraStart:Z

    .line 89
    return-void

    :cond_3
    move v1, v3

    .line 94
    goto/16 :goto_0

    :cond_4
    move v1, v3

    .line 96
    goto/16 :goto_1

    :cond_5
    move v1, v3

    .line 98
    goto/16 :goto_2

    .line 107
    :cond_6
    new-instance v1, Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mWorkerHandler:Landroid/os/Handler;

    invoke-direct {v1, v4, v5}, Lcom/android/keyguard/faceunlock/Camera2Util;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    goto/16 :goto_3

    .line 116
    :cond_7
    iget-boolean v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mConfirmLockLaunched:Z

    if-nez v1, :cond_1

    .line 117
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    .line 119
    const-string/jumbo v4, "com.android.settings.MiuiConfirmCommonPassword"

    .line 118
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->startActivityForResult(Landroid/content/Intent;I)V

    .line 121
    iput-boolean v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mConfirmLockLaunched:Z

    goto/16 :goto_4

    .line 124
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 125
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.systemui"

    const-string/jumbo v4, "com.android.keyguard.settings.MiuiFaceDataIntroduction"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->startActivityForResult(Landroid/content/Intent;I)V

    .line 127
    iput-boolean v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mConfirmLockLaunched:Z

    goto/16 :goto_4

    .line 159
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_9
    const v1, 0x910040a

    goto :goto_5
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mSCStatusProviderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 212
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 214
    iput-object v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mAsyncTask:Landroid/os/AsyncTask;

    .line 216
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mSucceed:Z

    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    invoke-virtual {v0}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->release()V

    .line 219
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mHasConfirmPassword:Z

    .line 209
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    .line 192
    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mHasStart:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mOpenCameraStart:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mSucceed:Z

    if-eqz v0, :cond_1

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/settings/MiuiFaceDataInput$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput$4;-><init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 202
    iput-boolean v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mHasStart:Z

    .line 203
    iput-boolean v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mOpenCameraStart:Z

    .line 204
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->finish()V

    .line 190
    :cond_1
    return-void
.end method

.method public onPreviewFrame([BLjava/lang/String;)V
    .locals 11
    .param p1, "data"    # [B
    .param p2, "cameraId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 317
    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mIsDetect:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mStartDetectTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mHasStart:Z

    if-eqz v0, :cond_0

    .line 318
    iput-boolean v5, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mIsDetect:Z

    .line 319
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mFaceAuthManager:Lcom/sensetime/faceauth/FaceAuthManager;

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    iget v2, v1, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->width:I

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    iget v3, v1, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->height:I

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    iget v4, v1, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->angle:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sensetime/faceauth/FaceAuthManager;->saveFeature([BIIIZ)I

    move-result v8

    .line 320
    .local v8, "ret":I
    const-string/jumbo v0, "face_unlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "face data input result ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    if-nez v8, :cond_1

    .line 322
    const-string/jumbo v0, "face_unlock_input_success"

    invoke-static {v0}, Lcom/android/keyguard/AnalyticsHelper;->record(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 324
    iput-boolean v5, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mSucceed:Z

    .line 325
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 326
    const-string/jumbo v1, "face_unlock_valid_feature"

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v2

    .line 325
    invoke-static {v0, v1, v5, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 327
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 329
    const-string/jumbo v1, "face_unlock_has_feature"

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v2

    .line 327
    invoke-static {v0, v1, v5, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 330
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 331
    const-string/jumbo v1, "face_unlcok_apply_for_lock"

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v2

    .line 330
    invoke-static {v0, v1, v5, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 332
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    iget v2, v2, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->width:I

    iget-object v3, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    iget v3, v3, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->height:I

    invoke-direct {v1, v10, v10, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 333
    iget-object v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    iget v2, v2, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->angle:I

    .line 332
    invoke-virtual {v0, p1, v1, v2, v10}, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->getBitMap([BLandroid/graphics/Rect;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 334
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    invoke-virtual {v0}, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->closeCamera()V

    .line 335
    iput-boolean v10, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mHasStart:Z

    .line 336
    iput-boolean v10, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mOpenCameraStart:Z

    .line 337
    new-instance v0, Lcom/android/keyguard/settings/MiuiFaceDataInput$7;

    invoke-direct {v0, p0, v6}, Lcom/android/keyguard/settings/MiuiFaceDataInput$7;-><init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 316
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "ret":I
    :cond_0
    :goto_0
    return-void

    .line 350
    .restart local v8    # "ret":I
    :cond_1
    const/4 v9, 0x0

    .line 351
    .local v9, "string":I
    packed-switch v8, :pswitch_data_0

    .line 401
    :pswitch_0
    const v9, 0x910042b

    .line 404
    :goto_1
    move v7, v9

    .line 405
    .local v7, "finalString":I
    new-instance v0, Lcom/android/keyguard/settings/MiuiFaceDataInput$8;

    invoke-direct {v0, p0, v7}, Lcom/android/keyguard/settings/MiuiFaceDataInput$8;-><init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;I)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 414
    iput-boolean v10, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mIsDetect:Z

    goto :goto_0

    .line 353
    .end local v7    # "finalString":I
    :pswitch_1
    const v9, 0x9100422

    .line 354
    goto :goto_1

    .line 356
    :pswitch_2
    const v9, 0x9100423

    .line 357
    goto :goto_1

    .line 359
    :pswitch_3
    const v9, 0x9100424

    .line 360
    goto :goto_1

    .line 362
    :pswitch_4
    const v9, 0x910042c

    .line 363
    goto :goto_1

    .line 365
    :pswitch_5
    const v9, 0x910042d

    .line 366
    goto :goto_1

    .line 368
    :pswitch_6
    const v9, 0x910042e

    .line 369
    goto :goto_1

    .line 371
    :pswitch_7
    const v9, 0x910042f

    .line 372
    goto :goto_1

    .line 374
    :pswitch_8
    const v9, 0x910041e

    .line 375
    goto :goto_1

    .line 377
    :pswitch_9
    const v9, 0x910041f

    .line 378
    goto :goto_1

    .line 380
    :pswitch_a
    const v9, 0x9100425

    .line 381
    goto :goto_1

    .line 383
    :pswitch_b
    const v9, 0x9100433

    .line 384
    goto :goto_1

    .line 386
    :pswitch_c
    const v9, 0x910041c

    .line 387
    goto :goto_1

    .line 389
    :pswitch_d
    const v9, 0x9100432

    .line 390
    goto :goto_1

    .line 392
    :pswitch_e
    const v9, 0x9100431

    .line 393
    goto :goto_1

    .line 395
    :pswitch_f
    const v9, 0x9100430

    .line 396
    goto :goto_1

    .line 398
    :pswitch_10
    const v9, 0x910042b

    .line 399
    goto :goto_1

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_b
        :pswitch_10
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 185
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 166
    const-string/jumbo v0, "key_confirm_lock_launched"

    iget-boolean v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mConfirmLockLaunched:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    return-void
.end method

.method public openCameraSucced(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "result"    # Z

    .prologue
    .line 245
    iput-boolean p2, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mOpenCameraSuccess:Z

    .line 246
    if-eqz p2, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    invoke-virtual {v0}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->initAll()V

    .line 248
    invoke-direct {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->start()V

    .line 250
    :cond_0
    new-instance v0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;

    invoke-direct {v0, p0, p2}, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;-><init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;Z)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 244
    return-void
.end method
