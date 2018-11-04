.class public Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
.super Ljava/lang/Object;
.source "UnlockMethodCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;,
        Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# instance fields
.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mCanSkipBouncer:Z

.field private mFaceUnlockRunning:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecure:Z

.field private mTrustManaged:Z

.field private mTrusted:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V
    .locals 0
    .param p1, "updateAlways"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->update(Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mListeners:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;-><init>(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 49
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 50
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 51
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->update(Z)V

    .line 48
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    sget-object v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->sInstance:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->sInstance:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 59
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->sInstance:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    return-object v0
.end method

.method private notifyListeners()V
    .locals 3

    .prologue
    .line 111
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;

    .line 112
    .local v0, "listener":Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;->onUnlockMethodStateChanged()V

    goto :goto_0

    .line 110
    .end local v0    # "listener":Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
    :cond_0
    return-void
.end method

.method private update(Z)V
    .locals 8
    .param p1, "updateAlways"    # Z

    .prologue
    const/4 v1, 0x1

    .line 89
    const-string/jumbo v7, "UnlockMethodCache#update"

    invoke-static {v7}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    .line 91
    .local v6, "user":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    .line 92
    .local v3, "secure":Z
    if-eqz v3, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    .line 93
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result v4

    .line 94
    .local v4, "trustManaged":Z
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v5

    .line 95
    .local v5, "trusted":Z
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceUnlockRunning(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 96
    move v2, v4

    .line 97
    :goto_1
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mSecure:Z

    if-ne v3, v7, :cond_0

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCanSkipBouncer:Z

    if-eq v0, v7, :cond_5

    .line 99
    .local v1, "changed":Z
    :cond_0
    :goto_2
    if-nez v1, :cond_1

    if-eqz p1, :cond_2

    .line 100
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mSecure:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCanSkipBouncer:Z

    .line 102
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mTrusted:Z

    .line 103
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mTrustManaged:Z

    .line 104
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mFaceUnlockRunning:Z

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->notifyListeners()V

    .line 107
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 88
    return-void

    .line 92
    .end local v1    # "changed":Z
    .end local v4    # "trustManaged":Z
    .end local v5    # "trusted":Z
    :cond_3
    const/4 v0, 0x1

    .local v0, "canSkipBouncer":Z
    goto :goto_0

    .line 95
    .end local v0    # "canSkipBouncer":Z
    .restart local v4    # "trustManaged":Z
    .restart local v5    # "trusted":Z
    :cond_4
    const/4 v2, 0x0

    .local v2, "faceUnlockRunning":Z
    goto :goto_1

    .line 98
    .end local v2    # "faceUnlockRunning":Z
    :cond_5
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mTrustManaged:Z

    if-ne v4, v7, :cond_0

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mFaceUnlockRunning:Z

    if-ne v2, v7, :cond_0

    const/4 v1, 0x0

    goto :goto_2
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public canSkipBouncer()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCanSkipBouncer:Z

    return v0
.end method

.method public isMethodSecure()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mSecure:Z

    return v0
.end method
