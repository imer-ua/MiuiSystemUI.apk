.class public Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BaseKeyguardCallback"
.end annotation


# instance fields
.field private final FINGERPRINT_ERROR_LOCKOUT_PERMANENT_FOR_O:I

.field private mFingerprintAuthUserId:I

.field private mFingerprintErrorMsgId:I

.field private mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

.field private mLastFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 706
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->FINGERPRINT_ERROR_LOCKOUT_PERMANENT_FOR_O:I

    .line 479
    return-void
.end method

.method private handleEnterArrowAnimation()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 645
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 647
    const/high16 v6, 0x40000000    # 2.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    .line 645
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 649
    .local v0, "fromBottom":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x10a0000

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    .line 651
    .local v9, "fadeIn":Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 653
    .local v10, "upArrowEnterAnimationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 654
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 655
    const-wide/16 v2, 0x1f4

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 656
    const-wide/16 v2, 0x1e

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 658
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get12(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 660
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get12(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 661
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x64

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 644
    return-void
.end method

.method private handleFaceUnlockFailed()V
    .locals 5

    .prologue
    .line 582
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 583
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 582
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprint()Z

    move-result v0

    .line 585
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get9(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 586
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x9100427

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 588
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90c010f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 585
    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerMessage(Ljava/lang/String;I)V

    .line 581
    return-void

    .line 582
    :cond_0
    const/4 v0, 0x0

    .local v0, "unlockWithFingerprint":Z
    goto :goto_0

    .line 587
    .end local v0    # "unlockWithFingerprint":Z
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x9100428

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private handleFingerprintStateChanged()V
    .locals 7

    .prologue
    const v5, 0x91003d1

    const v6, 0x91003cf

    .line 711
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 716
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mLastFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 717
    return-void

    .line 720
    :cond_0
    const-string/jumbo v2, ""

    .line 721
    .local v2, "title":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 723
    .local v1, "message":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    sget-object v4, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->FAILED:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    if-ne v3, v4, :cond_4

    .line 724
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 725
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x91003d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 750
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTextColor()I

    move-result v0

    .line 755
    .local v0, "errorColor":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get9(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v3

    .line 756
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x90c010f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 755
    invoke-virtual {v3, v2, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 758
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    sget-object v4, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->ERROR:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    if-ne v3, v4, :cond_2

    .line 759
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mLastFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    sget-object v4, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->ERROR:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    if-eq v3, v4, :cond_2

    .line 760
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get9(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v3

    .line 758
    if-eqz v3, :cond_2

    .line 761
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get9(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->applyHintAnimation(J)V

    .line 765
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    sget-object v4, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->FAILED:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    if-ne v3, v4, :cond_3

    .line 766
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v3

    .line 765
    if-eqz v3, :cond_3

    .line 767
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 768
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;I)V

    .line 771
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    .line 774
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set4(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;

    .line 775
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mLastFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 710
    return-void

    .line 726
    .end local v0    # "errorColor":I
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    sget-object v4, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->ERROR:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    if-ne v3, v4, :cond_5

    .line 727
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 728
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x91003d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 729
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFingerprintErrorMsgId:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 730
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x91003d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 732
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    sget-object v4, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->SUCCEEDED:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    if-ne v3, v4, :cond_8

    .line 733
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFingerprintAuthUserId:I

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 734
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGreenKidActive(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 735
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x91003de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 736
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardUtils;->isPhoneCalling(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 737
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x91003dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 738
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v3

    .line 739
    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFingerprintAuthUserId:I

    .line 738
    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 740
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x91003e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 741
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x91003e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 744
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mLastFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    sget-object v4, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->ERROR:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    if-ne v3, v4, :cond_1

    .line 745
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    sget-object v4, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->RESET:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    if-ne v3, v4, :cond_1

    .line 746
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 747
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x91003d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private showChargingTransientIndication()V
    .locals 3

    .prologue
    .line 520
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback$1;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;)V

    .line 534
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 520
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 519
    return-void
.end method


# virtual methods
.method public onFaceAuthFailed(Z)V
    .locals 0
    .param p1, "hasFace"    # Z

    .prologue
    .line 571
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFaceAuthFailed(Z)V

    .line 572
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->handleFaceUnlockFailed()V

    .line 570
    return-void
.end method

.method public onFaceHelp(Ljava/lang/String;)V
    .locals 6
    .param p1, "helpString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 554
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    return-void

    .line 557
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTextColor()I

    move-result v0

    .line 558
    .local v0, "color":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get9(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    .line 559
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x90c010f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 558
    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerMessage(Ljava/lang/String;I)V

    .line 560
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 561
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v1

    .line 560
    if-eqz v1, :cond_2

    .line 562
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;I)V

    .line 563
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 564
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 565
    const-wide/16 v4, 0x514

    .line 564
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 553
    :cond_2
    return-void
.end method

.method public onFaceLocked()V
    .locals 0

    .prologue
    .line 577
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFaceLocked()V

    .line 578
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->handleFaceUnlockFailed()V

    .line 576
    return-void
.end method

.method public onFaceStart()V
    .locals 3

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get9(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    const-string/jumbo v1, " "

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerMessage(Ljava/lang/String;I)V

    .line 592
    return-void
.end method

.method public onFingerprintAuthFailed()V
    .locals 1

    .prologue
    .line 691
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAuthFailed()V

    .line 692
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->FAILED:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 693
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->handleFingerprintStateChanged()V

    .line 690
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 683
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAuthenticated(I)V

    .line 684
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->SUCCEEDED:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 685
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFingerprintAuthUserId:I

    .line 686
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->handleFingerprintStateChanged()V

    .line 682
    return-void
.end method

.method public onFingerprintError(ILjava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 620
    :cond_0
    return-void

    .line 622
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFingerprintErrorMsgId:I

    .line 623
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->ERROR:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 624
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->handleFingerprintStateChanged()V

    .line 617
    return-void
.end method

.method public onFingerprintHelp(ILjava/lang/String;)V
    .locals 6
    .param p1, "msgId"    # I
    .param p2, "helpString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    .line 598
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 599
    return-void

    .line 601
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTextColor()I

    move-result v0

    .line 602
    .local v0, "errorColor":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get9(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 603
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 604
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get9(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    .line 605
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x90c010f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 604
    invoke-virtual {v1, p2, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerMessage(Ljava/lang/String;I)V

    .line 597
    :cond_1
    :goto_0
    return-void

    .line 607
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    if-nez v1, :cond_3

    .line 608
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v1

    .line 607
    if-eqz v1, :cond_1

    .line 609
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v1, p2, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;I)V

    .line 610
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 611
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 612
    const-wide/16 v4, 0x514

    .line 611
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public onFingerprintLockoutReset()V
    .locals 1

    .prologue
    .line 698
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintLockoutReset()V

    .line 699
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->RESET:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 700
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->handleFingerprintStateChanged()V

    .line 697
    return-void
.end method

.method public onFingerprintRunningStateChanged(Z)V
    .locals 2
    .param p1, "running"    # Z

    .prologue
    .line 676
    if-eqz p1, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set4(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;

    .line 675
    :cond_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1
    .param p1, "bouncer"    # Z

    .prologue
    .line 548
    if-eqz p1, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 547
    :cond_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 539
    if-eqz p1, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap5(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 538
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    goto :goto_0
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 7
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x0

    .line 486
    const-string/jumbo v3, "is_pad"

    invoke-static {v3, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 487
    return-void

    .line 490
    :cond_0
    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    .line 491
    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    const/4 v0, 0x1

    .line 492
    .local v0, "isChargingOrFull":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v1

    .line 493
    .local v1, "wasPluggedIn":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v4

    if-eqz v4, :cond_6

    .end local v0    # "isChargingOrFull":Z
    :goto_1
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set6(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z

    .line 494
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set5(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z

    .line 495
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget v4, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set3(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I

    .line 496
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get8(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get3(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->getChargingSpeed(II)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set2(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I

    .line 497
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget v4, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set0(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I

    .line 498
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_7

    .line 505
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    .line 506
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set7(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z

    .line 507
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 509
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 510
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 511
    if-nez v1, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 512
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->showChargingTransientIndication()V

    .line 485
    :cond_3
    :goto_3
    return-void

    .line 490
    .end local v1    # "wasPluggedIn":Z
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "isChargingOrFull":Z
    goto :goto_0

    .line 491
    .end local v0    # "isChargingOrFull":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "isChargingOrFull":Z
    goto :goto_0

    .restart local v1    # "wasPluggedIn":Z
    :cond_6
    move v0, v2

    .line 493
    goto :goto_1

    .line 499
    .end local v0    # "isChargingOrFull":Z
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 501
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get10(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    move-result-object v2

    .line 502
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x91003ea

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 501
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get10(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextColor(I)V

    .line 504
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 513
    :cond_8
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 514
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    goto :goto_3
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 666
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff()V

    .line 667
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 668
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get13(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set8(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;

    .line 670
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 665
    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 629
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get5(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTextColor()I

    move-result v0

    .line 631
    .local v0, "errorColor":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get5(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;I)V

    .line 633
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    .line 634
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set4(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;

    .line 637
    .end local v0    # "errorColor":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x91003c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set8(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;

    .line 639
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get15(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 628
    :cond_1
    :goto_0
    return-void

    .line 639
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get11(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 640
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->handleEnterArrowAnimation()V

    goto :goto_0
.end method

.method public onUserUnlocked()V
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get15(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 779
    :cond_0
    return-void
.end method
