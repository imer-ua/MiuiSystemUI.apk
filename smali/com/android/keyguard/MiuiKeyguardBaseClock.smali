.class public Lcom/android/keyguard/MiuiKeyguardBaseClock;
.super Landroid/widget/LinearLayout;
.source "MiuiKeyguardBaseClock.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDisplaySimCardInfo:Z

.field protected mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

.field protected mOwnerInfoString:Ljava/lang/String;

.field protected mPhoneCount:I

.field protected mRealCarrier:[Ljava/lang/String;

.field private mRealCarrierObserver:[Landroid/database/ContentObserver;

.field protected mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/MiuiKeyguardBaseClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mResources:Landroid/content/res/Resources;

    .line 25
    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mOwnerInfoString:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mDisplaySimCardInfo:Z

    .line 39
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mResources:Landroid/content/res/Resources;

    .line 37
    return-void
.end method


# virtual methods
.method public initCarrier(I)V
    .locals 3
    .param p1, "slot"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mRealCarrierObserver:[Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/keyguard/MiuiKeyguardBaseClock$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2, p1}, Lcom/android/keyguard/MiuiKeyguardBaseClock$1;-><init>(Lcom/android/keyguard/MiuiKeyguardBaseClock;Landroid/os/Handler;I)V

    aput-object v1, v0, p1

    .line 79
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mRealCarrierObserver:[Landroid/database/ContentObserver;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 57
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 108
    iget-boolean v2, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mDisplaySimCardInfo:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mRealCarrierObserver:[Landroid/database/ContentObserver;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mRealCarrierObserver:[Landroid/database/ContentObserver;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mPhoneCount:I

    if-ge v0, v2, :cond_0

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_bar_real_carrier"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 111
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mRealCarrierObserver:[Landroid/database/ContentObserver;

    aget-object v3, v3, v0

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "i":I
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 107
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mRealCarrierObserver:[Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mRealCarrierObserver:[Landroid/database/ContentObserver;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mRealCarrierObserver:[Landroid/database/ContentObserver;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "i":I
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 119
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 46
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 48
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mPhoneCount:I

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mDisplaySimCardInfo:Z

    .line 51
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mDisplaySimCardInfo:Z

    if-eqz v0, :cond_0

    .line 52
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mPhoneCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mRealCarrier:[Ljava/lang/String;

    .line 53
    iget v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mPhoneCount:I

    new-array v0, v0, [Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mRealCarrierObserver:[Landroid/database/ContentObserver;

    .line 44
    :cond_0
    return-void
.end method

.method public updateSimCardInfo()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method
