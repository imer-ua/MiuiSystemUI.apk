.class public Lcom/android/keyguard/MiuiBleUnlockHelper;
.super Ljava/lang/Object;
.source "MiuiBleUnlockHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/MiuiBleUnlockHelper$1;,
        Lcom/android/keyguard/MiuiBleUnlockHelper$2;,
        Lcom/android/keyguard/MiuiBleUnlockHelper$3;,
        Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;
    }
.end annotation


# instance fields
.field private mBleListener:Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;

.field private mContext:Landroid/content/Context;

.field private final mGlobalBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

.field private mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

.field private mStateChangeCallback:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/MiuiBleUnlockHelper;)Landroid/security/MiuiLockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/MiuiBleUnlockHelper;)Lmiui/bluetooth/ble/MiBleUnlockProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/MiuiBleUnlockHelper;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/MiuiBleUnlockHelper;)Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/MiuiBleUnlockHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->registerUnlockListener()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/MiuiBleUnlockHelper;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/MiuiBleUnlockHelper;->setBLEStatusBarIcon(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewMediator"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/android/keyguard/MiuiBleUnlockHelper$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MiuiBleUnlockHelper$1;-><init>(Lcom/android/keyguard/MiuiBleUnlockHelper;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mStateChangeCallback:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    .line 141
    new-instance v0, Lcom/android/keyguard/MiuiBleUnlockHelper$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MiuiBleUnlockHelper$2;-><init>(Lcom/android/keyguard/MiuiBleUnlockHelper;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mGlobalBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    new-instance v0, Lcom/android/keyguard/MiuiBleUnlockHelper$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MiuiBleUnlockHelper$3;-><init>(Lcom/android/keyguard/MiuiBleUnlockHelper;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mBleListener:Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;

    .line 40
    iput-object p1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 42
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-direct {v0, p1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 43
    new-instance v0, Lcom/android/keyguard/LockPatternUtilsWrapper;

    iget-object v1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-direct {v0, v1}, Lcom/android/keyguard/LockPatternUtilsWrapper;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    .line 44
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 45
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 46
    invoke-direct {p0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->registerBleUnlockReceiver()V

    .line 39
    return-void
.end method

.method private registerBleUnlockReceiver()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 50
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    .local v3, "globalBluetoothIntentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "com.miui.keyguard.bluetoothdeviceunlock"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string/jumbo v0, "com.miui.keyguard.bluetoothdeviceunlock.disable"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string/jumbo v0, "com.xiaomi.hm.health.ACTION_DEVICE_UNBIND_APPLICATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string/jumbo v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mGlobalBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 49
    return-void
.end method

.method private registerUnlockListener()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    iget-object v1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mBleListener:Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;

    invoke-virtual {v0, v1}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->registerUnlockListener(Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;)V

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->setBLEStatusBarIcon(I)V

    .line 126
    :cond_0
    return-void
.end method

.method private setBLEStatusBarIcon(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x0

    .line 179
    if-nez p1, :cond_0

    .line 180
    const v0, 0x9020066

    .line 186
    .local v0, "iconResId":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string/jumbo v2, "ble_unlock_mode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 177
    return-void

    .line 181
    .end local v0    # "iconResId":I
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 182
    const v0, 0x902006a

    .restart local v0    # "iconResId":I
    goto :goto_0

    .line 184
    .end local v0    # "iconResId":I
    :cond_1
    const v0, 0x9020068

    .restart local v0    # "iconResId":I
    goto :goto_0
.end method


# virtual methods
.method public connectBLEDevice(Ljava/lang/String;)V
    .locals 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-virtual {v1}, Lcom/android/keyguard/LockPatternUtilsWrapper;->isSecure()Z

    move-result v1

    .line 94
    if-eqz v1, :cond_0

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isOwnerUser()Z

    move-result v1

    .line 94
    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasOwnerUserAuthenticatedSinceBoot()Z

    move-result v1

    .line 94
    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v1}, Landroid/security/MiuiLockPatternUtils;->getBluetoothUnlockEnabled()Z

    move-result v1

    .line 94
    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v2, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;->FAILED:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setBLEUnlockState(Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;)V

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v1}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_2
    :goto_1
    new-instance v1, Lmiui/bluetooth/ble/MiBleUnlockProfile;

    iget-object v2, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mStateChangeCallback:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    invoke-direct {v1, v2, p1, v3}, Lmiui/bluetooth/ble/MiBleUnlockProfile;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V

    iput-object v1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    .line 110
    iget-object v1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v1}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->connect()V

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MiuiBleUnlockHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public disconnectBleDeviceIfNecessary()V
    .locals 3

    .prologue
    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->unregisterUnlockListener()V

    .line 118
    iget-object v1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v1}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->disconnect()V

    .line 119
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MiuiBleUnlockHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterUnlockListener()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->unregisterUnlockListener()V

    .line 136
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string/jumbo v1, "ble_unlock_mode"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;->FAILED:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setBLEUnlockState(Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;)V

    .line 133
    return-void
.end method

.method public verifyBLEDeviceRssi()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isHiding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isOwnerUser()Z

    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasOwnerUserAuthenticatedSinceBoot()Z

    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getBluetoothUnlockEnabled()Z

    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/LockPatternUtilsWrapper;->isSecure()Z

    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    if-eqz v0, :cond_2

    .line 69
    invoke-direct {p0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->registerUnlockListener()V

    goto :goto_0

    .line 71
    :cond_2
    const-string/jumbo v0, "MiuiBleUnlockHelper"

    const-string/jumbo v1, "connectBLEDevice..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->connectBLEDevice(Ljava/lang/String;)V

    goto :goto_0
.end method
