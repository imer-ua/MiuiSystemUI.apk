.class public Lcom/android/systemui/timer/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field public mIsCharging:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTimerWakeLockNumber:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/timer/Timer;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/android/systemui/timer/Timer;->mIsCharging:Z

    iput-object v1, p0, Lcom/android/systemui/timer/Timer;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/timer/Timer;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/systemui/timer/Timer;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/systemui/timer/Timer;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object v1, p0, Lcom/android/systemui/timer/Timer;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/timer/Timer;->mTimerWakeLockNumber:I

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/android/systemui/timer/Timer;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/android/systemui/timer/Timer;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_1
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/android/systemui/timer/Timer;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/android/systemui/timer/Timer;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    :cond_3
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_4

    iput-object v0, p0, Lcom/android/systemui/timer/Timer;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/systemui/timer/Timer;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v1, "Timer.WakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/timer/Timer;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_4
    return-void
.end method


# virtual methods
.method public acquireTimerWakeLock(I)V
    .locals 2
    .param p1, "what"    # I

    .prologue
    iget-object v0, p0, Lcom/android/systemui/timer/Timer;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/timer/Timer;->mTimerWakeLockNumber:I

    iget-object v0, p0, Lcom/android/systemui/timer/Timer;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method public getBluetoothState()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/timer/Timer;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/timer/Timer;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocationState()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/timer/Timer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getMobileDataState()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/timer/Timer;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimerSmart()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/systemui/timer/Timer;->mContext:Landroid/content/Context;

    const-string v1, "smartpowerkey"

    invoke-static {v0, v1}, Landroid/preference/MiuiCoreSettingsPreference;->getKeyParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/timer/Timer;->mIsCharging:Z

    if-nez v2, :cond_2

    :goto_0
    const-string v1, "smartscreenkey"

    invoke-static {v0, v1}, Landroid/preference/MiuiCoreSettingsPreference;->getKeyParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/timer/Timer;->isScreenOn()I

    move-result v1

    and-int/2addr v2, v1

    :cond_2
    return v2
.end method

.method public getWifiHotspotState()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/timer/Timer;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWifiState()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/timer/Timer;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenOn()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/timer/Timer;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseTimerWakeLock(I)V
    .locals 2
    .param p1, "what"    # I

    .prologue
    iget v1, p0, Lcom/android/systemui/timer/Timer;->mTimerWakeLockNumber:I

    if-ne v1, p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/timer/Timer;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/timer/Timer;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/timer/Timer;->mTimerWakeLockNumber:I

    :cond_1
    return-void
.end method

.method public setBluetoothState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/systemui/timer/Timer;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0
.end method

.method public setLocationState(I)V
    .locals 4
    .param p1, "locationstate"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/systemui/timer/Timer;->getLocationState()I

    move-result v0

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_1

    move v2, p1

    const/4 v2, 0x1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/timer/Timer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setMobileDataState(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/systemui/timer/Timer;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/timer/Timer;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setWifiHotspotState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/systemui/timer/Timer;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-eq p1, v1, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_0
    return-void
.end method

.method public setWifiState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/systemui/timer/Timer;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eq p1, v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    return-void
.end method
