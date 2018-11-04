.class Lcom/android/keyguard/faceunlock/Camera2Util$3;
.super Ljava/lang/Object;
.source "Camera2Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/faceunlock/Camera2Util;->openCamera(I)V
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
    .line 75
    iput-object p1, p0, Lcom/android/keyguard/faceunlock/Camera2Util$3;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util$3;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    iget-object v2, p0, Lcom/android/keyguard/faceunlock/Camera2Util$3;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-virtual {v2}, Lcom/android/keyguard/faceunlock/Camera2Util;->getCameraId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraId:Ljava/lang/String;

    .line 79
    const-string/jumbo v1, "-1"

    iget-object v2, p0, Lcom/android/keyguard/faceunlock/Camera2Util$3;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    iget-object v2, v2, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string/jumbo v1, "face_unlock"

    const-string/jumbo v2, "open camera2 faild"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util$3;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-static {v1}, Lcom/android/keyguard/faceunlock/Camera2Util;->-get3(Lcom/android/keyguard/faceunlock/Camera2Util;)Lcom/android/keyguard/faceunlock/IPreviewCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/faceunlock/Camera2Util$3;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    iget-object v2, v2, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/faceunlock/IPreviewCallback;->openCameraSucced(Ljava/lang/String;Z)V

    .line 82
    return-void

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util$3;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-static {v1}, Lcom/android/keyguard/faceunlock/Camera2Util;->-get2(Lcom/android/keyguard/faceunlock/Camera2Util;)Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/faceunlock/Camera2Util$3;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    iget-object v2, v2, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/faceunlock/Camera2Util$3;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-static {v3}, Lcom/android/keyguard/faceunlock/Camera2Util;->-get4(Lcom/android/keyguard/faceunlock/Camera2Util;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/faceunlock/Camera2Util$3;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-static {v4}, Lcom/android/keyguard/faceunlock/Camera2Util;->-get1(Lcom/android/keyguard/faceunlock/Camera2Util;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util$3;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-static {v1}, Lcom/android/keyguard/faceunlock/Camera2Util;->-get3(Lcom/android/keyguard/faceunlock/Camera2Util;)Lcom/android/keyguard/faceunlock/IPreviewCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/faceunlock/Camera2Util$3;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    iget-object v2, v2, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraId:Ljava/lang/String;

    invoke-interface {v1, v2, v5}, Lcom/android/keyguard/faceunlock/IPreviewCallback;->openCameraSucced(Ljava/lang/String;Z)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
