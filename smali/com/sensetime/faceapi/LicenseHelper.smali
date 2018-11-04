.class public Lcom/sensetime/faceapi/LicenseHelper;
.super Ljava/lang/Object;
.source "LicenseHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initLicense(Ljava/lang/String;)I
    .locals 1
    .param p0, "license"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-static {p0}, Lcom/sensetime/faceapi/FaceLibrary;->initLiscenceStr(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
