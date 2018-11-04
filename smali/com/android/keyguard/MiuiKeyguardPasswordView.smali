.class public abstract Lcom/android/keyguard/MiuiKeyguardPasswordView;
.super Landroid/widget/LinearLayout;
.source "MiuiKeyguardPasswordView.java"


# instance fields
.field public mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

.field protected mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mVibrator:Landroid/os/Vibrator;

    .line 44
    return-void
.end method


# virtual methods
.method protected allowUnlock(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 68
    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasOwnerUserAuthenticatedSinceBoot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGreenKidActive(Landroid/content/Context;)Z

    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 79
    const v0, 0x91003de

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->setMessage(I)V

    .line 80
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->handleWrongPassword()V

    .line 81
    return v3

    .line 71
    :cond_1
    const v0, 0x91003dc

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->setMessage(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->handleWrongPassword()V

    .line 73
    return v3

    .line 85
    :cond_2
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 86
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isPhoneCalling(Landroid/content/Context;)Z

    move-result v0

    .line 85
    if-eqz v0, :cond_3

    .line 87
    const-string/jumbo v0, "miui_keyguard_password"

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t switch user to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " when calling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const v0, 0x91003dd

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->setMessage(I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->handleWrongPassword()V

    .line 91
    return v3

    .line 93
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method protected handleWrongPassword()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 53
    const v0, 0x9120136

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 52
    check-cast v0, Lcom/android/keyguard/KeyguardBouncerMessageView;

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    .line 50
    return-void
.end method

.method protected abstract setMessage(I)V
.end method

.method protected switchUser(I)V
    .locals 3
    .param p1, "targetId"    # I

    .prologue
    .line 57
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 59
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MiuiKeyguardPasswordView"

    const-string/jumbo v2, "switchUser failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
