.class public Lcom/sensetime/faceapi/model/FaceInfo;
.super Ljava/lang/Object;
.source "FaceInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x27147114878002L


# instance fields
.field public eyeDist:F

.field public facePoints:[Lcom/sensetime/faceapi/model/StPointF;

.field public faceRect:Lcom/sensetime/faceapi/model/StRect;

.field public id:I

.field public occlusion:I

.field public pitch:F

.field public roll:F

.field public score:F

.field public yaw:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/sensetime/faceapi/model/FaceInfo;
    .locals 5

    .prologue
    .line 24
    new-instance v0, Lcom/sensetime/faceapi/model/FaceInfo;

    invoke-direct {v0}, Lcom/sensetime/faceapi/model/FaceInfo;-><init>()V

    .line 25
    .local v0, "faceInfo":Lcom/sensetime/faceapi/model/FaceInfo;
    new-instance v2, Lcom/sensetime/faceapi/model/StRect;

    invoke-direct {v2}, Lcom/sensetime/faceapi/model/StRect;-><init>()V

    iput-object v2, v0, Lcom/sensetime/faceapi/model/FaceInfo;->faceRect:Lcom/sensetime/faceapi/model/StRect;

    .line 26
    iget-object v2, p0, Lcom/sensetime/faceapi/model/FaceInfo;->facePoints:[Lcom/sensetime/faceapi/model/StPointF;

    array-length v2, v2

    new-array v2, v2, [Lcom/sensetime/faceapi/model/StPointF;

    iput-object v2, v0, Lcom/sensetime/faceapi/model/FaceInfo;->facePoints:[Lcom/sensetime/faceapi/model/StPointF;

    .line 27
    iget-object v2, v0, Lcom/sensetime/faceapi/model/FaceInfo;->faceRect:Lcom/sensetime/faceapi/model/StRect;

    iget-object v3, p0, Lcom/sensetime/faceapi/model/FaceInfo;->faceRect:Lcom/sensetime/faceapi/model/StRect;

    invoke-virtual {v2, v3}, Lcom/sensetime/faceapi/model/StRect;->set(Lcom/sensetime/faceapi/model/StRect;)V

    const/4 v1, 0x0

    .line 28
    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lcom/sensetime/faceapi/model/FaceInfo;->facePoints:[Lcom/sensetime/faceapi/model/StPointF;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 31
    iget v2, p0, Lcom/sensetime/faceapi/model/FaceInfo;->id:I

    iput v2, v0, Lcom/sensetime/faceapi/model/FaceInfo;->id:I

    .line 32
    iget v2, p0, Lcom/sensetime/faceapi/model/FaceInfo;->score:F

    iput v2, v0, Lcom/sensetime/faceapi/model/FaceInfo;->score:F

    .line 33
    iget v2, p0, Lcom/sensetime/faceapi/model/FaceInfo;->yaw:F

    iput v2, v0, Lcom/sensetime/faceapi/model/FaceInfo;->yaw:F

    .line 34
    iget v2, p0, Lcom/sensetime/faceapi/model/FaceInfo;->pitch:F

    iput v2, v0, Lcom/sensetime/faceapi/model/FaceInfo;->pitch:F

    .line 35
    iget v2, p0, Lcom/sensetime/faceapi/model/FaceInfo;->roll:F

    iput v2, v0, Lcom/sensetime/faceapi/model/FaceInfo;->roll:F

    .line 36
    iget v2, p0, Lcom/sensetime/faceapi/model/FaceInfo;->eyeDist:F

    iput v2, v0, Lcom/sensetime/faceapi/model/FaceInfo;->eyeDist:F

    .line 37
    iget v2, p0, Lcom/sensetime/faceapi/model/FaceInfo;->occlusion:I

    iput v2, v0, Lcom/sensetime/faceapi/model/FaceInfo;->occlusion:I

    .line 38
    return-object v0

    .line 29
    :cond_0
    iget-object v2, v0, Lcom/sensetime/faceapi/model/FaceInfo;->facePoints:[Lcom/sensetime/faceapi/model/StPointF;

    new-instance v3, Lcom/sensetime/faceapi/model/StPointF;

    iget-object v4, p0, Lcom/sensetime/faceapi/model/FaceInfo;->facePoints:[Lcom/sensetime/faceapi/model/StPointF;

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Lcom/sensetime/faceapi/model/StPointF;-><init>(Lcom/sensetime/faceapi/model/StPointF;)V

    aput-object v3, v2, v1

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/sensetime/faceapi/model/FaceInfo;->clone()Lcom/sensetime/faceapi/model/FaceInfo;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sensetime/faceapi/model/FaceInfo;->faceRect:Lcom/sensetime/faceapi/model/StRect;

    invoke-virtual {v1}, Lcom/sensetime/faceapi/model/StRect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", yaw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sensetime/faceapi/model/FaceInfo;->yaw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sensetime/faceapi/model/FaceInfo;->pitch:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", roll: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sensetime/faceapi/model/FaceInfo;->roll:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "score: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sensetime/faceapi/model/FaceInfo;->score:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "occlusion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sensetime/faceapi/model/FaceInfo;->occlusion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
