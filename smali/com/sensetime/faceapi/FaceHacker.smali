.class public Lcom/sensetime/faceapi/FaceHacker;
.super Lcom/sensetime/faceapi/FaceHandleBase;
.source "FaceHacker.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "modelPath"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sensetime/faceapi/FaceHandleBase;-><init>()V

    .line 20
    iget-object v0, p0, Lcom/sensetime/faceapi/FaceHacker;->mResultCode:[I

    invoke-static {p1, v0}, Lcom/sensetime/faceapi/FaceLibrary;->stFaceCreateHackness(Ljava/lang/String;[I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sensetime/faceapi/FaceHacker;->mStFaceHandle:J

    .line 21
    invoke-virtual {p0}, Lcom/sensetime/faceapi/FaceHacker;->checkResultCode()V

    .line 22
    return-void
.end method


# virtual methods
.method public hacker([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceOrientation;Lcom/sensetime/faceapi/model/FaceInfo;)F
    .locals 11
    .param p1, "image"    # [B
    .param p2, "format"    # Lcom/sensetime/faceapi/model/CvPixelFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "stride"    # I
    .param p6, "orientation"    # Lcom/sensetime/faceapi/model/FaceOrientation;
    .param p7, "info"    # Lcom/sensetime/faceapi/model/FaceInfo;

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/sensetime/faceapi/FaceHacker;->mStFaceHandle:J

    invoke-virtual {p2}, Lcom/sensetime/faceapi/model/CvPixelFormat;->getValue()I

    move-result v3

    .line 39
    invoke-virtual/range {p6 .. p6}, Lcom/sensetime/faceapi/model/FaceOrientation;->getValue()I

    move-result v7

    iget-object v9, p0, Lcom/sensetime/faceapi/FaceHacker;->mResultCode:[I

    move-object v2, p1

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p7

    .line 38
    invoke-static/range {v0 .. v9}, Lcom/sensetime/faceapi/FaceLibrary;->stFaceHackness(J[BIIIIILcom/sensetime/faceapi/model/FaceInfo;[I)F

    move-result v10

    .line 40
    .local v10, "score":F
    invoke-virtual {p0}, Lcom/sensetime/faceapi/FaceHacker;->checkResultCode()V

    .line 41
    return v10
.end method

.method protected releaseHandle()V
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/sensetime/faceapi/FaceHacker;->mStFaceHandle:J

    invoke-static {v0, v1}, Lcom/sensetime/faceapi/FaceLibrary;->stFaceDestroyHackness(J)V

    .line 79
    return-void
.end method
