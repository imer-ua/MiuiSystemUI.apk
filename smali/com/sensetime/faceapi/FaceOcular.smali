.class public Lcom/sensetime/faceapi/FaceOcular;
.super Lcom/sensetime/faceapi/FaceHandleBase;
.source "FaceOcular.java"


# instance fields
.field private mScore:[F

.field private threshold:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0}, Lcom/sensetime/faceapi/FaceOcular;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "modelPath"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sensetime/faceapi/FaceHandleBase;-><init>()V

    const/4 v0, 0x2

    .line 17
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sensetime/faceapi/FaceOcular;->mScore:[F

    const/high16 v0, 0x41180000    # 9.5f

    .line 18
    iput v0, p0, Lcom/sensetime/faceapi/FaceOcular;->threshold:F

    .line 28
    invoke-direct {p0, p1}, Lcom/sensetime/faceapi/FaceOcular;->init(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method private init(Ljava/lang/String;)V
    .locals 2
    .param p1, "modelPath"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sensetime/faceapi/FaceOcular;->mResultCode:[I

    invoke-static {p1, v0}, Lcom/sensetime/faceapi/FaceLibrary;->stFaceCreateOcular(Ljava/lang/String;[I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sensetime/faceapi/FaceOcular;->mStFaceHandle:J

    .line 36
    invoke-virtual {p0}, Lcom/sensetime/faceapi/FaceOcular;->checkResultCode()V

    .line 37
    return-void
.end method


# virtual methods
.method public getScore([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceOrientation;Lcom/sensetime/faceapi/model/StRect;)[F
    .locals 11
    .param p1, "image"    # [B
    .param p2, "format"    # Lcom/sensetime/faceapi/model/CvPixelFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "stride"    # I
    .param p6, "orientation"    # Lcom/sensetime/faceapi/model/FaceOrientation;
    .param p7, "rect"    # Lcom/sensetime/faceapi/model/StRect;

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/sensetime/faceapi/FaceOcular;->mStFaceHandle:J

    invoke-virtual {p2}, Lcom/sensetime/faceapi/model/CvPixelFormat;->getValue()I

    move-result v3

    .line 68
    invoke-virtual/range {p6 .. p6}, Lcom/sensetime/faceapi/model/FaceOrientation;->getValue()I

    move-result v7

    iget-object v9, p0, Lcom/sensetime/faceapi/FaceOcular;->mScore:[F

    iget-object v10, p0, Lcom/sensetime/faceapi/FaceOcular;->mResultCode:[I

    move-object v2, p1

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p7

    .line 67
    invoke-static/range {v0 .. v10}, Lcom/sensetime/faceapi/FaceLibrary;->stFaceOcular(J[BIIIIILcom/sensetime/faceapi/model/StRect;[F[I)F

    .line 69
    invoke-virtual {p0}, Lcom/sensetime/faceapi/FaceOcular;->checkResultCode()V

    .line 70
    iget-object v0, p0, Lcom/sensetime/faceapi/FaceOcular;->mScore:[F

    return-object v0
.end method

.method protected releaseHandle()V
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/sensetime/faceapi/FaceOcular;->mStFaceHandle:J

    invoke-static {v0, v1}, Lcom/sensetime/faceapi/FaceLibrary;->stFaceDestroyOcular(J)V

    .line 76
    return-void
.end method
