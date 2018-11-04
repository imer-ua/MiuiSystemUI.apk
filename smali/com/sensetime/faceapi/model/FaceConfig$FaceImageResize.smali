.class public final enum Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;
.super Ljava/lang/Enum;
.source "FaceConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

.field public static final enum DEFAULT_CONFIG:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

.field public static final enum RESIZE_1280W:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

.field public static final enum RESIZE_320W:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

.field public static final enum RESIZE_640W:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    const-string/jumbo v1, "DEFAULT_CONFIG"

    invoke-direct {v0, v1, v3, v3}, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->DEFAULT_CONFIG:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    .line 14
    new-instance v0, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    const-string/jumbo v1, "RESIZE_320W"

    invoke-direct {v0, v1, v5, v4}, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->RESIZE_320W:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    .line 15
    new-instance v0, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    const-string/jumbo v1, "RESIZE_640W"

    invoke-direct {v0, v1, v4, v7}, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->RESIZE_640W:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    .line 16
    new-instance v0, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    const-string/jumbo v1, "RESIZE_1280W"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v6, v2}, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->RESIZE_1280W:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    .line 11
    new-array v0, v7, [Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    sget-object v1, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->DEFAULT_CONFIG:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->RESIZE_320W:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->RESIZE_640W:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->RESIZE_1280W:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->$VALUES:[Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->value:I

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    .line 11
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    return-object v0
.end method

.method public static values()[Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->$VALUES:[Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->value:I

    return v0
.end method
