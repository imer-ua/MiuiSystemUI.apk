.class public final enum Lcom/sensetime/faceapi/model/CvPixelFormat;
.super Ljava/lang/Enum;
.source "CvPixelFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sensetime/faceapi/model/CvPixelFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sensetime/faceapi/model/CvPixelFormat;

.field public static final enum BGR888:Lcom/sensetime/faceapi/model/CvPixelFormat;

.field public static final enum BGRA8888:Lcom/sensetime/faceapi/model/CvPixelFormat;

.field public static final enum GRAY8:Lcom/sensetime/faceapi/model/CvPixelFormat;

.field public static final enum NV12:Lcom/sensetime/faceapi/model/CvPixelFormat;

.field public static final enum NV21:Lcom/sensetime/faceapi/model/CvPixelFormat;

.field public static final enum RGB888:Lcom/sensetime/faceapi/model/CvPixelFormat;

.field public static final enum RGBA8888:Lcom/sensetime/faceapi/model/CvPixelFormat;

.field public static final enum YUV420P:Lcom/sensetime/faceapi/model/CvPixelFormat;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lcom/sensetime/faceapi/model/CvPixelFormat;

    const-string/jumbo v1, "GRAY8"

    invoke-direct {v0, v1, v4, v4}, Lcom/sensetime/faceapi/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/CvPixelFormat;->GRAY8:Lcom/sensetime/faceapi/model/CvPixelFormat;

    .line 6
    new-instance v0, Lcom/sensetime/faceapi/model/CvPixelFormat;

    const-string/jumbo v1, "YUV420P"

    invoke-direct {v0, v1, v5, v5}, Lcom/sensetime/faceapi/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/CvPixelFormat;->YUV420P:Lcom/sensetime/faceapi/model/CvPixelFormat;

    .line 7
    new-instance v0, Lcom/sensetime/faceapi/model/CvPixelFormat;

    const-string/jumbo v1, "NV12"

    invoke-direct {v0, v1, v6, v6}, Lcom/sensetime/faceapi/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV12:Lcom/sensetime/faceapi/model/CvPixelFormat;

    .line 8
    new-instance v0, Lcom/sensetime/faceapi/model/CvPixelFormat;

    const-string/jumbo v1, "NV21"

    invoke-direct {v0, v1, v7, v7}, Lcom/sensetime/faceapi/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV21:Lcom/sensetime/faceapi/model/CvPixelFormat;

    .line 9
    new-instance v0, Lcom/sensetime/faceapi/model/CvPixelFormat;

    const-string/jumbo v1, "BGRA8888"

    invoke-direct {v0, v1, v8, v8}, Lcom/sensetime/faceapi/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/CvPixelFormat;->BGRA8888:Lcom/sensetime/faceapi/model/CvPixelFormat;

    .line 10
    new-instance v0, Lcom/sensetime/faceapi/model/CvPixelFormat;

    const-string/jumbo v1, "BGR888"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/faceapi/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/CvPixelFormat;->BGR888:Lcom/sensetime/faceapi/model/CvPixelFormat;

    .line 11
    new-instance v0, Lcom/sensetime/faceapi/model/CvPixelFormat;

    const-string/jumbo v1, "RGBA8888"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/faceapi/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/CvPixelFormat;->RGBA8888:Lcom/sensetime/faceapi/model/CvPixelFormat;

    .line 12
    new-instance v0, Lcom/sensetime/faceapi/model/CvPixelFormat;

    const-string/jumbo v1, "RGB888"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/faceapi/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/CvPixelFormat;->RGB888:Lcom/sensetime/faceapi/model/CvPixelFormat;

    const/16 v0, 0x8

    .line 3
    new-array v0, v0, [Lcom/sensetime/faceapi/model/CvPixelFormat;

    sget-object v1, Lcom/sensetime/faceapi/model/CvPixelFormat;->GRAY8:Lcom/sensetime/faceapi/model/CvPixelFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sensetime/faceapi/model/CvPixelFormat;->YUV420P:Lcom/sensetime/faceapi/model/CvPixelFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV12:Lcom/sensetime/faceapi/model/CvPixelFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV21:Lcom/sensetime/faceapi/model/CvPixelFormat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sensetime/faceapi/model/CvPixelFormat;->BGRA8888:Lcom/sensetime/faceapi/model/CvPixelFormat;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sensetime/faceapi/model/CvPixelFormat;->BGR888:Lcom/sensetime/faceapi/model/CvPixelFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sensetime/faceapi/model/CvPixelFormat;->RGBA8888:Lcom/sensetime/faceapi/model/CvPixelFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sensetime/faceapi/model/CvPixelFormat;->RGB888:Lcom/sensetime/faceapi/model/CvPixelFormat;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sensetime/faceapi/model/CvPixelFormat;->$VALUES:[Lcom/sensetime/faceapi/model/CvPixelFormat;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/sensetime/faceapi/model/CvPixelFormat;->nativeInt:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sensetime/faceapi/model/CvPixelFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sensetime/faceapi/model/CvPixelFormat;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sensetime/faceapi/model/CvPixelFormat;

    return-object v0
.end method

.method public static values()[Lcom/sensetime/faceapi/model/CvPixelFormat;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/sensetime/faceapi/model/CvPixelFormat;->$VALUES:[Lcom/sensetime/faceapi/model/CvPixelFormat;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sensetime/faceapi/model/CvPixelFormat;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/sensetime/faceapi/model/CvPixelFormat;->nativeInt:I

    return v0
.end method
