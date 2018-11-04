.class public Lcom/android/systemui/smartnet/SmartNet;
.super Ljava/lang/Object;
.source "SmartNet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/smartnet/SmartNet$Receiver;
    }
.end annotation


# static fields
.field private static CallState:Z

.field private static SmartNetLastState:I

.field private static cTimer:Landroid/os/CountDownTimer;

.field private static cTimerSleepOn:Landroid/os/CountDownTimer;

.field private static cTimerSleepOnAction:Landroid/os/CountDownTimer;

.field private static chargingState:Z

.field private static lastStateMobileData:I

.field private static lastStateNetworkTypeSIM1:I

.field private static lastStateNetworkTypeSIM2:I

.field private static lastStateWiFiData:I

.field private static networkTypeHash:Ljava/util/Map;

.field private static timeToCompletion:I

.field private static timerDone:Z

.field private static timerSleepOn:I

.field private static timerStart:Z


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

.field mIntent:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    sput-boolean v0, Lcom/android/systemui/smartnet/SmartNet;->CallState:Z

    .line 33
    sput v0, Lcom/android/systemui/smartnet/SmartNet;->SmartNetLastState:I

    .line 34
    sput v0, Lcom/android/systemui/smartnet/SmartNet;->lastStateMobileData:I

    .line 35
    sput v0, Lcom/android/systemui/smartnet/SmartNet;->lastStateWiFiData:I

    .line 36
    sput v0, Lcom/android/systemui/smartnet/SmartNet;->lastStateNetworkTypeSIM1:I

    .line 37
    sput v0, Lcom/android/systemui/smartnet/SmartNet;->lastStateNetworkTypeSIM2:I

    .line 38
    sput-boolean v0, Lcom/android/systemui/smartnet/SmartNet;->timerDone:Z

    .line 39
    sput-boolean v0, Lcom/android/systemui/smartnet/SmartNet;->timerStart:Z

    .line 40
    sput-object v1, Lcom/android/systemui/smartnet/SmartNet;->cTimer:Landroid/os/CountDownTimer;

    .line 41
    sput-object v1, Lcom/android/systemui/smartnet/SmartNet;->cTimerSleepOn:Landroid/os/CountDownTimer;

    .line 42
    sput-object v1, Lcom/android/systemui/smartnet/SmartNet;->cTimerSleepOnAction:Landroid/os/CountDownTimer;

    .line 43
    sput-boolean v0, Lcom/android/systemui/smartnet/SmartNet;->chargingState:Z

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/smartnet/SmartNet;->networkTypeHash:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/smartnet/SmartNet;->initialization(Landroid/content/Context;)V

    .line 52
    new-instance v0, Lcom/android/systemui/smartnet/SmartNet$Receiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/smartnet/SmartNet$Receiver;-><init>(Lcom/android/systemui/smartnet/SmartNet;)V

    iput-object v0, p0, Lcom/android/systemui/smartnet/SmartNet;->mIntent:Landroid/content/BroadcastReceiver;

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/systemui/smartnet/SmartNet;->registerSmartNetReceiver(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Z

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/smartnet/SmartNet;->initialization(Landroid/content/Context;)V

    .line 58
    if-eqz p2, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->getInstance(Landroid/content/Context;)Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    .line 62
    :cond_0
    return-void
.end method

.method private BatteryCharging(Landroid/content/Intent;)V
    .locals 4
    .param p1, "mIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 642
    const-string v2, "status"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 643
    .local v0, "status":I
    iget-object v2, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    const-string v3, "smartnet_charging_control"

    invoke-static {v3, v2}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 644
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    sput-boolean v1, Lcom/android/systemui/smartnet/SmartNet;->chargingState:Z

    .line 648
    :goto_0
    return-void

    .line 646
    :cond_2
    sput-boolean v1, Lcom/android/systemui/smartnet/SmartNet;->chargingState:Z

    goto :goto_0
.end method

.method private TimerIntentAction(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    const/4 v3, -0x1

    .line 656
    iget-object v0, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    const-string v1, "mobiledata_activity"

    invoke-static {v1, v0}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v3}, Lcom/android/systemui/smartnet/SmartNet;->controlTimers(I)V

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    const-string v1, "smartnet_timer_value"

    invoke-static {v1, v0}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/systemui/smartnet/SmartNet;->timeToCompletion:I

    .line 658
    iget-object v0, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    const-string v1, "smartnet_timer_sleepon_value"

    invoke-static {v1, v0}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/systemui/smartnet/SmartNet;->timerSleepOn:I

    .line 659
    const-string v0, "SmartNet2.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimerIntentAction(Z)V: Charging State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/smartnet/SmartNet;->chargingState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    sget v0, Lcom/android/systemui/smartnet/SmartNet;->timeToCompletion:I

    if-lez v0, :cond_0

    .line 661
    if-eqz p1, :cond_3

    .line 662
    sget-boolean v0, Lcom/android/systemui/smartnet/SmartNet;->timerDone:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/smartnet/SmartNet;->cTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    .line 664
    invoke-direct {p0}, Lcom/android/systemui/smartnet/SmartNet;->restoreCurrentPrefferedNetworkType()V

    .line 665
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/smartnet/SmartNet;->controlTimers(I)V

    .line 666
    const-string v0, "SmartNet2.0"

    const-string v1, "TimerIntentAction(Z)V: Restore Network Type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 669
    :cond_2
    sget-boolean v0, Lcom/android/systemui/smartnet/SmartNet;->timerStart:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/smartnet/SmartNet;->cTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 670
    invoke-direct {p0, v3}, Lcom/android/systemui/smartnet/SmartNet;->controlTimers(I)V

    .line 671
    const-string v0, "SmartNet2.0"

    const-string v1, "TimerIntentAction(Z)V: Cancel Timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 676
    :cond_3
    sget-boolean v0, Lcom/android/systemui/smartnet/SmartNet;->timerStart:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/smartnet/SmartNet;->chargingState:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/smartnet/SmartNet;->CallState:Z

    if-nez v0, :cond_0

    .line 678
    invoke-direct {p0}, Lcom/android/systemui/smartnet/SmartNet;->saveCurrentPrefferedNetworkType()V

    .line 679
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/smartnet/SmartNet;->controlTimers(I)V

    .line 680
    const-string v0, "SmartNet2.0"

    const-string v1, "TimerIntentAction(Z)V: Start Timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 26
    sput-boolean p0, Lcom/android/systemui/smartnet/SmartNet;->timerDone:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/smartnet/SmartNet;[II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/smartnet/SmartNet;
    .param p1, "x1"    # [I
    .param p2, "x2"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/smartnet/SmartNet;->setPreferredNetworkType([II)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 26
    sput-boolean p0, Lcom/android/systemui/smartnet/SmartNet;->timerStart:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/smartnet/SmartNet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/smartnet/SmartNet;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/systemui/smartnet/SmartNet;->restoreCurrentPrefferedNetworkType()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/smartnet/SmartNet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/smartnet/SmartNet;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/systemui/smartnet/SmartNet;->setTimerSleepAction()V

    return-void
.end method

.method static synthetic access$1300()Landroid/os/CountDownTimer;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/systemui/smartnet/SmartNet;->cTimerSleepOnAction:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Landroid/os/CountDownTimer;

    .prologue
    .line 26
    sput-object p0, Lcom/android/systemui/smartnet/SmartNet;->cTimerSleepOnAction:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/smartnet/SmartNet;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/smartnet/SmartNet;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/smartnet/SmartNet;->TimerIntentAction(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/smartnet/SmartNet;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/smartnet/SmartNet;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/smartnet/SmartNet;->BatteryCharging(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/smartnet/SmartNet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/smartnet/SmartNet;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/systemui/smartnet/SmartNet;->getStateWiFiData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/smartnet/SmartNet;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/smartnet/SmartNet;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/systemui/smartnet/SmartNet;->getConnectedWiFiData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lcom/android/systemui/smartnet/SmartNet;->timerSleepOn:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/smartnet/SmartNet;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/smartnet/SmartNet;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/smartnet/SmartNet;->setTimerSleepOn(I)V

    return-void
.end method

.method static synthetic access$600()Landroid/os/CountDownTimer;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/systemui/smartnet/SmartNet;->cTimerSleepOn:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$602(Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Landroid/os/CountDownTimer;

    .prologue
    .line 26
    sput-object p0, Lcom/android/systemui/smartnet/SmartNet;->cTimerSleepOn:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/smartnet/SmartNet;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/smartnet/SmartNet;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/smartnet/SmartNet;)Lcom/android/systemui/smartnet/SmartNetCoreDualSim;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/smartnet/SmartNet;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/smartnet/SmartNet;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/smartnet/SmartNet;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/smartnet/SmartNet;->checkRILConstants(I)I

    move-result v0

    return v0
.end method

.method private checkRILConstants(I)I
    .locals 9
    .param p1, "networkType"    # I

    .prologue
    .line 426
    sget-object v6, Lcom/android/systemui/smartnet/SmartNet;->networkTypeHash:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 427
    const/16 v6, 0x17

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "NETWORK_MODE_WCDMA_PREF"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "NETWORK_MODE_GSM_ONLY"

    aput-object v7, v0, v6

    const/4 v6, 0x2

    const-string v7, "NETWORK_MODE_WCDMA_ONLY"

    aput-object v7, v0, v6

    const/4 v6, 0x3

    const-string v7, "NETWORK_MODE_GSM_UMTS"

    aput-object v7, v0, v6

    const/4 v6, 0x4

    const-string v7, "NETWORK_MODE_CDMA"

    aput-object v7, v0, v6

    const/4 v6, 0x5

    const-string v7, "NETWORK_MODE_CDMA_NO_EVDO"

    aput-object v7, v0, v6

    const/4 v6, 0x6

    const-string v7, "NETWORK_MODE_EVDO_NO_CDMA"

    aput-object v7, v0, v6

    const/4 v6, 0x7

    const-string v7, "NETWORK_MODE_GLOBAL"

    aput-object v7, v0, v6

    const/16 v6, 0x8

    const-string v7, "NETWORK_MODE_LTE_CDMA_EVDO"

    aput-object v7, v0, v6

    const/16 v6, 0x9

    const-string v7, "NETWORK_MODE_LTE_GSM_WCDMA"

    aput-object v7, v0, v6

    const/16 v6, 0xa

    const-string v7, "NETWORK_MODE_LTE_CDMA_EVDO_GSM_WCDMA"

    aput-object v7, v0, v6

    const/16 v6, 0xb

    const-string v7, "NETWORK_MODE_LTE_ONLY"

    aput-object v7, v0, v6

    const/16 v6, 0xc

    const-string v7, "NETWORK_MODE_LTE_WCDMA"

    aput-object v7, v0, v6

    const/16 v6, 0xd

    const-string v7, "NETWORK_MODE_TDSCDMA_ONLY"

    aput-object v7, v0, v6

    const/16 v6, 0xe

    const-string v7, "NETWORK_MODE_TDSCDMA_WCDMA"

    aput-object v7, v0, v6

    const/16 v6, 0xf

    const-string v7, "NETWORK_MODE_LTE_TDSCDMA"

    aput-object v7, v0, v6

    const/16 v6, 0x10

    const-string v7, "NETWORK_MODE_TDSCDMA_GSM"

    aput-object v7, v0, v6

    const/16 v6, 0x11

    const-string v7, "NETWORK_MODE_LTE_TDSCDMA_GSM"

    aput-object v7, v0, v6

    const/16 v6, 0x12

    const-string v7, "NETWORK_MODE_TDSCDMA_GSM_WCDMA"

    aput-object v7, v0, v6

    const/16 v6, 0x13

    const-string v7, "NETWORK_MODE_LTE_TDSCDMA_WCDMA"

    aput-object v7, v0, v6

    const/16 v6, 0x14

    const-string v7, "NETWORK_MODE_LTE_TDSCDMA_GSM_WCDMA"

    aput-object v7, v0, v6

    const/16 v6, 0x15

    const-string v7, "NETWORK_MODE_TDSCDMA_CDMA_EVDO_GSM_WCDMA"

    aput-object v7, v0, v6

    const/16 v6, 0x16

    const-string v7, "NETWORK_MODE_LTE_TDSCDMA_CDMA_EVDO_GSM_WCDMA"

    aput-object v7, v0, v6

    .line 450
    .local v0, "NetworkTypeString":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    if-gt v3, v6, :cond_0

    .line 451
    sget-object v6, Lcom/android/systemui/smartnet/SmartNet;->networkTypeHash:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget-object v8, v0, v3

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 454
    .end local v0    # "NetworkTypeString":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_0
    if-gtz p1, :cond_1

    const/4 v4, -0x1

    .line 477
    :goto_1
    return v4

    .line 455
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 463
    :goto_2
    sget-object v6, Lcom/android/systemui/smartnet/SmartNet;->networkTypeHash:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 465
    .local v5, "value":Ljava/lang/String;
    :try_start_0
    const-string v6, "com.android.internal.telephony.RILConstants"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 466
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    .local v4, "result":I
    goto :goto_1

    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "result":I
    .end local v5    # "value":Ljava/lang/String;
    :sswitch_0
    move v4, p1

    .line 457
    goto :goto_1

    :sswitch_1
    move v4, p1

    .line 459
    goto :goto_1

    .line 461
    :sswitch_2
    const/4 p1, 0x0

    goto :goto_2

    .line 467
    .restart local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 468
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const/4 v4, -0x1

    .line 469
    .restart local v4    # "result":I
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 470
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    .end local v4    # "result":I
    :catch_1
    move-exception v1

    .line 471
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const/4 v4, -0x1

    .line 472
    .restart local v4    # "result":I
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 473
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v4    # "result":I
    :catch_2
    move-exception v1

    .line 474
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const/4 v4, -0x1

    .line 475
    .restart local v4    # "result":I
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 455
    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x14 -> :sswitch_1
        0x5a -> :sswitch_2
    .end sparse-switch
.end method

.method private controlTimers(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 621
    packed-switch p1, :pswitch_data_0

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 623
    :pswitch_0
    sput-object v1, Lcom/android/systemui/smartnet/SmartNet;->cTimer:Landroid/os/CountDownTimer;

    .line 624
    sput-boolean v2, Lcom/android/systemui/smartnet/SmartNet;->timerDone:Z

    .line 625
    sget-object v0, Lcom/android/systemui/smartnet/SmartNet;->cTimerSleepOn:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 626
    sget-object v0, Lcom/android/systemui/smartnet/SmartNet;->cTimerSleepOn:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 627
    sput-object v1, Lcom/android/systemui/smartnet/SmartNet;->cTimerSleepOn:Landroid/os/CountDownTimer;

    .line 629
    :cond_1
    sget-object v0, Lcom/android/systemui/smartnet/SmartNet;->cTimerSleepOnAction:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 630
    sget-object v0, Lcom/android/systemui/smartnet/SmartNet;->cTimerSleepOnAction:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 631
    sput-object v1, Lcom/android/systemui/smartnet/SmartNet;->cTimerSleepOnAction:Landroid/os/CountDownTimer;

    goto :goto_0

    .line 635
    :pswitch_1
    sget v0, Lcom/android/systemui/smartnet/SmartNet;->timeToCompletion:I

    invoke-direct {p0, v0}, Lcom/android/systemui/smartnet/SmartNet;->setTimer(I)V

    .line 636
    sget-object v0, Lcom/android/systemui/smartnet/SmartNet;->cTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 637
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/smartnet/SmartNet;->timerStart:Z

    goto :goto_0

    .line 640
    :pswitch_2
    sget-object v0, Lcom/android/systemui/smartnet/SmartNet;->cTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    .line 641
    sget-object v0, Lcom/android/systemui/smartnet/SmartNet;->cTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 642
    sput-object v1, Lcom/android/systemui/smartnet/SmartNet;->cTimer:Landroid/os/CountDownTimer;

    .line 644
    :cond_2
    sput-boolean v2, Lcom/android/systemui/smartnet/SmartNet;->timerStart:Z

    .line 645
    sget-object v0, Lcom/android/systemui/smartnet/SmartNet;->cTimerSleepOn:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_3

    .line 646
    sget-object v0, Lcom/android/systemui/smartnet/SmartNet;->cTimerSleepOn:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 647
    sput-object v1, Lcom/android/systemui/smartnet/SmartNet;->cTimerSleepOn:Landroid/os/CountDownTimer;

    .line 649
    :cond_3
    sget-object v0, Lcom/android/systemui/smartnet/SmartNet;->cTimerSleepOnAction:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 650
    sget-object v0, Lcom/android/systemui/smartnet/SmartNet;->cTimerSleepOnAction:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 651
    sput-object v1, Lcom/android/systemui/smartnet/SmartNet;->cTimerSleepOnAction:Landroid/os/CountDownTimer;

    goto :goto_0

    .line 621
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getConnectedWiFiData()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 405
    iget-object v3, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 406
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 407
    .local v1, "wifiInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getStateMobileData()Z
    .locals 6

    .prologue
    .line 360
    const/4 v0, 0x0

    .line 362
    .local v0, "MobileDataState":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 363
    .local v2, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getDataEnabled"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 364
    .local v1, "getMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 365
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 370
    .end local v1    # "getMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    .end local v2    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return v0

    .line 367
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getStateWiFiData()Z
    .locals 3

    .prologue
    .line 386
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 387
    iget-object v1, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 391
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    return v1

    .line 389
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .restart local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    goto :goto_0
.end method

.method private initialization(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    .line 66
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/smartnet/SmartNet;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 67
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 68
    .local v0, "defaultConnectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 69
    iput-object v0, p0, Lcom/android/systemui/smartnet/SmartNet;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 71
    :cond_0
    return-void
.end method

.method private restoreCurrentPrefferedNetworkType()V
    .locals 6

    .prologue
    .line 297
    iget-object v3, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    iget-object v4, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->getSubId(Landroid/content/Context;)[I

    move-result-object v0

    .line 298
    .local v0, "SIMid":[I
    iget-object v3, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    const-string v4, "mobiledata_SIM_Select"

    invoke-static {v4, v3}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 299
    .local v1, "SimCard":I
    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 300
    :cond_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 301
    .local v2, "mITelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    .line 303
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_3

    .line 304
    packed-switch v1, :pswitch_data_0

    .line 324
    iget-object v3, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    invoke-virtual {v3}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM1Ready()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    const/4 v3, 0x0

    aget v3, v0, v3

    sget v4, Lcom/android/systemui/smartnet/SmartNet;->lastStateNetworkTypeSIM1:I

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "my.settings.CHANGE_SMART_MOBILE_NETWORK"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 337
    return-void

    .line 306
    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    invoke-virtual {v3}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM1Ready()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 307
    const/4 v3, 0x0

    aget v3, v0, v3

    sget v4, Lcom/android/systemui/smartnet/SmartNet;->lastStateNetworkTypeSIM1:I

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(II)Z

    goto :goto_0

    .line 331
    :catch_0
    move-exception v3

    goto :goto_0

    .line 311
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    invoke-virtual {v3}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM2Ready()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 312
    const/4 v3, 0x1

    aget v3, v0, v3

    sget v4, Lcom/android/systemui/smartnet/SmartNet;->lastStateNetworkTypeSIM2:I

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(II)Z

    goto :goto_0

    .line 316
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    invoke-virtual {v3}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM1Ready()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 317
    const/4 v3, 0x0

    aget v3, v0, v3

    sget v4, Lcom/android/systemui/smartnet/SmartNet;->lastStateNetworkTypeSIM1:I

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(II)Z

    .line 319
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    invoke-virtual {v3}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM2Ready()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 320
    const/4 v3, 0x1

    aget v3, v0, v3

    sget v4, Lcom/android/systemui/smartnet/SmartNet;->lastStateNetworkTypeSIM2:I

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(II)Z

    goto :goto_0

    .line 329
    :cond_3
    sget v3, Lcom/android/systemui/smartnet/SmartNet;->lastStateNetworkTypeSIM1:I

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private saveCurrentPrefferedNetworkType()V
    .locals 5

    .prologue
    .line 253
    iget-object v3, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    iget-object v4, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->getSubId(Landroid/content/Context;)[I

    move-result-object v0

    .line 254
    .local v0, "SIMid":[I
    iget-object v3, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    const-string v4, "mobiledata_SIM_Select"

    invoke-static {v4, v3}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 255
    .local v1, "SimCard":I
    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 256
    :cond_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 257
    .local v2, "mITelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    .line 259
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_3

    .line 260
    packed-switch v1, :pswitch_data_0

    .line 280
    iget-object v3, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    invoke-virtual {v3}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM1Ready()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 281
    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getPreferredNetworkType(I)I

    move-result v3

    sput v3, Lcom/android/systemui/smartnet/SmartNet;->lastStateNetworkTypeSIM1:I

    .line 292
    :cond_1
    :goto_0
    return-void

    .line 262
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    invoke-virtual {v3}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM1Ready()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getPreferredNetworkType(I)I

    move-result v3

    sput v3, Lcom/android/systemui/smartnet/SmartNet;->lastStateNetworkTypeSIM1:I

    goto :goto_0

    .line 288
    :catch_0
    move-exception v3

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    invoke-virtual {v3}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM2Ready()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 268
    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getPreferredNetworkType(I)I

    move-result v3

    sput v3, Lcom/android/systemui/smartnet/SmartNet;->lastStateNetworkTypeSIM2:I

    goto :goto_0

    .line 272
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    invoke-virtual {v3}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM1Ready()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getPreferredNetworkType(I)I

    move-result v3

    sput v3, Lcom/android/systemui/smartnet/SmartNet;->lastStateNetworkTypeSIM1:I

    .line 275
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    invoke-virtual {v3}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM2Ready()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 276
    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getPreferredNetworkType(I)I

    move-result v3

    sput v3, Lcom/android/systemui/smartnet/SmartNet;->lastStateNetworkTypeSIM2:I

    goto :goto_0

    .line 285
    :cond_3
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getPreferredNetworkType()I

    move-result v3

    sput v3, Lcom/android/systemui/smartnet/SmartNet;->lastStateNetworkTypeSIM1:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setPreferredNetworkType(II)V
    .locals 4
    .param p1, "SIMid"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 127
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 128
    .local v0, "mITelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 131
    const-string v1, "SmartNet2.0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType(II)V: [SubId]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Network Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(II)Z

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_2

    .line 138
    const-string v1, "SmartNet2.0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "API 22 setPreferredNetworkType(II)V: [SubId]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Network Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    .line 143
    const-string v1, "SmartNet2.0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "API 21 setPreferredNetworkType(II)V: [SubId]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Network Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_3
    invoke-interface {v0, p2}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setPreferredNetworkType([II)V
    .locals 4
    .param p1, "SIMid"    # [I
    .param p2, "networkType"    # I

    .prologue
    .line 154
    iget-object v2, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    const-string v3, "mobiledata_SIM_Select"

    invoke-static {v3, v2}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 155
    .local v0, "SimCard":I
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 156
    :cond_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 157
    .local v1, "mITelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1

    .line 159
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    .line 160
    packed-switch v0, :pswitch_data_0

    .line 180
    iget-object v2, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    invoke-virtual {v2}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM1Ready()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-interface {v1, v2, p2}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(II)Z

    .line 191
    :cond_1
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    invoke-virtual {v2}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM1Ready()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-interface {v1, v2, p2}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(II)Z

    goto :goto_0

    .line 187
    :catch_0
    move-exception v2

    goto :goto_0

    .line 167
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    invoke-virtual {v2}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM2Ready()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-interface {v1, v2, p2}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(II)Z

    goto :goto_0

    .line 172
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    invoke-virtual {v2}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM1Ready()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-interface {v1, v2, p2}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(II)Z

    .line 175
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    invoke-virtual {v2}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM2Ready()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-interface {v1, v2, p2}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(II)Z

    goto :goto_0

    .line 185
    :cond_3
    invoke-interface {v1, p2}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setSimPreferredNetworkType(I)V
    .locals 7
    .param p1, "networkType"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 100
    iget-object v2, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    iget-object v3, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->getSubId(Landroid/content/Context;)[I

    move-result-object v0

    .line 102
    .local v0, "SIMid":[I
    iget-object v2, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    invoke-virtual {v2}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isDualSIM()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    const-string v3, "mobiledata_SIM_Select"

    invoke-static {v3, v2}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 104
    .local v1, "SimCard":I
    const-string v2, "SmartNet2.0"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSimPreferredNetworkType(I)V: SIMid[0]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SIMid[1]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isSIM2Ready()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    invoke-virtual {v4}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM2Ready()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Network Type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SIMCard="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    packed-switch v1, :pswitch_data_0

    .line 119
    aget v2, v0, v5

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/smartnet/SmartNet;->setPreferredNetworkType(II)V

    .line 124
    .end local v1    # "SimCard":I
    :cond_0
    :goto_0
    return-void

    .line 107
    .restart local v1    # "SimCard":I
    :pswitch_0
    aget v2, v0, v5

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/smartnet/SmartNet;->setPreferredNetworkType(II)V

    goto :goto_0

    .line 110
    :pswitch_1
    aget v2, v0, v6

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/smartnet/SmartNet;->setPreferredNetworkType(II)V

    goto :goto_0

    .line 113
    :pswitch_2
    aget v2, v0, v5

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/smartnet/SmartNet;->setPreferredNetworkType(II)V

    .line 114
    iget-object v2, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    invoke-virtual {v2}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM2Ready()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    aget v2, v0, v6

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/smartnet/SmartNet;->setPreferredNetworkType(II)V

    goto :goto_0

    .line 122
    .end local v1    # "SimCard":I
    :cond_1
    aget v2, v0, v5

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/smartnet/SmartNet;->setPreferredNetworkType(II)V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setStateMobileData(Z)V
    .locals 7
    .param p1, "state"    # Z

    .prologue
    .line 375
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 376
    .local v0, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setDataEnabled"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 377
    .local v1, "setMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 378
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v0    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v1    # "setMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private setStateWiFiData(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 396
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 397
    iget-object v1, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 401
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 402
    return-void

    .line 399
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .restart local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    goto :goto_0
.end method

.method private setTimer(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    .line 504
    new-instance v0, Lcom/android/systemui/smartnet/SmartNet$1;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/smartnet/SmartNet$1;-><init>(Lcom/android/systemui/smartnet/SmartNet;JJ)V

    sput-object v0, Lcom/android/systemui/smartnet/SmartNet;->cTimer:Landroid/os/CountDownTimer;

    .line 526
    return-void
.end method

.method private setTimerSleepAction()V
    .locals 6

    .prologue
    .line 552
    new-instance v0, Lcom/android/systemui/smartnet/SmartNet$3;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/smartnet/SmartNet$3;-><init>(Lcom/android/systemui/smartnet/SmartNet;JJ)V

    sput-object v0, Lcom/android/systemui/smartnet/SmartNet;->cTimerSleepOnAction:Landroid/os/CountDownTimer;

    .line 572
    return-void
.end method

.method private setTimerSleepOn(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    .line 529
    new-instance v0, Lcom/android/systemui/smartnet/SmartNet$2;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/smartnet/SmartNet$2;-><init>(Lcom/android/systemui/smartnet/SmartNet;JJ)V

    sput-object v0, Lcom/android/systemui/smartnet/SmartNet;->cTimerSleepOn:Landroid/os/CountDownTimer;

    .line 549
    return-void
.end method


# virtual methods
.method public CallIntentAction(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 481
    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "phoneState":Ljava/lang/String;
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-boolean v1, Lcom/android/systemui/smartnet/SmartNet;->CallState:Z

    if-nez v1, :cond_2

    .line 485
    iget-object v1, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    const-string v2, "mobiledata_activity"

    invoke-static {v2, v1}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/systemui/smartnet/SmartNet;->SmartNetLastState:I

    .line 486
    sget v1, Lcom/android/systemui/smartnet/SmartNet;->SmartNetLastState:I

    if-eqz v1, :cond_1

    .line 488
    invoke-virtual {p0, v4}, Lcom/android/systemui/smartnet/SmartNet;->setCallPreferredNetworkType(Z)V

    .line 490
    :cond_1
    sput-boolean v4, Lcom/android/systemui/smartnet/SmartNet;->CallState:Z

    .line 493
    :cond_2
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/systemui/smartnet/SmartNet;->CallState:Z

    if-eqz v1, :cond_4

    .line 494
    sget v1, Lcom/android/systemui/smartnet/SmartNet;->SmartNetLastState:I

    if-eqz v1, :cond_3

    .line 496
    invoke-virtual {p0, v3}, Lcom/android/systemui/smartnet/SmartNet;->setCallPreferredNetworkType(Z)V

    .line 498
    :cond_3
    sput-boolean v3, Lcom/android/systemui/smartnet/SmartNet;->CallState:Z

    .line 500
    :cond_4
    const-string v1, "SmartNet2.0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/smartnet/SmartNet;->CallState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SmartNetLastState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/systemui/smartnet/SmartNet;->SmartNetLastState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-void
.end method

.method public handleMobileData()V
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->getInstance(Landroid/content/Context;)Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    .line 76
    new-instance v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/smartnet/SmartNet;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 77
    iget-object v1, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    const-string v2, "mobiledata_activity"

    invoke-static {v2, v1}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    sget-boolean v1, Lcom/android/systemui/smartnet/SmartNet;->timerDone:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/smartnet/SmartNet;->CallState:Z

    if-eqz v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/smartnet/SmartNet;->getStateWiFiData()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/smartnet/SmartNet;->getConnectedWiFiData()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/smartnet/SmartNet;->setPreferredNetworkTypeWiFiOn()V

    goto :goto_0

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/smartnet/SmartNet;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/systemui/smartnet/SmartNet;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    iget-object v1, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    const-string v2, "mobiledata_on"

    invoke-static {v2, v1}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/smartnet/SmartNet;->checkRILConstants(I)I

    move-result v0

    .line 84
    .local v0, "networkType":I
    if-ltz v0, :cond_0

    .line 85
    invoke-direct {p0, v0}, Lcom/android/systemui/smartnet/SmartNet;->setSimPreferredNetworkType(I)V

    goto :goto_0

    .line 88
    .end local v0    # "networkType":I
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    const-string v2, "mobiledata_off"

    invoke-static {v2, v1}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/smartnet/SmartNet;->checkRILConstants(I)I

    move-result v0

    .line 90
    .restart local v0    # "networkType":I
    if-ltz v0, :cond_0

    .line 91
    invoke-direct {p0, v0}, Lcom/android/systemui/smartnet/SmartNet;->setSimPreferredNetworkType(I)V

    goto :goto_0
.end method

.method public registerSmartNetReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 411
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 412
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 413
    const-string v1, "my.settings.CHANGE_SMART_MOBILE_NETWORK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 414
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 416
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 417
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/android/systemui/smartnet/SmartNet;->mIntent:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 421
    return-void
.end method

.method public setCallPreferredNetworkType(Z)V
    .locals 8
    .param p1, "CallState"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 198
    iget-object v4, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    iget-object v7, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->getSubId(Landroid/content/Context;)[I

    move-result-object v1

    .line 199
    .local v1, "SIMid":[I
    iget-object v4, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    const-string v7, "smartnet_wifi_data_transfer"

    invoke-static {v7, v4}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    .line 200
    .local v2, "WiFiDataTransfer":I
    iget-object v4, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    const-string v7, "smartnet_mobile_data_transfer"

    invoke-static {v7, v4}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 201
    .local v0, "MobileDataTransfer":I
    if-eqz p1, :cond_7

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/smartnet/SmartNet;->saveCurrentPrefferedNetworkType()V

    .line 203
    iget-object v4, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    const-string v7, "call_mobiledata"

    invoke-static {v7, v4}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/smartnet/SmartNet;->checkRILConstants(I)I

    move-result v3

    .line 207
    .local v3, "networkType":I
    invoke-direct {p0}, Lcom/android/systemui/smartnet/SmartNet;->getStateMobileData()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    sput v4, Lcom/android/systemui/smartnet/SmartNet;->lastStateMobileData:I

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/smartnet/SmartNet;->getStateWiFiData()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_1
    sput v4, Lcom/android/systemui/smartnet/SmartNet;->lastStateWiFiData:I

    .line 209
    if-eqz v2, :cond_0

    .line 210
    if-nez p1, :cond_5

    move v4, v5

    :goto_2
    invoke-direct {p0, v4}, Lcom/android/systemui/smartnet/SmartNet;->setStateWiFiData(Z)V

    .line 212
    :cond_0
    if-eqz v0, :cond_1

    .line 213
    if-nez p1, :cond_6

    :goto_3
    invoke-direct {p0, v5}, Lcom/android/systemui/smartnet/SmartNet;->setStateMobileData(Z)V

    .line 215
    :cond_1
    const-string v4, "SmartNet2.0"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCallPreferredNetworkType(Z)V: Network Type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lastStateMobileData="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/systemui/smartnet/SmartNet;->lastStateMobileData:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lastStateWiFiData="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/systemui/smartnet/SmartNet;->lastStateWiFiData:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " WiFiDataTransfer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " MobileDataTransfer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lastStateNetworkTypeSIM1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/systemui/smartnet/SmartNet;->lastStateNetworkTypeSIM1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lastStateNetworkTypeSIM2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/systemui/smartnet/SmartNet;->lastStateNetworkTypeSIM2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_4
    if-ltz v3, :cond_2

    .line 246
    invoke-direct {p0, v1, v3}, Lcom/android/systemui/smartnet/SmartNet;->setPreferredNetworkType([II)V

    .line 248
    .end local v3    # "networkType":I
    :cond_2
    :goto_5
    return-void

    .restart local v3    # "networkType":I
    :cond_3
    move v4, v6

    .line 207
    goto :goto_0

    :cond_4
    move v4, v6

    .line 208
    goto :goto_1

    :cond_5
    move v4, v6

    .line 210
    goto :goto_2

    :cond_6
    move v5, v6

    .line 213
    goto :goto_3

    .line 219
    .end local v3    # "networkType":I
    :cond_7
    sget v4, Lcom/android/systemui/smartnet/SmartNet;->lastStateWiFiData:I

    if-eqz v4, :cond_a

    .line 220
    iget-object v4, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    const-string v7, "mobiledata_WiFiOn"

    invoke-static {v7, v4}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/smartnet/SmartNet;->checkRILConstants(I)I

    move-result v3

    .line 231
    .restart local v3    # "networkType":I
    :goto_6
    if-eqz v2, :cond_8

    .line 232
    sget v4, Lcom/android/systemui/smartnet/SmartNet;->lastStateWiFiData:I

    if-eqz v4, :cond_8

    .line 233
    if-nez p1, :cond_c

    move v4, v5

    :goto_7
    invoke-direct {p0, v4}, Lcom/android/systemui/smartnet/SmartNet;->setStateWiFiData(Z)V

    .line 237
    :cond_8
    if-eqz v0, :cond_9

    .line 238
    sget v4, Lcom/android/systemui/smartnet/SmartNet;->lastStateMobileData:I

    if-eqz v4, :cond_9

    .line 239
    if-nez p1, :cond_d

    :goto_8
    invoke-direct {p0, v5}, Lcom/android/systemui/smartnet/SmartNet;->setStateMobileData(Z)V

    .line 243
    :cond_9
    const-string v4, "SmartNet2.0"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCallPreferredNetworkType(Z)V: Network Type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lastStateMobileData="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/systemui/smartnet/SmartNet;->lastStateMobileData:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lastStateWiFiData="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/systemui/smartnet/SmartNet;->lastStateWiFiData:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " WiFiDataTransfer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " MobileDataTransfer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lastStateNetworkTypeSIM1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/systemui/smartnet/SmartNet;->lastStateNetworkTypeSIM1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lastStateNetworkTypeSIM2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/systemui/smartnet/SmartNet;->lastStateNetworkTypeSIM2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 223
    .end local v3    # "networkType":I
    :cond_a
    sget v4, Lcom/android/systemui/smartnet/SmartNet;->lastStateMobileData:I

    if-eqz v4, :cond_b

    .line 224
    iget-object v4, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    const-string v7, "mobiledata_on"

    invoke-static {v7, v4}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/smartnet/SmartNet;->checkRILConstants(I)I

    move-result v3

    .restart local v3    # "networkType":I
    goto/16 :goto_6

    .line 227
    .end local v3    # "networkType":I
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/smartnet/SmartNet;->restoreCurrentPrefferedNetworkType()V

    goto/16 :goto_5

    .restart local v3    # "networkType":I
    :cond_c
    move v4, v6

    .line 233
    goto/16 :goto_7

    :cond_d
    move v5, v6

    .line 239
    goto :goto_8
.end method

.method public setPreferredNetworkTypeWiFiOn()V
    .locals 4

    .prologue
    .line 345
    iget-object v2, p0, Lcom/android/systemui/smartnet/SmartNet;->mCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    iget-object v3, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->getSubId(Landroid/content/Context;)[I

    move-result-object v0

    .line 346
    .local v0, "SIMid":[I
    iget-object v2, p0, Lcom/android/systemui/smartnet/SmartNet;->mContext:Landroid/content/Context;

    const-string v3, "mobiledata_WiFiOn"

    invoke-static {v3, v2}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/smartnet/SmartNet;->checkRILConstants(I)I

    move-result v1

    .line 348
    .local v1, "networkType":I
    packed-switch v1, :pswitch_data_0

    .line 355
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/smartnet/SmartNet;->setPreferredNetworkType([II)V

    .line 356
    :pswitch_0
    return-void

    .line 352
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
