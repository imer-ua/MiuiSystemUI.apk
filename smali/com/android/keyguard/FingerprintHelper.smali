.class public Lcom/android/keyguard/FingerprintHelper;
.super Ljava/lang/Object;
.source "FingerprintHelper.java"


# static fields
.field private static sFingerprintIdentifyCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/keyguard/FingerprintIdentifyCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/keyguard/FingerprintHelper;->sFingerprintIdentifyCallbackList:Ljava/util/List;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/FingerprintHelper;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    .line 35
    iput-object p1, p0, Lcom/android/keyguard/FingerprintHelper;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private initFingerprintManager()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/keyguard/FingerprintHelper;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/keyguard/FingerprintHelper;->mContext:Landroid/content/Context;

    .line 46
    const-string/jumbo v1, "fingerprint"

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/keyguard/FingerprintHelper;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public isHardwareDetected()Z
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/keyguard/FingerprintHelper;->initFingerprintManager()V

    .line 40
    iget-object v0, p0, Lcom/android/keyguard/FingerprintHelper;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/FingerprintHelper;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    goto :goto_0
.end method

.method public resetFingerLockoutTime()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Lcom/android/keyguard/FingerprintHelper;->initFingerprintManager()V

    .line 164
    iget-object v0, p0, Lcom/android/keyguard/FingerprintHelper;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/FingerprintHelper;->mFingerprintMgr:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->resetTimeout([B)V

    .line 162
    return-void
.end method
