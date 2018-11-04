.class public Lcom/sensetime/faceapi/FaceSelect;
.super Lcom/sensetime/faceapi/FaceHandleBase;
.source "FaceSelect.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0, v0}, Lcom/sensetime/faceapi/FaceSelect;-><init>(Ljava/lang/String;Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;)V
    .locals 1
    .param p1, "resize"    # Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0, p1}, Lcom/sensetime/faceapi/FaceSelect;-><init>(Ljava/lang/String;Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;)V
    .locals 1
    .param p1, "modelPath"    # Ljava/lang/String;
    .param p2, "resize"    # Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sensetime/faceapi/FaceHandleBase;-><init>()V

    .line 30
    if-eqz p2, :cond_0

    .line 33
    :goto_0
    invoke-virtual {p2}, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->getValue()I

    move-result v0

    .line 34
    .local v0, "config":I
    invoke-direct {p0, p1, v0}, Lcom/sensetime/faceapi/FaceSelect;->init(Ljava/lang/String;I)V

    .line 35
    return-void

    .line 31
    .end local v0    # "config":I
    :cond_0
    sget-object p2, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->DEFAULT_CONFIG:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    goto :goto_0
.end method

.method private init(Ljava/lang/String;I)V
    .locals 2
    .param p1, "modelPath"    # Ljava/lang/String;
    .param p2, "config"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sensetime/faceapi/FaceSelect;->mResultCode:[I

    invoke-static {p1, p2, v0}, Lcom/sensetime/faceapi/FaceLibrary;->stFaceCreateSelect(Ljava/lang/String;I[I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sensetime/faceapi/FaceSelect;->mStFaceHandle:J

    .line 42
    invoke-virtual {p0}, Lcom/sensetime/faceapi/FaceSelect;->checkResultCode()V

    .line 43
    return-void
.end method


# virtual methods
.method protected releaseHandle()V
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/sensetime/faceapi/FaceSelect;->mStFaceHandle:J

    invoke-static {v0, v1}, Lcom/sensetime/faceapi/FaceLibrary;->stFaceDestroySelect(J)V

    .line 79
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sensetime/faceapi/FaceSelect;->isHandleInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-wide v0, p0, Lcom/sensetime/faceapi/FaceSelect;->mStFaceHandle:J

    invoke-static {v0, v1}, Lcom/sensetime/faceapi/FaceLibrary;->stFaceResetSelect(J)V

    .line 53
    return-void

    :cond_0
    const-string/jumbo v0, "FaceSelect"

    const-string/jumbo v1, "reset Handle not Initialized"

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method public selectFrame([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceInfo;)F
    .locals 10
    .param p1, "image"    # [B
    .param p2, "format"    # Lcom/sensetime/faceapi/model/CvPixelFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "stride"    # I
    .param p6, "info"    # Lcom/sensetime/faceapi/model/FaceInfo;

    .prologue
    .line 67
    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 68
    return v0

    .line 67
    :cond_1
    if-eqz p2, :cond_0

    if-eqz p6, :cond_0

    .line 70
    iget-wide v0, p0, Lcom/sensetime/faceapi/FaceSelect;->mStFaceHandle:J

    invoke-virtual {p2}, Lcom/sensetime/faceapi/model/CvPixelFormat;->getValue()I

    move-result v3

    iget-object v8, p0, Lcom/sensetime/faceapi/FaceSelect;->mResultCode:[I

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v8}, Lcom/sensetime/faceapi/FaceLibrary;->stFaceSelectFrame(J[BIIIILcom/sensetime/faceapi/model/FaceInfo;[I)F

    move-result v9

    .line 72
    .local v9, "score":F
    invoke-virtual {p0}, Lcom/sensetime/faceapi/FaceSelect;->checkResultCode()V

    .line 73
    return v9
.end method
