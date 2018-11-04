.class public Lcom/android/keyguard/charge/MiuiWirelessChargeController;
.super Ljava/lang/Object;
.source "MiuiWirelessChargeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/charge/MiuiWirelessChargeController$1;,
        Lcom/android/keyguard/charge/MiuiWirelessChargeController$2;,
        Lcom/android/keyguard/charge/MiuiWirelessChargeController$3;,
        Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;
    }
.end annotation


# instance fields
.field private mBatteryChargingView:Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;

.field private mContext:Landroid/content/Context;

.field private final mDismissRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mJustWirelessCharging:Z

.field private mMiuiWirelessChargeSlowlyView:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

.field private mNeedRepositionDevice:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mScreenOffRunnable:Ljava/lang/Runnable;

.field private mScreenOn:Z

.field private mScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mShowSlowlyRunnable:Ljava/lang/Runnable;

.field private mStartingDissmissWirelessAlphaAnim:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWirelessChargeAnimator:Landroid/animation/ValueAnimator;

.field private mWirelessChargeCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mWirelessChargeView:Landroid/view/View;

.field private mWirelessCharging:Z

.field private mWirelessOnline:Z


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mBatteryChargingView:Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mShowSlowlyRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mDismissRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mJustWirelessCharging:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mMiuiWirelessChargeSlowlyView:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mNeedRepositionDevice:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mScreenOffRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mScreenOn:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/charge/MiuiWirelessChargeController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mJustWirelessCharging:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/charge/MiuiWirelessChargeController;Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;)Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mMiuiWirelessChargeSlowlyView:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/charge/MiuiWirelessChargeController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mStartingDissmissWirelessAlphaAnim:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/keyguard/charge/MiuiWirelessChargeController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/keyguard/charge/MiuiWirelessChargeController;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/charge/MiuiWirelessChargeController;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .param p1, "batteryStatus"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->checkBatteryStatus(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->checkIfShowWirelessChargeSlowly()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/charge/MiuiWirelessChargeController;Z)V
    .locals 0
    .param p1, "needRepositionDevice"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->setNeedRepositionDevice(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->showWirelessChargeSlowly()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->startDismissWirelessAlphaAnim()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessOnline:Z

    .line 59
    iput-boolean v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessCharging:Z

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeCallbackList:Ljava/util/List;

    .line 66
    iput-boolean v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mNeedRepositionDevice:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mScreenOn:Z

    .line 69
    iput-boolean v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mStartingDissmissWirelessAlphaAnim:Z

    .line 70
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mHandler:Landroid/os/Handler;

    .line 201
    new-instance v1, Lcom/android/keyguard/charge/MiuiWirelessChargeController$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$1;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mDismissRunnable:Ljava/lang/Runnable;

    .line 218
    new-instance v1, Lcom/android/keyguard/charge/MiuiWirelessChargeController$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$2;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mScreenOffRunnable:Ljava/lang/Runnable;

    .line 397
    new-instance v1, Lcom/android/keyguard/charge/MiuiWirelessChargeController$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$3;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mShowSlowlyRunnable:Ljava/lang/Runnable;

    .line 75
    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mContext:Landroid/content/Context;

    .line 76
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWindowManager:Landroid/view/WindowManager;

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 81
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/keyguard/charge/MiuiWirelessChargeController$4;

    invoke-direct {v2, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$4;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mPowerManager:Landroid/os/PowerManager;

    .line 98
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "wireless_charge"

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 100
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/systemui/recents/events/RecentsEventBus;->register(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method private checkBatteryStatus(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 7
    .param p1, "batteryStatus"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    const/4 v6, 0x2

    .line 129
    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    .line 130
    .local v0, "plugged":I
    iget v1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    .line 131
    .local v1, "status":I
    const/4 v4, 0x4

    if-ne v0, v4, :cond_5

    const/4 v3, 0x1

    .line 133
    .local v3, "wirelessOnline":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessOnline:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mJustWirelessCharging:Z

    if-eqz v4, :cond_6

    .line 137
    :cond_0
    :goto_1
    if-eqz v3, :cond_7

    if-ne v1, v6, :cond_7

    const/4 v2, 0x1

    .line 139
    .local v2, "wirelessCharging":Z
    :goto_2
    iget-boolean v4, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessOnline:Z

    if-eqz v4, :cond_1

    if-eqz v3, :cond_8

    .line 148
    :cond_1
    :goto_3
    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    if-ne v0, v6, :cond_3

    .line 149
    :cond_2
    if-ne v1, v6, :cond_3

    .line 150
    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mShowSlowlyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 151
    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mMiuiWirelessChargeSlowlyView:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

    if-eqz v4, :cond_3

    .line 152
    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mMiuiWirelessChargeSlowlyView:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

    invoke-virtual {v4}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->dismiss()V

    .line 156
    :cond_3
    iget-boolean v4, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessCharging:Z

    if-nez v4, :cond_4

    if-eqz v2, :cond_4

    const-string/jumbo v4, "polaris"

    sget-object v5, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 157
    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->checkWirelessChargeEfficiency()V

    .line 160
    :cond_4
    iput-boolean v3, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessOnline:Z

    .line 161
    iput-boolean v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessCharging:Z

    .line 128
    return-void

    .line 131
    .end local v2    # "wirelessCharging":Z
    .end local v3    # "wirelessOnline":Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "wirelessOnline":Z
    goto :goto_0

    .line 133
    :cond_6
    if-eqz v3, :cond_0

    .line 134
    iget v4, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget-boolean v5, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mScreenOn:Z

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->showWirelessChargeAnimation(IZ)V

    goto :goto_1

    .line 137
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "wirelessCharging":Z
    goto :goto_2

    .line 140
    :cond_8
    if-ne v1, v6, :cond_9

    const v4, 0x9100461

    :goto_4
    invoke-direct {p0, v4}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->showToast(I)V

    .line 142
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->setNeedRepositionDevice(Z)V

    .line 144
    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->startDismissWirelessAlphaAnim()V

    .line 145
    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mScreenOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 141
    :cond_9
    const v4, 0x9100460

    goto :goto_4
.end method

.method private checkIfShowWirelessChargeSlowly()V
    .locals 3

    .prologue
    .line 379
    new-instance v0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$10;

    invoke-direct {v0, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$10;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    .line 390
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 379
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$10;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 378
    return-void
.end method

.method private checkWirelessChargeEfficiency()V
    .locals 3

    .prologue
    .line 340
    new-instance v0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$9;

    invoke-direct {v0, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$9;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    .line 375
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 340
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$9;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 339
    return-void
.end method

.method private handleScreenTurnedOff()V
    .locals 2

    .prologue
    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mScreenOn:Z

    .line 413
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->prepareWirelessChargeView(Z)V

    .line 415
    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->startDismissWirelessAlphaAnim()V

    .line 416
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mScreenOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 411
    return-void
.end method

.method private handleScreenTurnedOn()V
    .locals 2

    .prologue
    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mScreenOn:Z

    .line 425
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/charge/MiuiWirelessChargeController$11;

    invoke-direct {v1, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$11;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 423
    return-void
.end method

.method private notifyNeedRepositionDevice(Z)V
    .locals 4
    .param p1, "needRepositionDevice"    # Z

    .prologue
    .line 165
    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeCallbackList:Ljava/util/List;

    monitor-enter v3

    .line 166
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeCallbackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;

    .line 167
    .local v0, "cb":Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;
    invoke-interface {v0, p1}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;->onNeedRepositionDevice(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 165
    .end local v0    # "cb":Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;
    .end local v1    # "cb$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "cb$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 164
    return-void
.end method

.method private prepareWirelessChargeView(Z)V
    .locals 6
    .param p1, "fromScreenOff"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 178
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mContext:Landroid/content/Context;

    const v3, 0x9040066

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    .line 180
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    const/16 v3, 0x1300

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 183
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    const v3, 0x912016a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;

    iput-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mBatteryChargingView:Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;

    .line 184
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 186
    const/16 v3, 0x7d9

    .line 187
    const v4, 0x5030500

    .line 193
    const/4 v5, -0x2

    move v2, v1

    .line 184
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 194
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 195
    const-string/jumbo v1, "wireless_charge"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 197
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private setNeedRepositionDevice(Z)V
    .locals 0
    .param p1, "needRepositionDevice"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mNeedRepositionDevice:Z

    .line 174
    invoke-direct {p0, p1}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->notifyNeedRepositionDevice(Z)V

    .line 172
    return-void
.end method

.method private showToast(I)V
    .locals 3
    .param p1, "res"    # I

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 333
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setType(I)V

    .line 334
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 336
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 331
    return-void
.end method

.method private showWirelessChargeAnimation(IZ)V
    .locals 6
    .param p1, "batteryLevel"    # I
    .param p2, "screenOn"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 233
    iput-boolean v4, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mJustWirelessCharging:Z

    .line 234
    invoke-direct {p0, v3}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->prepareWirelessChargeView(Z)V

    .line 235
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 236
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 240
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v3, v1, v3

    .line 238
    const/16 v2, 0x2418

    .line 240
    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeAnimator:Landroid/animation/ValueAnimator;

    .line 241
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x2418

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 242
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 244
    if-nez p2, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mNeedRepositionDevice:Z

    if-eqz v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mBatteryChargingView:Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;

    invoke-virtual {v1, p2}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->setScreenStateWhenStartAnim(Z)V

    .line 248
    new-instance v0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$5;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    .line 273
    .local v0, "animatorListener":Landroid/animation/Animator$AnimatorListener;
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 274
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/keyguard/charge/MiuiWirelessChargeController$6;

    invoke-direct {v2, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$6;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 281
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 283
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/charge/MiuiWirelessChargeController$7;

    invoke-direct {v2, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$7;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mBatteryChargingView:Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->setChargingProgress(I)V

    .line 228
    return-void

    .line 245
    .end local v0    # "animatorListener":Landroid/animation/Animator$AnimatorListener;
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mScreenOffRunnable:Ljava/lang/Runnable;

    const/16 v3, 0x2350

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private showWirelessChargeSlowly()V
    .locals 4

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mShowSlowlyRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 393
    return-void
.end method

.method private startDismissWirelessAlphaAnim()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 295
    iget-boolean v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mJustWirelessCharging:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mStartingDissmissWirelessAlphaAnim:Z

    if-eqz v2, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 297
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 301
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    const-string/jumbo v3, "alpha"

    .line 300
    const/4 v4, 0x2

    new-array v4, v4, [F

    .line 301
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x0

    aput v5, v4, v7

    .line 300
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 301
    const-wide/16 v4, 0xc8

    .line 300
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 302
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    new-instance v1, Lcom/android/keyguard/charge/MiuiWirelessChargeController$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$8;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    .line 325
    .local v1, "animatorListener":Landroid/animation/Animator$AnimatorListener;
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 326
    iput-boolean v7, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mStartingDissmissWirelessAlphaAnim:Z

    .line 327
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method


# virtual methods
.method public isNeedRepositionDevice()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mNeedRepositionDevice:Z

    return v0
.end method

.method public final onBusEvent(Lcom/android/systemui/events/ScreenOffEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/events/ScreenOffEvent;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->handleScreenTurnedOff()V

    .line 103
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/events/ScreenOnEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/events/ScreenOnEvent;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->handleScreenTurnedOn()V

    .line 107
    return-void
.end method

.method public registerWirelessChargeCallback(Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeCallbackList:Ljava/util/List;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 115
    iget-boolean v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mNeedRepositionDevice:Z

    invoke-interface {p1, v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;->onNeedRepositionDevice(Z)V

    .line 111
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterWirelessChargeCallback(Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeCallbackList:Ljava/util/List;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 118
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
