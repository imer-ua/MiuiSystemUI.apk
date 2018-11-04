.class public Lcom/android/systemui/timer/Timer$Main;
.super Lcom/android/systemui/timer/Timer;
.source "Timer$Main.java"


# instance fields
.field public isDisabledBluetooth:Z

.field public isDisabledLastLocation:I

.field public isDisabledMobileData:Z

.field public isDisabledWifi:Z

.field public isDisabledWifiHotspot:Z

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field mRunnable_Bluetooth:Ljava/lang/Runnable;

.field mRunnable_Location:Ljava/lang/Runnable;

.field mRunnable_MobileData:Ljava/lang/Runnable;

.field mRunnable_WiFi:Ljava/lang/Runnable;

.field mRunnable_WiFiHotspot:Ljava/lang/Runnable;

.field mTimerReceiver:Landroid/content/BroadcastReceiver;

.field mTimerReceiverInternal:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/timer/Timer;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/systemui/timer/Timer$Main;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/android/systemui/timer/Timer$Main;->isDisabledBluetooth:Z

    iput-boolean v1, p0, Lcom/android/systemui/timer/Timer$Main;->isDisabledMobileData:Z

    iput-boolean v1, p0, Lcom/android/systemui/timer/Timer$Main;->isDisabledWifi:Z

    iput-boolean v1, p0, Lcom/android/systemui/timer/Timer$Main;->isDisabledWifiHotspot:Z

    iput v1, p0, Lcom/android/systemui/timer/Timer$Main;->isDisabledLastLocation:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/timer/Timer$Main;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/timer/Timer$Receiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/timer/Timer$Receiver;-><init>(Lcom/android/systemui/timer/Timer$Main;)V

    iput-object v0, p0, Lcom/android/systemui/timer/Timer$Main;->mTimerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/timer/Timer$Receiver$Internal;

    invoke-direct {v0, p0}, Lcom/android/systemui/timer/Timer$Receiver$Internal;-><init>(Lcom/android/systemui/timer/Timer$Main;)V

    iput-object v0, p0, Lcom/android/systemui/timer/Timer$Main;->mTimerReceiverInternal:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/timer/Timer$MobileData;

    invoke-direct {v0, p0}, Lcom/android/systemui/timer/Timer$MobileData;-><init>(Lcom/android/systemui/timer/Timer$Main;)V

    iput-object v0, p0, Lcom/android/systemui/timer/Timer$Main;->mRunnable_MobileData:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/timer/Timer$WiFi;

    invoke-direct {v0, p0}, Lcom/android/systemui/timer/Timer$WiFi;-><init>(Lcom/android/systemui/timer/Timer$Main;)V

    iput-object v0, p0, Lcom/android/systemui/timer/Timer$Main;->mRunnable_WiFi:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/timer/Timer$WiFiHotspot;

    invoke-direct {v0, p0}, Lcom/android/systemui/timer/Timer$WiFiHotspot;-><init>(Lcom/android/systemui/timer/Timer$Main;)V

    iput-object v0, p0, Lcom/android/systemui/timer/Timer$Main;->mRunnable_WiFiHotspot:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/timer/Timer$Bluetooth;

    invoke-direct {v0, p0}, Lcom/android/systemui/timer/Timer$Bluetooth;-><init>(Lcom/android/systemui/timer/Timer$Main;)V

    iput-object v0, p0, Lcom/android/systemui/timer/Timer$Main;->mRunnable_Bluetooth:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/timer/Timer$Location;

    invoke-direct {v0, p0}, Lcom/android/systemui/timer/Timer$Location;-><init>(Lcom/android/systemui/timer/Timer$Main;)V

    iput-object v0, p0, Lcom/android/systemui/timer/Timer$Main;->mRunnable_Location:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/timer/Timer$Main;->registerTimerReceiver(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/timer/Timer$Main;->registerTimerInternalReceiver(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public handleBluetooth()V
    .locals 8

    .prologue
    const/4 v5, 0x4

    iget-object v7, p0, Lcom/android/systemui/timer/Timer$Main;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/timer/Timer$Main;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/timer/Timer$Main;->mRunnable_Bluetooth:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0, v5}, Lcom/android/systemui/timer/Timer;->releaseTimerWakeLock(I)V

    const-string v2, "activitykey"

    invoke-static {v2, v7}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "bluetoothkey"

    invoke-static {v2, v7}, Landroid/preference/MiuiCoreSettingsPreference;->gKT(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v2

    long-to-int v2, v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    int-to-long v2, v2

    invoke-super {p0}, Lcom/android/systemui/timer/Timer;->getTimerSmart()Z

    move-result v6

    invoke-super {p0}, Lcom/android/systemui/timer/Timer;->getBluetoothState()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v6, :cond_2

    invoke-super {p0, v5}, Lcom/android/systemui/timer/Timer;->acquireTimerWakeLock(I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz v6, :cond_2

    const-string v2, "smartreturnkey"

    invoke-static {v2, v7}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/timer/Timer$Main;->isDisabledBluetooth:Z

    if-eqz v4, :cond_2

    invoke-super {p0, v4}, Lcom/android/systemui/timer/Timer;->setBluetoothState(Z)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/timer/Timer$Main;->isDisabledBluetooth:Z

    goto :goto_0
.end method

.method public handleLocation()V
    .locals 8

    .prologue
    const/4 v5, 0x5

    iget-object v7, p0, Lcom/android/systemui/timer/Timer$Main;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/timer/Timer$Main;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/timer/Timer$Main;->mRunnable_Location:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0, v5}, Lcom/android/systemui/timer/Timer;->releaseTimerWakeLock(I)V

    const-string v2, "activitykey"

    invoke-static {v2, v7}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "locationkey"

    invoke-static {v2, v7}, Landroid/preference/MiuiCoreSettingsPreference;->gKT(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v2

    long-to-int v2, v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    int-to-long v2, v2

    invoke-super {p0}, Lcom/android/systemui/timer/Timer;->getTimerSmart()Z

    move-result v6

    invoke-super {p0}, Lcom/android/systemui/timer/Timer;->getLocationState()I

    move-result v4

    if-eqz v4, :cond_3

    if-nez v6, :cond_2

    invoke-super {p0, v5}, Lcom/android/systemui/timer/Timer;->acquireTimerWakeLock(I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz v6, :cond_2

    const-string v2, "smartreturnkey"

    invoke-static {v2, v7}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/android/systemui/timer/Timer$Main;->isDisabledLastLocation:I

    if-eqz v4, :cond_2

    invoke-super {p0, v4}, Lcom/android/systemui/timer/Timer;->setLocationState(I)V

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/systemui/timer/Timer$Main;->isDisabledLastLocation:I

    goto :goto_0
.end method

.method public handleMobileData()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/systemui/timer/Timer$Main;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/timer/Timer$Main;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/timer/Timer$Main;->mRunnable_MobileData:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0, v5}, Lcom/android/systemui/timer/Timer;->releaseTimerWakeLock(I)V

    const-string v2, "activitykey"

    invoke-static {v2, v7}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "mobiledatakey"

    invoke-static {v2, v7}, Landroid/preference/MiuiCoreSettingsPreference;->gKT(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v2

    long-to-int v2, v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    int-to-long v2, v2

    invoke-super {p0}, Lcom/android/systemui/timer/Timer;->getTimerSmart()Z

    move-result v6

    invoke-super {p0}, Lcom/android/systemui/timer/Timer;->getMobileDataState()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v6, :cond_2

    invoke-super {p0, v5}, Lcom/android/systemui/timer/Timer;->acquireTimerWakeLock(I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz v6, :cond_2

    const-string v2, "smartreturnkey"

    invoke-static {v2, v7}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/timer/Timer$Main;->isDisabledMobileData:Z

    if-eqz v4, :cond_2

    invoke-super {p0, v4}, Lcom/android/systemui/timer/Timer;->setMobileDataState(Z)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/timer/Timer$Main;->isDisabledMobileData:Z

    goto :goto_0
.end method

.method public handleWiFi()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    iget-object v7, p0, Lcom/android/systemui/timer/Timer$Main;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/timer/Timer$Main;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/timer/Timer$Main;->mRunnable_WiFi:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0, v5}, Lcom/android/systemui/timer/Timer;->releaseTimerWakeLock(I)V

    const-string v2, "activitykey"

    invoke-static {v2, v7}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "wifikey"

    invoke-static {v2, v7}, Landroid/preference/MiuiCoreSettingsPreference;->gKT(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v2

    long-to-int v2, v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    int-to-long v2, v2

    invoke-super {p0}, Lcom/android/systemui/timer/Timer;->getTimerSmart()Z

    move-result v6

    invoke-super {p0}, Lcom/android/systemui/timer/Timer;->getWifiState()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v6, :cond_2

    invoke-super {p0, v5}, Lcom/android/systemui/timer/Timer;->acquireTimerWakeLock(I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz v6, :cond_2

    const-string v2, "smartreturnkey"

    invoke-static {v2, v7}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/timer/Timer$Main;->isDisabledWifi:Z

    if-eqz v4, :cond_2

    invoke-super {p0, v4}, Lcom/android/systemui/timer/Timer;->setWifiState(Z)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/timer/Timer$Main;->isDisabledWifi:Z

    goto :goto_0
.end method

.method public handleWiFiHotspot()V
    .locals 8

    .prologue
    const/4 v5, 0x2

    iget-object v7, p0, Lcom/android/systemui/timer/Timer$Main;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/timer/Timer$Main;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/timer/Timer$Main;->mRunnable_WiFiHotspot:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0, v5}, Lcom/android/systemui/timer/Timer;->releaseTimerWakeLock(I)V

    const-string v2, "activitykey"

    invoke-static {v2, v7}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "wifihotspotkey"

    invoke-static {v2, v7}, Landroid/preference/MiuiCoreSettingsPreference;->gKT(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v2

    long-to-int v2, v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    int-to-long v2, v2

    invoke-super {p0}, Lcom/android/systemui/timer/Timer;->getTimerSmart()Z

    move-result v6

    invoke-super {p0}, Lcom/android/systemui/timer/Timer;->getWifiHotspotState()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v6, :cond_2

    invoke-super {p0, v5}, Lcom/android/systemui/timer/Timer;->acquireTimerWakeLock(I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz v6, :cond_2

    const-string v2, "smartreturnkey"

    invoke-static {v2, v7}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/timer/Timer$Main;->isDisabledWifiHotspot:Z

    if-eqz v4, :cond_2

    invoke-super {p0, v4}, Lcom/android/systemui/timer/Timer;->setWifiHotspotState(Z)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/timer/Timer$Main;->isDisabledWifiHotspot:Z

    goto :goto_0
.end method

.method public registerTimerInternalReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "my.settings.CHANGE_TIMER_ON_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "my.settings.CHANGE_TIMER_MOBILE_DATA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "my.settings.CHANGE_TIMER_WIFI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "my.settings.CHANGE_TIMER_WIFI_HOTSPOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "my.settings.CHANGE_TIMER_BLUETOOTH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "my.settings.CHANGE_TIMER_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/timer/Timer$Main;->mTimerReceiverInternal:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerTimerReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/timer/Timer$Main;->mTimerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
