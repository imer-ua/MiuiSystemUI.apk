.class public Lcom/sensetime/faceauth/bean/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x27147114878003L


# instance fields
.field private mData:[B

.field private mDataHeight:I

.field private mDataWidth:I

.field private mFaceInfo:Lcom/sensetime/faceapi/model/FaceInfo;

.field private mFeature:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private mVerifyVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/sensetime/faceauth/bean/User;->mDataWidth:I

    .line 14
    iput v0, p0, Lcom/sensetime/faceauth/bean/User;->mDataHeight:I

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BIILcom/sensetime/faceapi/model/FaceInfo;Ljava/lang/String;I)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "faceInfo"    # Lcom/sensetime/faceapi/model/FaceInfo;
    .param p6, "feature"    # Ljava/lang/String;
    .param p7, "verifyVersion"    # I

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v2, p0, Lcom/sensetime/faceauth/bean/User;->mDataWidth:I

    .line 14
    iput v2, p0, Lcom/sensetime/faceauth/bean/User;->mDataHeight:I

    .line 23
    iput-object p1, p0, Lcom/sensetime/faceauth/bean/User;->mUserId:Ljava/lang/String;

    .line 24
    array-length v0, p2

    .line 25
    .local v0, "length":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/sensetime/faceauth/bean/User;->mData:[B

    .line 26
    iget-object v1, p0, Lcom/sensetime/faceauth/bean/User;->mData:[B

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iput p3, p0, Lcom/sensetime/faceauth/bean/User;->mDataWidth:I

    .line 28
    iput p4, p0, Lcom/sensetime/faceauth/bean/User;->mDataHeight:I

    .line 29
    iput-object p6, p0, Lcom/sensetime/faceauth/bean/User;->mFeature:Ljava/lang/String;

    .line 30
    iput p7, p0, Lcom/sensetime/faceauth/bean/User;->mVerifyVersion:I

    .line 31
    invoke-virtual {p5}, Lcom/sensetime/faceapi/model/FaceInfo;->clone()Lcom/sensetime/faceapi/model/FaceInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sensetime/faceauth/bean/User;->mFaceInfo:Lcom/sensetime/faceapi/model/FaceInfo;

    .line 32
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sensetime/faceauth/bean/User;->mData:[B

    return-object v0
.end method

.method public getDataHeight()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/sensetime/faceauth/bean/User;->mDataHeight:I

    return v0
.end method

.method public getDataWidth()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/sensetime/faceauth/bean/User;->mDataWidth:I

    return v0
.end method

.method public getFaceInfo()Lcom/sensetime/faceapi/model/FaceInfo;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sensetime/faceauth/bean/User;->mFaceInfo:Lcom/sensetime/faceapi/model/FaceInfo;

    return-object v0
.end method

.method public getFeature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sensetime/faceauth/bean/User;->mFeature:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sensetime/faceauth/bean/User;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyVersion()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/sensetime/faceauth/bean/User;->mVerifyVersion:I

    return v0
.end method

.method public setFeature(Ljava/lang/String;)V
    .locals 0
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sensetime/faceauth/bean/User;->mFeature:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setVerifyVersion(I)V
    .locals 0
    .param p1, "verison"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/sensetime/faceauth/bean/User;->mVerifyVersion:I

    .line 51
    return-void
.end method
