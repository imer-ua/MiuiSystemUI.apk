.class Lcom/android/systemui/statusbar/phone/StatusBar$45;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->makeStatusBarView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 1666
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryLevelChanged(IZZ)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set0(Lcom/android/systemui/statusbar/phone/StatusBar;I)I

    .line 1686
    return-void
.end method

.method public onBatteryStyleChanged(I)V
    .locals 0
    .param p1, "batteryStyle"    # I

    .prologue
    .line 1691
    return-void
.end method

.method public onExtremePowerSaveChanged(Z)V
    .locals 2
    .param p1, "isExtremePowerSave"    # Z

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get6(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 1679
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get9(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1680
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get9(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    move-result-object v1

    if-nez p1, :cond_1

    .line 1681
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get2(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    .line 1680
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->firePowerSaveChanged(Z)V

    .line 1677
    :cond_0
    return-void

    .line 1680
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPowerSaveChanged(Z)V
    .locals 2
    .param p1, "isPowerSave"    # Z

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get6(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 1670
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get9(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get9(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    move-result-object v1

    if-nez p1, :cond_1

    .line 1672
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get2(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isExtremePowerSave()Z

    move-result v0

    .line 1671
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->firePowerSaveChanged(Z)V

    .line 1668
    :cond_0
    return-void

    .line 1671
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
