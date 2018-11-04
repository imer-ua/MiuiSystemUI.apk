.class public final enum Lcom/sensetime/faceapi/model/ResultCode;
.super Ljava/lang/Enum;
.source "ResultCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sensetime/faceapi/model/ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sensetime/faceapi/model/ResultCode;

.field public static final enum ST_E_AUTH_EXPIRE:Lcom/sensetime/faceapi/model/ResultCode;

.field public static final enum ST_E_FAIL:Lcom/sensetime/faceapi/model/ResultCode;

.field public static final enum ST_E_FILE_EXPIRE:Lcom/sensetime/faceapi/model/ResultCode;

.field public static final enum ST_E_FILE_NOT_FOUND:Lcom/sensetime/faceapi/model/ResultCode;

.field public static final enum ST_E_HANDLE:Lcom/sensetime/faceapi/model/ResultCode;

.field public static final enum ST_E_INVALIDARG:Lcom/sensetime/faceapi/model/ResultCode;

.field public static final enum ST_E_INVALID_APPID:Lcom/sensetime/faceapi/model/ResultCode;

.field public static final enum ST_E_INVALID_AUTH:Lcom/sensetime/faceapi/model/ResultCode;

.field public static final enum ST_E_INVALID_FILE_FORMAT:Lcom/sensetime/faceapi/model/ResultCode;

.field public static final enum ST_E_INVALID_PIXEL_FORMAT:Lcom/sensetime/faceapi/model/ResultCode;

.field public static final enum ST_E_ONLINE_AUTH_CONNECT_FAIL:Lcom/sensetime/faceapi/model/ResultCode;

.field public static final enum ST_E_ONLINE_AUTH_INVALID:Lcom/sensetime/faceapi/model/ResultCode;

.field public static final enum ST_E_ONLINE_AUTH_TIMEOUT:Lcom/sensetime/faceapi/model/ResultCode;

.field public static final enum ST_E_OUTOFMEMORY:Lcom/sensetime/faceapi/model/ResultCode;

.field public static final enum ST_E_PLATFORM_NOTSUPPORTED:Lcom/sensetime/faceapi/model/ResultCode;

.field public static final enum ST_E_PRODUCT_VERSION_MISMATCH:Lcom/sensetime/faceapi/model/ResultCode;

.field public static final enum ST_E_UNZIP_FAILED:Lcom/sensetime/faceapi/model/ResultCode;

.field public static final enum ST_OK:Lcom/sensetime/faceapi/model/ResultCode;


