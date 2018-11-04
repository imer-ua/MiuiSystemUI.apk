.class Lcom/android/systemui/timer/Timer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "Timer$Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/timer/Timer$Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/timer/Timer$Main;


# direct methods
.method constructor <init>(Lcom/android/systemui/timer/Timer$Main;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/systemui/timer/Timer$Receiver;->this$0:Lcom/android/systemui/timer/Timer$Main;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/timer/Timer$Receiver;->this$0:Lcom/android/systemui/timer/Timer$Main;

    invoke-virtual {v0}, Lcom/android/systemui/timer/Timer;->getCallState()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/timer/Timer$Main;->handleMobileData()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/timer/Timer$Main;->handleWiFi()V

    goto :goto_0

    :cond_2
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/timer/Timer$Main;->handleWiFiHotspot()V

    goto :goto_0

    :cond_3
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/timer/Timer$Main;->handleBluetooth()V

    goto :goto_0

    :cond_4
    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/android/systemui/timer/Timer$Main;->handleLocation()V

    goto :goto_0

    :cond_5
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/timer/Timer$Main;->handleMobileData()V

    invoke-virtual {v0}, Lcom/android/systemui/timer/Timer$Main;->handleWiFi()V

    invoke-virtual {v0}, Lcom/android/systemui/timer/Timer$Main;->handleWiFiHotspot()V

    invoke-virtual {v0}, Lcom/android/systemui/timer/Timer$Main;->handleBluetooth()V

    invoke-virtual {v0}, Lcom/android/systemui/timer/Timer$Main;->handleLocation()V

    goto :goto_0

    :cond_6
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "plugged"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_9

    :goto_2
    iput-boolean v2, v0, Lcom/android/systemui/timer/Timer;->mIsCharging:Z

    goto :goto_0

    :cond_9
    const/4 v2, 0x1

    goto :goto_2
.end method
