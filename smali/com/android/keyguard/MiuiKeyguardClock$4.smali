.class Lcom/android/keyguard/MiuiKeyguardClock$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "MiuiKeyguardClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MiuiKeyguardClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MiuiKeyguardClock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiKeyguardClock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/MiuiKeyguardClock;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardClock$4;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 136
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock$4;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateHourFormat()V

    .line 127
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock$4;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateOwnerInfo()V

    .line 124
    :cond_0
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock$4;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-static {v0, p1}, Lcom/android/keyguard/MiuiKeyguardClock;->-wrap0(Lcom/android/keyguard/MiuiKeyguardClock;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 144
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock$4;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateOwnerInfo()V

    .line 140
    return-void
.end method
