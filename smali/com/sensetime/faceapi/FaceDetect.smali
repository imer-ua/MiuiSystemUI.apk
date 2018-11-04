.class public Lcom/sensetime/faceapi/FaceDetect;
.super Lcom/sensetime/faceapi/FaceHandleBase;
.source "FaceDetect.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0, v0, v0}, Lcom/sensetime/faceapi/FaceDetect;-><init>(Ljava/lang/String;Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;Lcom/sensetime/faceapi/model/FaceConfig$FaceKeyPointCount;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;Lcom/sensetime/faceapi/model/FaceConfig$FaceKeyPointCount;)V
    .locals 1
    .param p1, "resize"    # Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;
    .param p2, "pointCount"    # Lcom/sensetime/faceapi/model/FaceConfig$FaceKeyPointCount;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0, p1, p2}, Lcom/sensetime/faceapi/FaceDetect;-><init>(Ljava/lang/String;Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;Lcom/sensetime/faceapi/model/FaceConfig$FaceKeyPointCount;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;Lcom/sensetime/faceapi/model/FaceConfig$FaceKeyPointCount;)V
    .locals 3
    .param p1, "modelPath"    # Ljava/lang/String;
    .param p2, "resize"    # Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;
    .param p3, "pointCount"    # Lcom/sensetime/faceapi/model/FaceConfig$FaceKeyPointCount;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sensetime/faceapi/FaceHandleBase;-><init>()V

    .line 35
    if-eqz p2, :cond_0

    .line 38
    :goto_0
    if-eqz p3, :cond_1

    .line 41
    :goto_1
    invoke-virtual {p2}, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->getValue()I

    move-result v1

    invoke-virtual {p3}, Lcom/sensetime/faceapi/model/FaceConfig$FaceKeyPointCount;->getValue()I

    move-result v2

    or-int v0, v1, v2

    .line 42
    .local v0, "config":I
    invoke-direct {p0, p1, v0}, Lcom/sensetime/faceapi/FaceDetect;->init(Ljava/lang/String;I)V

    .line 43
    return-void

    .line 36
    .end local v0    # "config":I
    :cond_0
    sget-object p2, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->DEFAULT_CONFIG:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    goto :goto_0

    .line 39
    :cond_1
    sget-object p3, Lcom/sensetime/faceapi/model/FaceConfig$FaceKeyPointCount;->POINT_COUNT_21:Lcom/sensetime/faceapi/model/FaceConfig$FaceKeyPointCount;

    goto :goto_1
.end method

.method private init(Ljava/lang/String;I)V
    .locals 2
    .param p1, "modelPath"    # Ljava/lang/String;
    .param p2, "config"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sensetime/faceapi/FaceDetect;->mResultCode:[I

    invoke-static {p1, p2, v0}, Lcom/sensetime/faceapi/FaceLibrary;->stFaceCreateDetector(Ljava/lang/String;I[I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sensetime/faceapi/FaceDetect;->mStFaceHandle:J

    .line 50
    invoke-virtual {p0}, Lcom/sensetime/faceapi/FaceDetect;->checkResultCode()V

    .line 51
    return-void
.end method

.method public static showInsideModel()V
    .locals 0

    .prologue
    .line 125
    invoke-static {}, Lcom/sensetime/faceapi/FaceLibrary;->stFaceShowInsideModel()V

    .line 126
    return-void
.end method


# virtual methods
.method public detect([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceOrientation;)[Lcom/sensetime/faceapi/model/FaceInfo;
    .locals 10
    .param p1, "colorImage"    # [B
    .param p2, "cvPixelFormat"    # Lcom/sensetime/faceapi/model/CvPixelFormat;
    .param p3, "imageWidth"    # I
    .param p4, "imageHeight"    # I
    .param p5, "imageStride"    # I
    .param p6, "orientation"    # Lcom/sensetime/faceapi/model/FaceOrientation;

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/sensetime/faceapi/FaceDetect;->mStFaceHandle:J

    invoke-virtual {p2}, Lcom/sensetime/faceapi/model/CvPixelFormat;->getValue()I

    move-result v3

    .line 119
    invoke-virtual/range {p6 .. p6}, Lcom/sensetime/faceapi/model/FaceOrientation;->getValue()I

    move-result v7

    iget-object v8, p0, Lcom/sensetime/faceapi/FaceDetect;->mResultCode:[I

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    .line 118
    invoke-static/range {v0 .. v8}, Lcom/sensetime/faceapi/FaceLibrary;->stFaceDetectBytes(J[BIIIII[I)[Lcom/sensetime/faceapi/model/FaceInfo;

    move-result-object v9

    .line 120
    .local v9, "faces":[Lcom/sensetime/faceapi/model/FaceInfo;
    invoke-virtual {p0}, Lcom/sensetime/faceapi/FaceDetect;->checkResultCode()V

    .line 121
    return-object v9
.end method

.method protected releaseHandle()V
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/sensetime/faceapi/FaceDetect;->mStFaceHandle:J

    invoke-static {v0, v1}, Lcom/sensetime/faceapi/FaceLibrary;->stFaceDestroyDetector(J)V

    .line 131
    return-void
.end method
