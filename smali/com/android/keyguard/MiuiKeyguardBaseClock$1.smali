.class Lcom/android/keyguard/MiuiKeyguardBaseClock$1;
.super Landroid/database/ContentObserver;
.source "MiuiKeyguardBaseClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MiuiKeyguardBaseClock;->initCarrier(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MiuiKeyguardBaseClock;

.field final synthetic val$slot:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiKeyguardBaseClock;Landroid/os/Handler;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/MiuiKeyguardBaseClock;
    .param p2, "$anonymous0"    # Landroid/os/Handler;
    .param p3, "val$slot"    # I

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock$1;->this$0:Lcom/android/keyguard/MiuiKeyguardBaseClock;

    iput p3, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock$1;->val$slot:I

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selChange"    # Z

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock$1;->val$slot:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    const-string/jumbo v0, ""

    .line 64
    .local v0, "carrier":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock$1;->this$0:Lcom/android/keyguard/MiuiKeyguardBaseClock;

    iget-object v1, v1, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_bar_custom_carrier"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock$1;->val$slot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {v1, v2, v4}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock$1;->this$0:Lcom/android/keyguard/MiuiKeyguardBaseClock;

    iget-object v1, v1, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_bar_real_carrier"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock$1;->val$slot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v1, v2, v4}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock$1;->this$0:Lcom/android/keyguard/MiuiKeyguardBaseClock;

    iget-object v1, v1, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mRealCarrier:[Ljava/lang/String;

    iget v2, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock$1;->val$slot:I

    aput-object v0, v1, v2

    .line 76
    .end local v0    # "carrier":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock$1;->this$0:Lcom/android/keyguard/MiuiKeyguardBaseClock;

    invoke-virtual {v1}, Lcom/android/keyguard/MiuiKeyguardBaseClock;->updateSimCardInfo()V

    .line 61
    return-void

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock$1;->this$0:Lcom/android/keyguard/MiuiKeyguardBaseClock;

    iget-object v1, v1, Lcom/android/keyguard/MiuiKeyguardBaseClock;->mRealCarrier:[Ljava/lang/String;

    iget v2, p0, Lcom/android/keyguard/MiuiKeyguardBaseClock$1;->val$slot:I

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    goto :goto_0
.end method
