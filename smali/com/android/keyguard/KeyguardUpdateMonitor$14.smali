.class Lcom/android/keyguard/KeyguardUpdateMonitor$14;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .locals 1
    .param p1, "acquireInfo"    # I

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap6(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    .line 1165
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 1161
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-static {v1, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap9(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V

    .line 1160
    return-void

    .line 1161
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onAuthenticationFailed()V
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap7(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 1143
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap10(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V

    .line 1155
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 3
    .param p1, "result"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .prologue
    .line 1149
    const-string/jumbo v0, "KeyguardUpdateMonitor#onAuthenticationSucceeded"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$14;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get2(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/keyguard/MiuiKeyguardUtils;->getAuthUserId(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap8(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    .line 1151
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1148
    return-void
.end method
