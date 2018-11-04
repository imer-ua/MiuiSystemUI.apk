.class public Lcom/sensetime/faceauth/util/FaceUtil;
.super Ljava/lang/Object;
.source "FaceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RotateFace(Lcom/sensetime/faceapi/model/StRect;IIIZ)Lcom/sensetime/faceapi/model/StRect;
    .locals 3
    .param p0, "rect"    # Lcom/sensetime/faceapi/model/StRect;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "angle"    # I
    .param p4, "isFrontCamera"    # Z

    .prologue
    .line 103
    new-instance v0, Lcom/sensetime/faceapi/model/StRect;

    invoke-direct {v0}, Lcom/sensetime/faceapi/model/StRect;-><init>()V

    .line 104
    .local v0, "newRect":Lcom/sensetime/faceapi/model/StRect;
    sparse-switch p3, :sswitch_data_0

    .line 150
    :cond_0
    :goto_0
    return-object v0

    .line 106
    :sswitch_0
    iget v2, p0, Lcom/sensetime/faceapi/model/StRect;->left:I

    iput v2, v0, Lcom/sensetime/faceapi/model/StRect;->left:I

    .line 107
    iget v2, p0, Lcom/sensetime/faceapi/model/StRect;->right:I

    iput v2, v0, Lcom/sensetime/faceapi/model/StRect;->right:I

    .line 108
    iget v2, p0, Lcom/sensetime/faceapi/model/StRect;->top:I

    iput v2, v0, Lcom/sensetime/faceapi/model/StRect;->top:I

    .line 109
    iget v2, p0, Lcom/sensetime/faceapi/model/StRect;->bottom:I

    iput v2, v0, Lcom/sensetime/faceapi/model/StRect;->bottom:I

    .line 110
    if-eqz p4, :cond_0

    .line 111
    iget v2, p0, Lcom/sensetime/faceapi/model/StRect;->right:I

    sub-int v2, p1, v2

    iput v2, v0, Lcom/sensetime/faceapi/model/StRect;->left:I

    .line 112
    iget v2, p0, Lcom/sensetime/faceapi/model/StRect;->left:I

    sub-int v2, p1, v2

    iput v2, v0, Lcom/sensetime/faceapi/model/StRect;->right:I

    goto :goto_0

    .line 116
    :sswitch_1
    iget v2, p0, Lcom/sensetime/faceapi/model/StRect;->top:I

    iput v2, v0, Lcom/sensetime/faceapi/model/StRect;->left:I

    .line 117
    iget v2, p0, Lcom/sensetime/faceapi/model/StRect;->bottom:I

    iput v2, v0, Lcom/sensetime/faceapi/model/StRect;->right:I

    .line 118
    iget v2, p0, Lcom/sensetime/faceapi/model/StRect;->right:I

    sub-int v2, p1, v2

    iput v2, v0, Lcom/sensetime/faceapi/model/StRect;->top:I

    .line 119
    iget v2, p0, Lcom/sensetime/faceapi/model/StRect;->left:I

    sub-int v2, p1, v2

    iput v2, v0, Lcom/sensetime/faceapi/model/StRect;->bottom:I

    .line 120
    if-eqz p4, :cond_0

    .line 121
    iget v1, v0, Lcom/sensetime/faceapi/model/StRect;->left:I

    .line 122
    .local v1, "tmp":I
    iget v2, v0, Lcom/sensetime/faceapi/model/StRect;->right:I

    sub-int v2, p2, v2

    iput v2, v0, Lcom/sensetime/faceapi/model/StRect;->left:I

    .line 123
    sub-int v2, p2, v1

    iput v2, v0, Lcom/sensetime/faceapi/model/StRect;->right:I

    goto :goto_0

    .line 128
    .end local v1    # "tmp":I
    :sswitch_2
    iget v2, p0, Lcom/sensetime/faceapi/model/StRect;->left:I

    iput v2, v0, Lcom/sensetime/faceapi/model/StRect;->left:I

    .line 129
    iget v2, p0, Lcom/sensetime/faceapi/model/StRect;->right:I

    iput v2, v0, Lcom/sensetime/faceapi/model/StRect;->right:I

    .line 130
    iget v2, p0, Lcom/sensetime/faceapi/model/StRect;->bottom:I

    sub-int v2, p2, v2

    iput v2, v0, Lcom/sensetime/faceapi/model/StRect;->top:I

    .line 131
    iget v2, p0, Lcom/sensetime/faceapi/model/StRect;->top:I

    sub-int v2, p2, v2

    iput v2, v0, Lcom/sensetime/faceapi/model/StRect;->bottom:I

    .line 132
    if-nez p4, :cond_1

    .line 137
    :goto_1
    :sswitch_3
    iget v2, p0, Lcom/sensetime/faceapi/model/StRect;->bottom:I

    sub-int v2, p2, v2

    iput v2, v0, Lcom/sensetime/faceapi/model/StRect;->left:I

    .line 138
    iget v2, p0, Lcom/sensetime/faceapi/model/StRect;->top:I

    sub-int v2, p2, v2

    iput v2, v0, Lcom/sensetime/faceapi/model/StRect;->right:I

    .line 139
    iget v2, p0, Lcom/sensetime/faceapi/model/StRect;->left:I

    iput v2, v0, Lcom/sensetime/faceapi/model/StRect;->top:I

    .line 140
    iget v2, p0, Lcom/sensetime/faceapi/model/StRect;->right:I

    iput v2, v0, Lcom/sensetime/faceapi/model/StRect;->bottom:I

    .line 141
    if-eqz p4, :cond_0

    .line 142
    iget v1, v0, Lcom/sensetime/faceapi/model/StRect;->left:I

    .line 143
    .restart local v1    # "tmp":I
    iget v2, v0, Lcom/sensetime/faceapi/model/StRect;->right:I

    sub-int v2, p2, v2

    iput v2, v0, Lcom/sensetime/faceapi/model/StRect;->left:I

    .line 144
    sub-int v2, p2, v1

    iput v2, v0, Lcom/sensetime/faceapi/model/StRect;->right:I

    goto :goto_0

    .line 133
    .end local v1    # "tmp":I
    :cond_1
    iget v2, p0, Lcom/sensetime/faceapi/model/StRect;->right:I

    sub-int v2, p1, v2

    iput v2, v0, Lcom/sensetime/faceapi/model/StRect;->left:I

    .line 134
    iget v2, p0, Lcom/sensetime/faceapi/model/StRect;->left:I

    sub-int v2, p1, v2

    iput v2, v0, Lcom/sensetime/faceapi/model/StRect;->right:I

    goto :goto_1

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public static getMaxFace([Lcom/sensetime/faceapi/model/FaceInfo;)Lcom/sensetime/faceapi/model/FaceInfo;
    .locals 5
    .param p0, "faces"    # [Lcom/sensetime/faceapi/model/FaceInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 20
    if-nez p0, :cond_1

    .line 21
    :cond_0
    return-object v3

    .line 20
    :cond_1
    array-length v2, p0

    if-lez v2, :cond_0

    .line 23
    array-length v2, p0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v0, 0x0

    .local v0, "faceInfo":Lcom/sensetime/faceapi/model/FaceInfo;
    const/4 v1, 0x0

    .line 27
    .end local v0    # "faceInfo":Lcom/sensetime/faceapi/model/FaceInfo;
    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_3

    .line 32
    return-object v0

    .line 24
    .end local v1    # "i":I
    :cond_2
    aget-object v2, p0, v4

    return-object v2

    .line 28
    .restart local v1    # "i":I
    :cond_3
    if-nez v0, :cond_5

    .line 29
    :cond_4
    aget-object v0, p0, v1

    .line 27
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    :cond_5
    aget-object v2, p0, v1

    iget-object v2, v2, Lcom/sensetime/faceapi/model/FaceInfo;->faceRect:Lcom/sensetime/faceapi/model/StRect;

    invoke-virtual {v2}, Lcom/sensetime/faceapi/model/StRect;->width()I

    move-result v2

    iget-object v3, v0, Lcom/sensetime/faceapi/model/FaceInfo;->faceRect:Lcom/sensetime/faceapi/model/StRect;

    invoke-virtual {v3}, Lcom/sensetime/faceapi/model/StRect;->width()I

    move-result v3

    if-gt v2, v3, :cond_4

    goto :goto_1
.end method
