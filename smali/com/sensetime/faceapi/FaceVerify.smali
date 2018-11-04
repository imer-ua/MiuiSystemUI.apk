.class public Lcom/sensetime/faceapi/FaceVerify;
.super Lcom/sensetime/faceapi/FaceHandleBase;
.source "FaceVerify.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "modelPath"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sensetime/faceapi/FaceHandleBase;-><init>()V

    .line 22
    invoke-direct {p0, p1}, Lcom/sensetime/faceapi/FaceVerify;->init(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method private init(Ljava/lang/String;)V
    .locals 2
    .param p1, "modelPath"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sensetime/faceapi/FaceVerify;->mResultCode:[I

    invoke-static {p1, v0}, Lcom/sensetime/faceapi/FaceLibrary;->stFaceCreateVerify(Ljava/lang/String;[I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sensetime/faceapi/FaceVerify;->mStFaceHandle:J

    .line 27
    invoke-virtual {p0}, Lcom/sensetime/faceapi/FaceVerify;->checkResultCode()V

    .line 28
    return-void
.end method


# virtual methods
.method public compareFeature([B[B)F
    .locals 4
    .param p1, "feature1"    # [B
    .param p2, "feature2"    # [B

    .prologue
    .line 88
    iget-wide v2, p0, Lcom/sensetime/faceapi/FaceVerify;->mStFaceHandle:J

    iget-object v1, p0, Lcom/sensetime/faceapi/FaceVerify;->mResultCode:[I

    invoke-static {v2, v3, p1, p2, v1}, Lcom/sensetime/faceapi/FaceLibrary;->stFaceCompareFeature(J[B[B[I)F

    move-result v0

    .line 89
    .local v0, "similar":F
    iget-object v1, p0, Lcom/sensetime/faceapi/FaceVerify;->mResultCode:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/sensetime/faceapi/FaceVerify;->checkResultCode(I)V

    .line 90
    return v0
.end method

.method public getFeature([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceInfo;)[B
    .locals 10
    .param p1, "colorImage"    # [B
    .param p2, "cvPixelFormat"    # Lcom/sensetime/faceapi/model/CvPixelFormat;
    .param p3, "imageWidth"    # I
    .param p4, "imageHeight"    # I
    .param p5, "imageStride"    # I
    .param p6, "faceInfo"    # Lcom/sensetime/faceapi/model/FaceInfo;

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/sensetime/faceapi/FaceVerify;->mStFaceHandle:J

    invoke-virtual {p2}, Lcom/sensetime/faceapi/model/CvPixelFormat;->getValue()I

    move-result v3

    iget-object v8, p0, Lcom/sensetime/faceapi/FaceVerify;->mResultCode:[I

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v8}, Lcom/sensetime/faceapi/FaceLibrary;->stFaceGetFeatureBytes(J[BIIIILcom/sensetime/faceapi/model/FaceInfo;[I)[B

    move-result-object v9

    .line 76
    .local v9, "feature":[B
    iget-object v0, p0, Lcom/sensetime/faceapi/FaceVerify;->mResultCode:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sensetime/faceapi/FaceVerify;->checkResultCode(I)V

    .line 77
    return-object v9
.end method

.method public getVersion()I
    .locals 4

    .prologue
    .line 94
    iget-wide v2, p0, Lcom/sensetime/faceapi/FaceVerify;->mStFaceHandle:J

    invoke-static {v2, v3}, Lcom/sensetime/faceapi/FaceLibrary;->stFaceGetVerifyVersion(J)I

    move-result v0

    .line 95
    .local v0, "version":I
    return v0
.end method

.method protected releaseHandle()V
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/sensetime/faceapi/FaceVerify;->mStFaceHandle:J

    invoke-static {v0, v1}, Lcom/sensetime/faceapi/FaceLibrary;->stFaceDestroyVerify(J)V

    .line 101
    return-void
.end method
