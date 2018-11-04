.class public final enum Lcom/sensetime/faceapi/model/FaceOrientation;
.super Ljava/lang/Enum;
.source "FaceOrientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sensetime/faceapi/model/FaceOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sensetime/faceapi/model/FaceOrientation;

.field public static final enum DOWN:Lcom/sensetime/faceapi/model/FaceOrientation;

.field public static final enum LEFT:Lcom/sensetime/faceapi/model/FaceOrientation;

.field public static final enum RIGHT:Lcom/sensetime/faceapi/model/FaceOrientation;

.field public static final enum UNKNOWN:Lcom/sensetime/faceapi/model/FaceOrientation;

.field public static final enum UP:Lcom/sensetime/faceapi/model/FaceOrientation;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5
    new-instance v0, Lcom/sensetime/faceapi/model/FaceOrientation;

    const-string/jumbo v1, "UP"

    invoke-direct {v0, v1, v6, v3}, Lcom/sensetime/faceapi/model/FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/FaceOrientation;->UP:Lcom/sensetime/faceapi/model/FaceOrientation;

    .line 6
    new-instance v0, Lcom/sensetime/faceapi/model/FaceOrientation;

    const-string/jumbo v1, "LEFT"

    invoke-direct {v0, v1, v3, v4}, Lcom/sensetime/faceapi/model/FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/FaceOrientation;->LEFT:Lcom/sensetime/faceapi/model/FaceOrientation;

    .line 7
    new-instance v0, Lcom/sensetime/faceapi/model/FaceOrientation;

    const-string/jumbo v1, "DOWN"

    invoke-direct {v0, v1, v4, v5}, Lcom/sensetime/faceapi/model/FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/FaceOrientation;->DOWN:Lcom/sensetime/faceapi/model/FaceOrientation;

    .line 8
    new-instance v0, Lcom/sensetime/faceapi/model/FaceOrientation;

    const-string/jumbo v1, "RIGHT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lcom/sensetime/faceapi/model/FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/FaceOrientation;->RIGHT:Lcom/sensetime/faceapi/model/FaceOrientation;

    .line 9
    new-instance v0, Lcom/sensetime/faceapi/model/FaceOrientation;

    const-string/jumbo v1, "UNKNOWN"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v5, v2}, Lcom/sensetime/faceapi/model/FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/FaceOrientation;->UNKNOWN:Lcom/sensetime/faceapi/model/FaceOrientation;

    const/4 v0, 0x5

    .line 3
    new-array v0, v0, [Lcom/sensetime/faceapi/model/FaceOrientation;

    sget-object v1, Lcom/sensetime/faceapi/model/FaceOrientation;->UP:Lcom/sensetime/faceapi/model/FaceOrientation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sensetime/faceapi/model/FaceOrientation;->LEFT:Lcom/sensetime/faceapi/model/FaceOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sensetime/faceapi/model/FaceOrientation;->DOWN:Lcom/sensetime/faceapi/model/FaceOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sensetime/faceapi/model/FaceOrientation;->RIGHT:Lcom/sensetime/faceapi/model/FaceOrientation;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sensetime/faceapi/model/FaceOrientation;->UNKNOWN:Lcom/sensetime/faceapi/model/FaceOrientation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sensetime/faceapi/model/FaceOrientation;->$VALUES:[Lcom/sensetime/faceapi/model/FaceOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "ni"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/sensetime/faceapi/model/FaceOrientation;->nativeInt:I

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sensetime/faceapi/model/FaceOrientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sensetime/faceapi/model/FaceOrientation;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sensetime/faceapi/model/FaceOrientation;

    return-object v0
.end method

.method public static values()[Lcom/sensetime/faceapi/model/FaceOrientation;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/sensetime/faceapi/model/FaceOrientation;->$VALUES:[Lcom/sensetime/faceapi/model/FaceOrientation;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sensetime/faceapi/model/FaceOrientation;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/sensetime/faceapi/model/FaceOrientation;->nativeInt:I

    return v0
.end method
