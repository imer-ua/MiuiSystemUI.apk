.class Lcom/android/keyguard/charge/MiuiWirelessChargeController$4;
.super Landroid/content/BroadcastReceiver;
.source "MiuiWirelessChargeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/charge/MiuiWirelessChargeController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$4;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 84
    const-string/jumbo v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 85
    const-string/jumbo v6, "status"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 86
    .local v1, "status":I
    const-string/jumbo v6, "plugged"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 87
    .local v3, "plugged":I
    const-string/jumbo v6, "level"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 88
    .local v2, "level":I
    const-string/jumbo v6, "health"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 90
    .local v4, "health":I
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIIIIII)V

    .line 92
    .local v0, "batteryStatus":Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;
    iget-object v5, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$4;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeController;

    invoke-static {v5, v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->-wrap0(Lcom/android/keyguard/charge/MiuiWirelessChargeController;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 83
    .end local v0    # "batteryStatus":Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;
    .end local v1    # "status":I
    .end local v2    # "level":I
    .end local v3    # "plugged":I
    .end local v4    # "health":I
    :cond_0
    return-void
.end method
