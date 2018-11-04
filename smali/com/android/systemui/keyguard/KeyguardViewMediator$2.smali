.class Lcom/android/systemui/keyguard/KeyguardViewMediator$2;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/keyguard/ViewMediatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBouncerPromptReason()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 746
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 747
    .local v1, "currentUser":I
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get22(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/app/trust/TrustManager;

    move-result-object v7

    invoke-static {v7, v1}, Landroid/app/trust/TrustManagerCompat;->isTrustUsuallyManaged(Landroid/app/trust/TrustManager;I)Z

    move-result v6

    .line 748
    .local v6, "trust":Z
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get25(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v3

    .line 749
    .local v3, "fingerprint":Z
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get25(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFaceUnlock()Z

    move-result v2

    .line 750
    .local v2, "faceUnlock":Z
    if-nez v6, :cond_1

    if-nez v3, :cond_1

    move v0, v2

    .line 752
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get25(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v5

    .line 753
    .local v5, "strongAuthTracker":Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
    invoke-virtual {v5, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v4

    .line 755
    .local v4, "strongAuth":I
    if-eqz v0, :cond_0

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 757
    :cond_0
    if-eqz v0, :cond_3

    sget v7, Lcom/android/systemui/keyguard/KeyguardViewMediator;->STRONG_AUTH_REQUIRED_AFTER_TIMEOUT:I

    and-int/2addr v7, v4

    if-eqz v7, :cond_3

    .line 758
    const/4 v7, 0x2

    return v7

    .line 750
    .end local v4    # "strongAuth":I
    .end local v5    # "strongAuthTracker":Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
    :cond_1
    const/4 v0, 0x1

    .local v0, "any":Z
    goto :goto_0

    .line 756
    .end local v0    # "any":Z
    .restart local v4    # "strongAuth":I
    .restart local v5    # "strongAuthTracker":Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
    :cond_2
    const/4 v7, 0x1

    return v7

    .line 759
    :cond_3
    if-eqz v0, :cond_4

    and-int/lit8 v7, v4, 0x2

    if-eqz v7, :cond_4

    .line 760
    const/4 v7, 0x3

    return v7

    .line 761
    :cond_4
    if-eqz v6, :cond_5

    and-int/lit8 v7, v4, 0x4

    if-eqz v7, :cond_5

    .line 762
    const/4 v7, 0x4

    return v7

    .line 763
    :cond_5
    if-eqz v0, :cond_6

    and-int/lit8 v7, v4, 0x8

    if-eqz v7, :cond_6

    .line 764
    const/4 v7, 0x5

    return v7

    .line 766
    :cond_6
    return v8
.end method

.method public keyguardDone(ZI)V
    .locals 1
    .param p1, "strongAuth"    # Z
    .param p2, "targetUserId"    # I

    .prologue
    .line 652
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 653
    return-void

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap30(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 657
    if-eqz p1, :cond_1

    .line 658
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get25(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSuccessfulStrongAuthUnlockAttempt()V

    .line 651
    :cond_1
    return-void
.end method

.method public keyguardDoneDrawing()V
    .locals 2

    .prologue
    .line 664
    const-string/jumbo v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardDoneDrawing"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get8(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 666
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 663
    return-void
.end method

.method public keyguardDonePending(ZI)V
    .locals 4
    .param p1, "strongAuth"    # Z
    .param p2, "targetUserId"    # I

    .prologue
    const/4 v1, 0x1

    .line 676
    const-string/jumbo v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardDonePending"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 677
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 678
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 679
    return-void

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-set3(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 683
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-set0(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 684
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-set1(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 685
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get21(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get9(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->startPreHideAnimation(Ljava/lang/Runnable;)V

    .line 686
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get8(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    .line 687
    const-wide/16 v2, 0x3e8

    .line 686
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 688
    if-eqz p1, :cond_1

    .line 689
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get25(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSuccessfulStrongAuthUnlockAttempt()V

    .line 691
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 675
    return-void
.end method

.method public keyguardGone()V
    .locals 1

    .prologue
    .line 696
    const-string/jumbo v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardGone"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get11(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->hide()V

    .line 698
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 695
    return-void
.end method

.method public onBouncerVisiblityChanged(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 734
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v1

    .line 735
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap3(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 733
    return-void

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public readyForKeyguardDone()V
    .locals 8

    .prologue
    .line 703
    const-string/jumbo v0, "KeyguardViewMediator.mViewMediatorCallback#readyForKeyguardDone"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get12(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-set3(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 706
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap30(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 709
    :cond_0
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isScreenTurnOnDelayed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get8(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$2$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$2$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$2;)V

    .line 716
    const-wide/16 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->sStageInFaceUnlockTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x32

    sub-long v4, v6, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 710
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 719
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 702
    return-void
.end method

.method public resetKeyguard()V
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap26(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 723
    return-void
.end method

.method public setNeedsInput(Z)V
    .locals 1
    .param p1, "needsInput"    # Z

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get21(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setNeedsInput(Z)V

    .line 670
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 646
    return-void
.end method
