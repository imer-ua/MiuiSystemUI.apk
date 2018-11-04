.class public abstract Lcom/sensetime/faceapi/FaceHandleBase;
.super Ljava/lang/Object;
.source "FaceHandleBase.java"


# instance fields
.field protected mBuffer:[B

.field protected mResultCode:[I

.field protected mStFaceHandle:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 9
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sensetime/faceapi/FaceHandleBase;->mResultCode:[I

    return-void
.end method


# virtual methods
.method protected checkResultCode()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sensetime/faceapi/FaceHandleBase;->mResultCode:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sensetime/faceapi/FaceHandleBase;->checkResultCode(I)V

    .line 25
    return-void
.end method

.method protected checkResultCode(I)V
    .locals 2
    .param p1, "resultCode"    # I

    .prologue
    .line 18
    sget-object v0, Lcom/sensetime/faceapi/model/ResultCode;->ST_OK:Lcom/sensetime/faceapi/model/ResultCode;

    invoke-virtual {v0}, Lcom/sensetime/faceapi/model/ResultCode;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 21
    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/sensetime/faceapi/FaceHandleBase;->release()V

    .line 39
    return-void
.end method

.method public isHandleInitialized()Z
    .locals 4

    .prologue
    .line 12
    iget-wide v0, p0, Lcom/sensetime/faceapi/FaceHandleBase;->mStFaceHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 45
    iget-wide v0, p0, Lcom/sensetime/faceapi/FaceHandleBase;->mStFaceHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 46
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/sensetime/faceapi/FaceHandleBase;->mBuffer:[B

    .line 49
    invoke-virtual {p0}, Lcom/sensetime/faceapi/FaceHandleBase;->releaseHandle()V

    .line 50
    iput-wide v2, p0, Lcom/sensetime/faceapi/FaceHandleBase;->mStFaceHandle:J

    .line 51
    return-void
.end method

.method protected abstract releaseHandle()V
.end method
