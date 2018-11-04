.class public abstract Lcom/android/keyguard/faceunlock/AbstractCameraUtil;
.super Ljava/lang/Object;
.source "AbstractCameraUtil.java"


# instance fields
.field public angle:I

.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x280

    iput v0, p0, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->width:I

    .line 17
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->height:I

    .line 18
    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->angle:I

    .line 14
    return-void
.end method


# virtual methods
.method public closeCamera()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public closeCameraImmediately()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public getBitMap([BLandroid/graphics/Rect;IZ)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "data"    # [B
    .param p2, "roi"    # Landroid/graphics/Rect;
    .param p3, "angle"    # I
    .param p4, "isBackCamera"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 52
    new-instance v0, Landroid/graphics/YuvImage;

    iget v3, p0, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->width:I

    iget v4, p0, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->height:I

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 53
    .local v0, "yuvImage":Landroid/graphics/YuvImage;
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 54
    .local v8, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->width:I

    iget v4, p0, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->height:I

    invoke-direct {v2, v10, v10, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v3, v8}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 56
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 59
    .local v9, "jpegData":[B
    array-length v2, v9

    .line 58
    invoke-static {v9, v10, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 60
    .local v1, "tmpBitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 61
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 62
    int-to-float v2, p3

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 63
    if-nez p4, :cond_0

    .line 64
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 66
    :cond_0
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 67
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 66
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 68
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 69
    return-object v1
.end method

.method public openCamera(I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 29
    return-void
.end method

.method public setCameraCallback(Lcom/android/keyguard/faceunlock/IPreviewCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/faceunlock/IPreviewCallback;

    .prologue
    .line 21
    return-void
.end method

.method public startPreview(Landroid/graphics/SurfaceTexture;Z)V
    .locals 0
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "useForLock"    # Z

    .prologue
    .line 23
    return-void
.end method