# instance fields
.field private final resultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/sensetime/faceapi/model/ResultCode;

    const-string/jumbo v1, "ST_OK"

    invoke-direct {v0, v1, v4, v4}, Lcom/sensetime/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/ResultCode;->ST_OK:Lcom/sensetime/faceapi/model/ResultCode;

    .line 11
    new-instance v0, Lcom/sensetime/faceapi/model/ResultCode;

    const-string/jumbo v1, "ST_E_INVALIDARG"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/sensetime/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_INVALIDARG:Lcom/sensetime/faceapi/model/ResultCode;

    .line 15
    new-instance v0, Lcom/sensetime/faceapi/model/ResultCode;

    const-string/jumbo v1, "ST_E_HANDLE"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v6, v2}, Lcom/sensetime/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_HANDLE:Lcom/sensetime/faceapi/model/ResultCode;

    .line 19
    new-instance v0, Lcom/sensetime/faceapi/model/ResultCode;

    const-string/jumbo v1, "ST_E_OUTOFMEMORY"

    const/4 v2, -0x3

    invoke-direct {v0, v1, v7, v2}, Lcom/sensetime/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_OUTOFMEMORY:Lcom/sensetime/faceapi/model/ResultCode;

    .line 23
    new-instance v0, Lcom/sensetime/faceapi/model/ResultCode;

    const-string/jumbo v1, "ST_E_FAIL"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v8, v2}, Lcom/sensetime/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_FAIL:Lcom/sensetime/faceapi/model/ResultCode;

    .line 27
    new-instance v0, Lcom/sensetime/faceapi/model/ResultCode;

    const-string/jumbo v1, "ST_E_INVALID_PIXEL_FORMAT"

    const/4 v2, 0x5

    const/4 v3, -0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_INVALID_PIXEL_FORMAT:Lcom/sensetime/faceapi/model/ResultCode;

    .line 31
    new-instance v0, Lcom/sensetime/faceapi/model/ResultCode;

    const-string/jumbo v1, "ST_E_FILE_NOT_FOUND"

    const/4 v2, 0x6

    const/4 v3, -0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_FILE_NOT_FOUND:Lcom/sensetime/faceapi/model/ResultCode;

    .line 35
    new-instance v0, Lcom/sensetime/faceapi/model/ResultCode;

    const-string/jumbo v1, "ST_E_INVALID_FILE_FORMAT"

    const/4 v2, 0x7

    const/4 v3, -0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_INVALID_FILE_FORMAT:Lcom/sensetime/faceapi/model/ResultCode;

    .line 39
    new-instance v0, Lcom/sensetime/faceapi/model/ResultCode;

    const-string/jumbo v1, "ST_E_FILE_EXPIRE"

    const/16 v2, 0x8

    const/16 v3, -0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_FILE_EXPIRE:Lcom/sensetime/faceapi/model/ResultCode;

    .line 43
    new-instance v0, Lcom/sensetime/faceapi/model/ResultCode;

    const-string/jumbo v1, "ST_E_INVALID_AUTH"

    const/16 v2, 0x9

    const/16 v3, -0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_INVALID_AUTH:Lcom/sensetime/faceapi/model/ResultCode;

    .line 47
    new-instance v0, Lcom/sensetime/faceapi/model/ResultCode;

    const-string/jumbo v1, "ST_E_INVALID_APPID"

    const/16 v2, 0xa

    const/16 v3, -0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_INVALID_APPID:Lcom/sensetime/faceapi/model/ResultCode;

    .line 51
    new-instance v0, Lcom/sensetime/faceapi/model/ResultCode;

    const-string/jumbo v1, "ST_E_AUTH_EXPIRE"

    const/16 v2, 0xb

    const/16 v3, -0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_AUTH_EXPIRE:Lcom/sensetime/faceapi/model/ResultCode;

    .line 55
    new-instance v0, Lcom/sensetime/faceapi/model/ResultCode;

    const-string/jumbo v1, "ST_E_ONLINE_AUTH_CONNECT_FAIL"

    const/16 v2, 0xc

    const/16 v3, -0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_ONLINE_AUTH_CONNECT_FAIL:Lcom/sensetime/faceapi/model/ResultCode;

    .line 59
    new-instance v0, Lcom/sensetime/faceapi/model/ResultCode;

    const-string/jumbo v1, "ST_E_ONLINE_AUTH_TIMEOUT"

    const/16 v2, 0xd

    const/16 v3, -0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_ONLINE_AUTH_TIMEOUT:Lcom/sensetime/faceapi/model/ResultCode;

    .line 63
    new-instance v0, Lcom/sensetime/faceapi/model/ResultCode;

    const-string/jumbo v1, "ST_E_ONLINE_AUTH_INVALID"

    const/16 v2, 0xe

    const/16 v3, -0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_ONLINE_AUTH_INVALID:Lcom/sensetime/faceapi/model/ResultCode;

    .line 67
    new-instance v0, Lcom/sensetime/faceapi/model/ResultCode;

    const-string/jumbo v1, "ST_E_PRODUCT_VERSION_MISMATCH"

    const/16 v2, 0xf

    const/16 v3, -0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_PRODUCT_VERSION_MISMATCH:Lcom/sensetime/faceapi/model/ResultCode;

    .line 71
    new-instance v0, Lcom/sensetime/faceapi/model/ResultCode;

    const-string/jumbo v1, "ST_E_PLATFORM_NOTSUPPORTED"

    const/16 v2, 0x10

    const/16 v3, -0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_PLATFORM_NOTSUPPORTED:Lcom/sensetime/faceapi/model/ResultCode;

    .line 75
    new-instance v0, Lcom/sensetime/faceapi/model/ResultCode;

    const-string/jumbo v1, "ST_E_UNZIP_FAILED"

    const/16 v2, 0x11

    const/16 v3, -0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/sensetime/faceapi/model/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_UNZIP_FAILED:Lcom/sensetime/faceapi/model/ResultCode;

    const/16 v0, 0x12

    .line 3
    new-array v0, v0, [Lcom/sensetime/faceapi/model/ResultCode;

    sget-object v1, Lcom/sensetime/faceapi/model/ResultCode;->ST_OK:Lcom/sensetime/faceapi/model/ResultCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_INVALIDARG:Lcom/sensetime/faceapi/model/ResultCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_HANDLE:Lcom/sensetime/faceapi/model/ResultCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_OUTOFMEMORY:Lcom/sensetime/faceapi/model/ResultCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_FAIL:Lcom/sensetime/faceapi/model/ResultCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_INVALID_PIXEL_FORMAT:Lcom/sensetime/faceapi/model/ResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_FILE_NOT_FOUND:Lcom/sensetime/faceapi/model/ResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_INVALID_FILE_FORMAT:Lcom/sensetime/faceapi/model/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_FILE_EXPIRE:Lcom/sensetime/faceapi/model/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_INVALID_AUTH:Lcom/sensetime/faceapi/model/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_INVALID_APPID:Lcom/sensetime/faceapi/model/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_AUTH_EXPIRE:Lcom/sensetime/faceapi/model/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_ONLINE_AUTH_CONNECT_FAIL:Lcom/sensetime/faceapi/model/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_ONLINE_AUTH_TIMEOUT:Lcom/sensetime/faceapi/model/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_ONLINE_AUTH_INVALID:Lcom/sensetime/faceapi/model/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_PRODUCT_VERSION_MISMATCH:Lcom/sensetime/faceapi/model/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_PLATFORM_NOTSUPPORTED:Lcom/sensetime/faceapi/model/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sensetime/faceapi/model/ResultCode;->ST_E_UNZIP_FAILED:Lcom/sensetime/faceapi/model/ResultCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sensetime/faceapi/model/ResultCode;->$VALUES:[Lcom/sensetime/faceapi/model/ResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "resultCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput p3, p0, Lcom/sensetime/faceapi/model/ResultCode;->resultCode:I

    .line 81
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sensetime/faceapi/model/ResultCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sensetime/faceapi/model/ResultCode;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sensetime/faceapi/model/ResultCode;

    return-object v0
.end method

.method public static values()[Lcom/sensetime/faceapi/model/ResultCode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/sensetime/faceapi/model/ResultCode;->$VALUES:[Lcom/sensetime/faceapi/model/ResultCode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sensetime/faceapi/model/ResultCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/sensetime/faceapi/model/ResultCode;->resultCode:I

    return v0
.end method
