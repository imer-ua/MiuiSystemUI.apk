.class Lcom/android/keyguard/fod/MiuiGxzwIconView$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "MiuiGxzwIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fod/MiuiGxzwIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/fod/MiuiGxzwIconView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fod/MiuiGxzwIconView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/fod/MiuiGxzwIconView;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView$4;->this$0:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintAcquired()V
    .locals 2

    .prologue
    .line 624
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAcquired()V

    .line 626
    const-string/jumbo v0, "MiuiGxzwViewIcon"

    const-string/jumbo v1, "onFingerprintAcquired"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-void
.end method

.method public onFingerprintAuthFailed()V
    .locals 2

    .prologue
    .line 632
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAuthFailed()V

    .line 634
    const-string/jumbo v0, "MiuiGxzwViewIcon"

    const-string/jumbo v1, "onFingerprintAuthFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView$4;->this$0:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->-get2(Lcom/android/keyguard/fod/MiuiGxzwIconView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView$4;->this$0:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->-get7(Lcom/android/keyguard/fod/MiuiGxzwIconView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView$4;->this$0:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->-get4(Lcom/android/keyguard/fod/MiuiGxzwIconView;)Lcom/android/keyguard/fod/MiuiGxzwAnimView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startFalseAnim()V

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView$4;->this$0:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->-set0(Lcom/android/keyguard/fod/MiuiGxzwIconView;Z)Z

    .line 631
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 644
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAuthenticated(I)V

    .line 646
    const-string/jumbo v1, "MiuiGxzwViewIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFingerprintAuthenticated: userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView$4;->this$0:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->-set0(Lcom/android/keyguard/fod/MiuiGxzwIconView;Z)Z

    .line 651
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView$4;->this$0:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-static {v1}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->-get3(Lcom/android/keyguard/fod/MiuiGxzwIconView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasOwnerUserAuthenticatedSinceBoot()Z

    move-result v0

    .line 652
    .local v0, "authenticatedSinceBoot":Z
    if-nez v0, :cond_1

    .line 653
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView$4;->this$0:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-static {v1}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->-get1(Lcom/android/keyguard/fod/MiuiGxzwIconView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 655
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView$4;->this$0:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-static {v1}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->-get5(Lcom/android/keyguard/fod/MiuiGxzwIconView;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 658
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView$4;->this$0:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-static {v1}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->-wrap2(Lcom/android/keyguard/fod/MiuiGxzwIconView;)V

    .line 643
    :cond_1
    return-void
.end method

.method public onFingerprintError(ILjava/lang/String;)V
    .locals 4
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 672
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintError(ILjava/lang/String;)V

    .line 674
    const-string/jumbo v0, "MiuiGxzwViewIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFingerprintError: msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", errString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 678
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView$4;->this$0:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->-get1(Lcom/android/keyguard/fod/MiuiGxzwIconView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView$4;->this$0:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->-get0(Lcom/android/keyguard/fod/MiuiGxzwIconView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView$4;->this$0:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->-get5(Lcom/android/keyguard/fod/MiuiGxzwIconView;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 682
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView$4;->this$0:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->-wrap2(Lcom/android/keyguard/fod/MiuiGxzwIconView;)V

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView$4;->this$0:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->-set1(Lcom/android/keyguard/fod/MiuiGxzwIconView;Z)Z

    .line 685
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView$4;->this$0:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->-set0(Lcom/android/keyguard/fod/MiuiGxzwIconView;Z)Z

    .line 671
    :cond_2
    return-void
.end method

.method public onFingerprintHelp(ILjava/lang/String;)V
    .locals 3
    .param p1, "msgId"    # I
    .param p2, "helpString"    # Ljava/lang/String;

    .prologue
    .line 664
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintHelp(ILjava/lang/String;)V

    .line 666
    const-string/jumbo v0, "MiuiGxzwViewIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFingerprintHelp: msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", helpString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    return-void
.end method

.method public onFingerprintRunningStateChanged(Z)V
    .locals 3
    .param p1, "running"    # Z

    .prologue
    .line 691
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintRunningStateChanged(Z)V

    .line 693
    const-string/jumbo v0, "MiuiGxzwViewIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFingerprintRunningStateChanged: running = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    if-eqz p1, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwIconView$4;->this$0:Lcom/android/keyguard/fod/MiuiGxzwIconView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->-set1(Lcom/android/keyguard/fod/MiuiGxzwIconView;Z)Z

    .line 690
    :cond_0
    return-void
.end method
