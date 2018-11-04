.class public Lcom/sensetime/faceauth/util/SerializeManager;
.super Ljava/lang/Object;
.source "SerializeManager.java"


# static fields
.field private static final VERSIONDATA:Ljava/lang/String;

.field private static sSerializeManager:Lcom/sensetime/faceauth/util/SerializeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/sensetime/faceauth/util/SerializeManager;

    invoke-direct {v0}, Lcom/sensetime/faceauth/util/SerializeManager;-><init>()V

    sput-object v0, Lcom/sensetime/faceauth/util/SerializeManager;->sSerializeManager:Lcom/sensetime/faceauth/util/SerializeManager;

    .line 16
    invoke-static {}, Lcom/sensetime/faceapi/FaceLibrary;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sensetime/faceauth/util/SerializeManager;->VERSIONDATA:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/sensetime/faceauth/util/SerializeManager;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/sensetime/faceauth/util/SerializeManager;->sSerializeManager:Lcom/sensetime/faceauth/util/SerializeManager;

    return-object v0
.end method

.method private toByteArray(Ljava/lang/Object;)[B
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 63
    .local v1, "bytes":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 65
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 66
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 68
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 69
    .local v1, "bytes":[B
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 70
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "bytes":[B
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    :goto_0
    return-object v1

    .line 73
    :catch_0
    move-exception v2

    .line 72
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private toObject([B)Ljava/lang/Object;
    .locals 5
    .param p1, "bytes"    # [B

    .prologue
    const/4 v3, 0x0

    .line 85
    .local v3, "obj":Ljava/lang/Object;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 86
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 87
    .local v4, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 88
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 89
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    :goto_0
    return-object v3

    .line 94
    :catch_0
    move-exception v1

    .line 91
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 93
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public readSerilizeObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .param p1, "serializePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 36
    invoke-static {p1}, Lcom/sensetime/faceauth/util/FileUtil;->readByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "byteObject":[B
    const/4 v6, 0x0

    .line 38
    .local v6, "object":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 53
    .end local v6    # "object":Ljava/lang/Object;
    :goto_0
    return-object v6

    .restart local v6    # "object":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v8, "0x4A0x410x560x41"

    .line 39
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    .line 40
    .local v4, "flagLength":I
    sget-object v8, Lcom/sensetime/faceauth/util/SerializeManager;->VERSIONDATA:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    .line 41
    .local v7, "versionLength":I
    add-int v5, v4, v7

    .line 42
    .local v5, "headLength":I
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v9, v4}, Ljava/lang/String;-><init>([BII)V

    .local v3, "flag":Ljava/lang/String;
    const-string/jumbo v8, "0x4A0x410x560x41"

    .line 43
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 50
    invoke-direct {p0, v0}, Lcom/sensetime/faceauth/util/SerializeManager;->toObject([B)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 44
    :cond_1
    array-length v8, v0

    sub-int/2addr v8, v5

    new-array v1, v8, [B

    .line 45
    .local v1, "decryptData":[B
    array-length v8, v0

    sub-int/2addr v8, v5

    invoke-static {v0, v5, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string/jumbo v8, "XPSSDYJEKDGFJFNV"

    .line 46
    invoke-static {v8, v1}, Lcom/sensetime/faceauth/util/AESUtil;->decrypt(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 47
    .local v2, "decryptObject":[B
    invoke-direct {p0, v2}, Lcom/sensetime/faceauth/util/SerializeManager;->toObject([B)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0
.end method

.method public serializeObject(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "serializePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 26
    invoke-direct {p0, p1}, Lcom/sensetime/faceauth/util/SerializeManager;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v0

    .local v0, "byteObject":[B
    const-string/jumbo v3, "XPSSDYJEKDGFJFNV"

    .line 27
    invoke-static {v3, v0}, Lcom/sensetime/faceauth/util/AESUtil;->encrypt(Ljava/lang/String;[B)[B

    move-result-object v1

    .local v1, "encryptObject":[B
    const-string/jumbo v3, "0x4A0x410x560x41"

    .line 28
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v4, Lcom/sensetime/faceauth/util/SerializeManager;->VERSIONDATA:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    array-length v4, v1

    add-int/2addr v3, v4

    new-array v2, v3, [B

    .local v2, "wholeData":[B
    const-string/jumbo v3, "0x4A0x410x560x41"

    .line 29
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string/jumbo v4, "0x4A0x410x560x41"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    sget-object v3, Lcom/sensetime/faceauth/util/SerializeManager;->VERSIONDATA:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string/jumbo v4, "0x4A0x410x560x41"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sget-object v5, Lcom/sensetime/faceauth/util/SerializeManager;->VERSIONDATA:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string/jumbo v3, "0x4A0x410x560x41"

    .line 31
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v4, Lcom/sensetime/faceauth/util/SerializeManager;->VERSIONDATA:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    array-length v4, v1

    invoke-static {v1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    invoke-static {v2, p2}, Lcom/sensetime/faceauth/util/FileUtil;->saveBytes([BLjava/lang/String;)Z

    .line 33
    return-void
.end method
