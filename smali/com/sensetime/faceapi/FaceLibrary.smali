.class public Lcom/sensetime/faceapi/FaceLibrary;
.super Ljava/lang/Object;
.source "FaceLibrary.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "jni_stfaceunlock_api"

    .line 12
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getSDKVersion()Ljava/lang/String;
.end method

.method public static native initLiscenceStr(Ljava/lang/String;)I
.end method

.method public static native stFaceCompareFeature(J[B[B[I)F
.end method

.method public static native stFaceCreateDetector(Ljava/lang/String;I[I)J
.end method

.method public static native stFaceCreateHackness(Ljava/lang/String;[I)J
.end method

.method public static native stFaceCreateOcular(Ljava/lang/String;[I)J
.end method

.method public static native stFaceCreateSelect(Ljava/lang/String;I[I)J
.end method

.method public static native stFaceCreateVerify(Ljava/lang/String;[I)J
.end method

.method public static native stFaceDestroyDetector(J)V
.end method

.method public static native stFaceDestroyHackness(J)V
.end method

.method public static native stFaceDestroyOcular(J)V
.end method

.method public static native stFaceDestroySelect(J)V
.end method

.method public static native stFaceDestroyVerify(J)V
.end method

.method public static native stFaceDetectBytes(J[BIIIII[I)[Lcom/sensetime/faceapi/model/FaceInfo;
.end method

.method public static native stFaceGetFeatureBytes(J[BIIIILcom/sensetime/faceapi/model/FaceInfo;[I)[B
.end method

.method public static native stFaceGetVerifyVersion(J)I
.end method

.method public static native stFaceHackness(J[BIIIIILcom/sensetime/faceapi/model/FaceInfo;[I)F
.end method

.method public static native stFaceOcular(J[BIIIIILcom/sensetime/faceapi/model/StRect;[F[I)F
.end method

.method public static native stFaceResetSelect(J)V
.end method

.method public static native stFaceSelectFrame(J[BIIIILcom/sensetime/faceapi/model/FaceInfo;[I)F
.end method

.method public static native stFaceShowInsideModel()V
.end method
