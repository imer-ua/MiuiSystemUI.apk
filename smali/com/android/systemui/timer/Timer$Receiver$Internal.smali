.class Lcom/android/systemui/timer/Timer$Receiver$Internal;
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
    iput-object p1, p0, Lcom/android/systemui/timer/Timer$Receiver$Internal;->this$0:Lcom/android/systemui/timer/Timer$Main;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/timer/Timer$Receiver$Internal;->this$0:Lcom/android/systemui/timer/Timer$Main;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v1, "my.settings.CHANGE_TIMER_ON_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/timer/Timer$Main;->handleMobileData()V

    invoke-virtual {v0}, Lcom/android/systemui/timer/Timer$Main;->handleWiFi()V

    invoke-virtual {v0}, Lcom/android/systemui/timer/Timer$Main;->handleWiFiHotspot()V

    invoke-virtual {v0}, Lcom/android/systemui/timer/Timer$Main;->handleBluetooth()V

    invoke-virtual {v0}, Lcom/android/systemui/timer/Timer$Main;->handleLocation()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "my.settings.CHANGE_TIMER_MOBILE_DATA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/timer/Timer$Main;->handleMobileData()V

    goto :goto_0

    :cond_2
    const-string v1, "my.settings.CHANGE_TIMER_WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/timer/Timer$Main;->handleWiFi()V

    goto :goto_0

    :cond_3
    const-string v1, "my.settings.CHANGE_TIMER_WIFI_HOTSPOT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/timer/Timer$Main;->handleWiFiHotspot()V

    goto :goto_0

    :cond_4
    const-string v1, "my.settings.CHANGE_TIMER_BLUETOOTH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/android/systemui/timer/Timer$Main;->handleBluetooth()V

    goto :goto_0

    :cond_5
    const-string v1, "my.settings.CHANGE_TIMER_LOCATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/timer/Timer$Main;->handleLocation()V

    goto :goto_0
.end method
