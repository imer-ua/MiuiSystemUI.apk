.class public Landroid/app/trust/TrustManagerCompat;
.super Ljava/lang/Object;
.source "TrustManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isTrustUsuallyManaged(Landroid/app/trust/TrustManager;I)Z
    .locals 1
    .param p0, "tm"    # Landroid/app/trust/TrustManager;
    .param p1, "userId"    # I

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Landroid/app/trust/TrustManager;->isTrustUsuallyManaged(I)Z

    move-result v0

    return v0
.end method

.method public static setDeviceLockedForUser(Landroid/app/trust/TrustManager;IZ)V
    .locals 0
    .param p0, "tm"    # Landroid/app/trust/TrustManager;
    .param p1, "userId"    # I
    .param p2, "locked"    # Z

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 12
    return-void
.end method
