.class public Lcom/sensetime/faceapi/model/StRect;
.super Ljava/lang/Object;
.source "StRect.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x27147114878001L


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/sensetime/faceapi/model/StRect;)V
    .locals 1
    .param p1, "r"    # Lcom/sensetime/faceapi/model/StRect;

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-eqz p1, :cond_0

    .line 88
    iget v0, p1, Lcom/sensetime/faceapi/model/StRect;->left:I

    iput v0, p0, Lcom/sensetime/faceapi/model/StRect;->left:I

    .line 89
    iget v0, p1, Lcom/sensetime/faceapi/model/StRect;->top:I

    iput v0, p0, Lcom/sensetime/faceapi/model/StRect;->top:I

    .line 90
    iget v0, p1, Lcom/sensetime/faceapi/model/StRect;->right:I

    iput v0, p0, Lcom/sensetime/faceapi/model/StRect;->right:I

    .line 91
    iget v0, p1, Lcom/sensetime/faceapi/model/StRect;->bottom:I

    iput v0, p0, Lcom/sensetime/faceapi/model/StRect;->bottom:I

    .line 93
    :goto_0
    return-void

    .line 86
    :cond_0
    iput v0, p0, Lcom/sensetime/faceapi/model/StRect;->bottom:I

    iput v0, p0, Lcom/sensetime/faceapi/model/StRect;->right:I

    iput v0, p0, Lcom/sensetime/faceapi/model/StRect;->top:I

    iput v0, p0, Lcom/sensetime/faceapi/model/StRect;->left:I

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    if-eq p0, p1, :cond_1

    .line 106
    if-nez p1, :cond_2

    .line 107
    :cond_0
    return v2

    .line 105
    :cond_1
    return v1

    .line 106
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 109
    check-cast v0, Lcom/sensetime/faceapi/model/StRect;

    .line 110
    .local v0, "r":Lcom/sensetime/faceapi/model/StRect;
    iget v3, p0, Lcom/sensetime/faceapi/model/StRect;->left:I

    iget v4, v0, Lcom/sensetime/faceapi/model/StRect;->left:I

    if-eq v3, v4, :cond_5

    :cond_3
    :goto_0
    move v1, v2

    :cond_4
    return v1

    :cond_5
    iget v3, p0, Lcom/sensetime/faceapi/model/StRect;->top:I

    iget v4, v0, Lcom/sensetime/faceapi/model/StRect;->top:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/sensetime/faceapi/model/StRect;->right:I

    iget v4, v0, Lcom/sensetime/faceapi/model/StRect;->right:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/sensetime/faceapi/model/StRect;->bottom:I

    iget v4, v0, Lcom/sensetime/faceapi/model/StRect;->bottom:I

    if-eq v3, v4, :cond_4

    goto :goto_0
.end method

.method public set(Lcom/sensetime/faceapi/model/StRect;)V
    .locals 1
    .param p1, "src"    # Lcom/sensetime/faceapi/model/StRect;

    .prologue
    .line 121
    iget v0, p1, Lcom/sensetime/faceapi/model/StRect;->left:I

    iput v0, p0, Lcom/sensetime/faceapi/model/StRect;->left:I

    .line 122
    iget v0, p1, Lcom/sensetime/faceapi/model/StRect;->top:I

    iput v0, p0, Lcom/sensetime/faceapi/model/StRect;->top:I

    .line 123
    iget v0, p1, Lcom/sensetime/faceapi/model/StRect;->right:I

    iput v0, p0, Lcom/sensetime/faceapi/model/StRect;->right:I

    .line 124
    iget v0, p1, Lcom/sensetime/faceapi/model/StRect;->bottom:I

    iput v0, p0, Lcom/sensetime/faceapi/model/StRect;->bottom:I

    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "StRect("

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget v1, p0, Lcom/sensetime/faceapi/model/StRect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget v1, p0, Lcom/sensetime/faceapi/model/StRect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " - "

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget v1, p0, Lcom/sensetime/faceapi/model/StRect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget v1, p0, Lcom/sensetime/faceapi/model/StRect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final width()I
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lcom/sensetime/faceapi/model/StRect;->right:I

    iget v1, p0, Lcom/sensetime/faceapi/model/StRect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method
