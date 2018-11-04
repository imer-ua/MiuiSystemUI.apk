.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBottomAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 633
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 616
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 629
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 9
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    const/4 v8, 0x0

    .line 656
    const-string/jumbo v6, "is_pad"

    invoke-static {v6, v8}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 657
    return-void

    .line 660
    :cond_0
    iget v6, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    .line 661
    const/4 v7, 0x2

    .line 660
    if-eq v6, v7, :cond_4

    .line 662
    iget v6, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_5

    const/4 v1, 0x1

    .line 664
    .local v1, "isChargingOrFull":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v6

    if-eqz v6, :cond_6

    move v3, v1

    .line 665
    :goto_1
    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    .line 666
    .local v0, "batteryLevel":I
    iget v5, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->voltage:I

    .line 667
    .local v5, "voltage":I
    iget v4, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->temperature:I

    .line 668
    .local v4, "temperature":I
    iget v2, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    .line 669
    .local v2, "maxChargingWattage":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get4(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    move-result-object v6

    invoke-virtual {v6, v0, v8}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setChargingLevel(IZ)V

    .line 670
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get14(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)I

    move-result v6

    if-eq v4, v6, :cond_1

    .line 671
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get3(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get1(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->setChargingInfo(Ljava/lang/String;II)V

    .line 674
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get11(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v6

    if-ne v3, v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)I

    move-result v6

    if-eq v0, v6, :cond_7

    .line 676
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v6, v3, v0, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-wrap3(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;ZII)V

    .line 677
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v6, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-set2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;I)I

    .line 655
    :cond_3
    return-void

    .line 660
    .end local v0    # "batteryLevel":I
    .end local v1    # "isChargingOrFull":Z
    .end local v2    # "maxChargingWattage":I
    .end local v4    # "temperature":I
    .end local v5    # "voltage":I
    :cond_4
    const/4 v1, 0x1

    .restart local v1    # "isChargingOrFull":Z
    goto :goto_0

    .line 662
    .end local v1    # "isChargingOrFull":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "isChargingOrFull":Z
    goto :goto_0

    .line 664
    :cond_6
    const/4 v3, 0x0

    .local v3, "pluggedIn":Z
    goto :goto_1

    .line 675
    .end local v3    # "pluggedIn":Z
    .restart local v0    # "batteryLevel":I
    .restart local v2    # "maxChargingWattage":I
    .restart local v4    # "temperature":I
    .restart local v5    # "voltage":I
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get8(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)I

    move-result v6

    if-eq v2, v6, :cond_3

    goto :goto_2
.end method

.method public onRegionChanged()V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get10(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLeftView()Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->initLeftView()V

    .line 650
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-wrap1(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 624
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    .prologue
    .line 620
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    .prologue
    .line 612
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 637
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-wrap7(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 607
    return-void
.end method

.method public onUserUnlocked()V
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get10(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLeftView()Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->initLeftView()V

    .line 643
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get10(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLeftView()Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->uploadLeftItemData()V

    .line 644
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-set5(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Z)Z

    .line 645
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-wrap7(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 646
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordance()V

    .line 641
    return-void
.end method
