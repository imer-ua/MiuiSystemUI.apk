.class public final Lcom/android/keyguard/ChooseLockSettingsHelper;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

.field private final mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/keyguard/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 61
    new-instance v0, Lcom/android/keyguard/LockPatternUtilsWrapper;

    iget-object v1, p0, Lcom/android/keyguard/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-direct {v0, v1}, Lcom/android/keyguard/LockPatternUtilsWrapper;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/keyguard/ChooseLockSettingsHelper;->mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    .line 58
    return-void
.end method
