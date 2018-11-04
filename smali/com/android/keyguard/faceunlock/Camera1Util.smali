.class public Lcom/android/keyguard/faceunlock/Camera1Util;
.super Lcom/android/keyguard/faceunlock/AbstractCameraUtil;
.source "Camera1Util.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/hardware/Camera$ErrorCallback;


# instance fields
.field public mAngle:I

.field public mCamera:Landroid/hardware/Camera;

.field private mCameraHandler:Landroid/os/Handler;

.field public mCameraId:I

.field private volatile mHasStartCloseCamera:Z

.field private mPreviewCallback:Lcom/android/keyguard/faceunlock/IPreviewCallback;


# direct methods
.method static synthetic -wrap0(Lcom/android/keyguard/faceunlock/Camera1Util;I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/faceunlock/Camera1Util;->openCameraInternal(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "workerHandler"    # Landroid/os/Handler;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraId:I

    .line 38
    iput-object p2, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method private calBestPreviewSize(Landroid/hardware/Camera$Parameters;II)Landroid/hardware/Camera$Size;
    .locals 6
    .param p1, "camPara"    # Landroid/hardware/Camera$Parameters;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 195
    .local v0, "allSupportedSize":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v3, "widthLargerSize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "tmpSize$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 197
    .local v1, "tmpSize":Landroid/hardware/Camera$Size;
    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    if-le v4, v5, :cond_0

    .line 198
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    .end local v1    # "tmpSize":Landroid/hardware/Camera$Size;
    :cond_1
    new-instance v4, Lcom/android/keyguard/faceunlock/Camera1Util$3;

    invoke-direct {v4, p0, p2, p3}, Lcom/android/keyguard/faceunlock/Camera1Util$3;-><init>(Lcom/android/keyguard/faceunlock/Camera1Util;II)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 211
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    return-object v4
.end method

.method private getFrontFacingCameraId()I
    .locals 5

    .prologue
    .line 258
    const/4 v1, -0x1

    .line 259
    .local v1, "defaultId":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 260
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 261
    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 262
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 263
    move v1, v2

    .line 267
    :cond_0
    return v1

    .line 260
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private openCameraInternal(I)V
    .locals 7
    .param p1, "rotation"    # I

    .prologue
    const/4 v6, 0x0

    .line 46
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/faceunlock/Camera1Util;->getFrontFacingCameraId()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraId:I

    .line 47
    iget v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 48
    const-string/jumbo v3, "face_unlock"

    const-string/jumbo v4, "open camera1 faild"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string/jumbo v3, "0"

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardUtils;->setFaceUnlockCameraProperty(Ljava/lang/String;)V

    .line 50
    iget-object v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mPreviewCallback:Lcom/android/keyguard/faceunlock/IPreviewCallback;

    iget v4, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/keyguard/faceunlock/IPreviewCallback;->openCameraSucced(Ljava/lang/String;Z)V

    .line 51
    return-void

    .line 53
    :cond_0
    const-string/jumbo v3, "1"

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardUtils;->setFaceUnlockCameraProperty(Ljava/lang/String;)V

    .line 54
    iget v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraId:I

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    .line 55
    iget-object v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 57
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    iget-object v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->width:I

    iget v5, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->height:I

    .line 56
    invoke-direct {p0, v3, v4, v5}, Lcom/android/keyguard/faceunlock/Camera1Util;->calBestPreviewSize(Landroid/hardware/Camera$Parameters;II)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 58
    .local v0, "bestPreviewSize":Landroid/hardware/Camera$Size;
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iput v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->width:I

    .line 59
    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    iput v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->height:I

    .line 60
    iget v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->width:I

    iget v4, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->height:I

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 61
    iget v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->width:I

    iget v4, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->height:I

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 62
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 63
    const-string/jumbo v3, "instant-aec"

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string/jumbo v3, "xiaomi-face-mode"

    const-string/jumbo v4, "on"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string/jumbo v3, "zsl"

    const-string/jumbo v4, "off"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 67
    const-string/jumbo v3, "auto-exposure"

    const-string/jumbo v4, "center-weighted"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/keyguard/faceunlock/Camera1Util;->getCameraAngle(I)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mAngle:I

    .line 69
    iget-object v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 70
    iget-object v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    iget v4, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mAngle:I

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 71
    iget-object v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    if-eqz v3, :cond_1

    .line 72
    iget-object v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 74
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mPreviewCallback:Lcom/android/keyguard/faceunlock/IPreviewCallback;

    iget v4, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/android/keyguard/faceunlock/IPreviewCallback;->openCameraSucced(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v0    # "bestPreviewSize":Landroid/hardware/Camera$Size;
    .end local v2    # "params":Landroid/hardware/Camera$Parameters;
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "0"

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardUtils;->setFaceUnlockCameraProperty(Ljava/lang/String;)V

    .line 77
    iget-object v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mPreviewCallback:Lcom/android/keyguard/faceunlock/IPreviewCallback;

    iget v4, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Lcom/android/keyguard/faceunlock/IPreviewCallback;->openCameraSucced(Ljava/lang/String;Z)V

    .line 78
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public closeCamera()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/Camera1Util;->closeCameraImmediately()V

    .line 159
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/faceunlock/Camera1Util$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/faceunlock/Camera1Util$2;-><init>(Lcom/android/keyguard/faceunlock/Camera1Util;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public closeCameraImmediately()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mHasStartCloseCamera:Z

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    const-string/jumbo v0, "0"

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->setFaceUnlockCameraProperty(Ljava/lang/String;)V

    .line 173
    return-void

    .line 175
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mHasStartCloseCamera:Z

    .line 176
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 177
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 178
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 179
    iput-object v1, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mHasStartCloseCamera:Z

    .line 181
    sget-boolean v0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 182
    const-string/jumbo v0, "face_unlock"

    const-string/jumbo v1, "close camera"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCameraAngle(I)I
    .locals 5
    .param p1, "rotation"    # I

    .prologue
    .line 222
    const/16 v2, 0x5a

    .line 223
    .local v2, "rotateAngle":I
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 224
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    iget v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraId:I

    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "degrees":I
    packed-switch p1, :pswitch_data_0

    .line 241
    :goto_0
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 242
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v3, v0

    rem-int/lit16 v2, v3, 0x168

    .line 243
    rsub-int v3, v2, 0x168

    rem-int/lit16 v2, v3, 0x168

    .line 247
    :goto_1
    return v2

    .line 228
    :pswitch_0
    const/4 v0, 0x0

    .line 229
    goto :goto_0

    .line 231
    :pswitch_1
    const/16 v0, 0x5a

    .line 232
    goto :goto_0

    .line 234
    :pswitch_2
    const/16 v0, 0xb4

    .line 235
    goto :goto_0

    .line 237
    :pswitch_3
    const/16 v0, 0x10e

    .line 238
    goto :goto_0

    .line 245
    :cond_0
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v3, v0

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v2, v3, 0x168

    goto :goto_1

    .line 226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onError(ILandroid/hardware/Camera;)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mHasStartCloseCamera:Z

    .line 273
    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/Camera1Util;->closeCamera()V

    .line 271
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mPreviewCallback:Lcom/android/keyguard/faceunlock/IPreviewCallback;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mPreviewCallback:Lcom/android/keyguard/faceunlock/IPreviewCallback;

    iget v1, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/keyguard/faceunlock/IPreviewCallback;->onPreviewFrame([BLjava/lang/String;)V

    .line 251
    :cond_0
    return-void
.end method

.method public openCamera(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-direct {p0, p1}, Lcom/android/keyguard/faceunlock/Camera1Util;->openCameraInternal(I)V

    .line 82
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/faceunlock/Camera1Util$1;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/faceunlock/Camera1Util$1;-><init>(Lcom/android/keyguard/faceunlock/Camera1Util;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setCameraCallback(Lcom/android/keyguard/faceunlock/IPreviewCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/faceunlock/IPreviewCallback;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mPreviewCallback:Lcom/android/keyguard/faceunlock/IPreviewCallback;

    .line 144
    return-void
.end method

.method public startPreview(Landroid/graphics/SurfaceTexture;Z)V
    .locals 2
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "useForLock"    # Z

    .prologue
    .line 149
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 152
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
