.class Lcom/android/keyguard/faceunlock/Camera2Util$4;
.super Ljava/lang/Object;
.source "Camera2Util.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/faceunlock/Camera2Util;->startPreview(Landroid/graphics/SurfaceTexture;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/faceunlock/Camera2Util;


# direct methods
.method constructor <init>(Lcom/android/keyguard/faceunlock/Camera2Util;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/faceunlock/Camera2Util;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/keyguard/faceunlock/Camera2Util$4;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 4
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 170
    .local v0, "image":Landroid/media/Image;
    if-nez v0, :cond_0

    .line 171
    return-void

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/faceunlock/Camera2Util$4;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-static {v2, v0}, Lcom/android/keyguard/faceunlock/Camera2Util;->-wrap0(Lcom/android/keyguard/faceunlock/Camera2Util;Landroid/media/Image;)[B

    move-result-object v1

    .line 174
    .local v1, "nv21bytes":[B
    iget-object v2, p0, Lcom/android/keyguard/faceunlock/Camera2Util$4;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-static {v2}, Lcom/android/keyguard/faceunlock/Camera2Util;->-get3(Lcom/android/keyguard/faceunlock/Camera2Util;)Lcom/android/keyguard/faceunlock/IPreviewCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/faceunlock/Camera2Util$4;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    iget-object v3, v3, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraId:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/android/keyguard/faceunlock/IPreviewCallback;->onPreviewFrame([BLjava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 168
    return-void
.end method