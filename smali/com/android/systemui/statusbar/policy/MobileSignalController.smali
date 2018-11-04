.class public Lcom/android/systemui/statusbar/policy/MobileSignalController;
.super Lcom/android/systemui/statusbar/policy/SignalController;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/SignalController",
        "<",
        "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;",
        "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final SUPPORT_CA:Z


# instance fields
.field private final STATUS_BAR_STYLE_ANDROID_DEFAULT:I

.field private final STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

.field private final STATUS_BAR_STYLE_DATA_VOICE:I

.field private final STATUS_BAR_STYLE_DEFAULT_DATA:I

.field private mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

.field private mDataNetType:I

.field private mDataState:I

.field private mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field private final mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

.field private mEnableVolteForSlot:Z

.field private mIsCtSim:Z

.field private mIsFirstSimStateChange:Z

.field private mIsQcom:Z

.field private mMccNncList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkNameDefault:Ljava/lang/String;

.field final mNetworkToIconLookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhone:Landroid/telephony/TelephonyManager;

.field final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mStyle:I

.field final mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

.field private mSupportDualVolte:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->needUpdateNetwork(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 121
    const-string/jumbo v0, "support_ca"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->SUPPORT_CA:Z

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Lmiui/telephony/SubscriptionInfo;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Landroid/os/Looper;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    .param p3, "hasMobileData"    # Z
    .param p4, "phone"    # Landroid/telephony/TelephonyManager;
    .param p5, "callbackHandler"    # Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .param p6, "networkController"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p7, "info"    # Lmiui/telephony/SubscriptionInfo;
    .param p8, "defaults"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;
    .param p9, "receiverLooper"    # Landroid/os/Looper;

    .prologue
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MobileSignalController("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p7}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p5

    move-object v6, p6

    .line 155
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsFirstSimStateChange:Z

    .line 119
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->isDualVolteSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSupportDualVolte:Z

    .line 120
    const-string/jumbo v1, "qcom"

    const-string/jumbo v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsQcom:Z

    .line 133
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    .line 134
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    .line 135
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 143
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->STATUS_BAR_STYLE_ANDROID_DEFAULT:I

    .line 144
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

    .line 145
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->STATUS_BAR_STYLE_DEFAULT_DATA:I

    .line 146
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->STATUS_BAR_STYLE_DATA_VOICE:I

    .line 147
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mStyle:I

    .line 158
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    .line 160
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 161
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    .line 162
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    .line 163
    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    .line 164
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;

    invoke-virtual {p7}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    move-object/from16 v0, p9

    invoke-direct {v1, p0, v2, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;ILandroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 167
    const v1, 0x10402aa

    .line 166
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11060016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMccNncList:Ljava/util/List;

    .line 171
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readIconsFromXml:Z

    if-eqz v1, :cond_1

    .line 172
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->readIconsFromXml(Landroid/content/Context;)V

    .line 173
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 178
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90e001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mStyle:I

    .line 180
    invoke-virtual {p7}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p7}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 182
    .local v7, "networkName":Ljava/lang/String;
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v7, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iput-object v7, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v7, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    iput-object v7, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 184
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    iput-boolean p3, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    .line 185
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v3, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 187
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataSim()V

    .line 154
    return-void

    .line 173
    .end local v7    # "networkName":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_0

    .line 175
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mapIconSets()V

    goto :goto_1

    .line 181
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    .restart local v7    # "networkName":Ljava/lang/String;
    goto :goto_2
.end method

.method private generateIconGroup()V
    .locals 37

    .prologue
    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    const/4 v5, 0x5

    if-lt v2, v5, :cond_1

    const/16 v32, 0x5

    .line 592
    .local v32, "level":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceLevel:I

    const/4 v5, 0x5

    if-lt v2, v5, :cond_2

    const/16 v35, 0x5

    .line 593
    .local v35, "voiceLevel":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    const/4 v5, 0x5

    if-lt v2, v5, :cond_3

    const/4 v8, 0x5

    .line 594
    .local v8, "inet":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    move/from16 v27, v0

    .line 595
    .local v27, "dataConnected":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v33

    .line 596
    .local v33, "roaming":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v36

    .line 597
    .local v36, "voiceType":I
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result v29

    .line 599
    .local v29, "dataType":I
    sget-object v13, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 600
    .local v13, "contentDesc":[I
    sget-object v2, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v18, v2, v5

    .line 602
    .local v18, "discContentDesc":I
    const/16 v24, 0x0

    .local v24, "stackedDataIcon":I
    const/16 v25, 0x0

    .line 604
    .local v25, "stackedVoiceIcon":I
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v3

    .line 605
    .local v3, "slotId":I
    if-ltz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v3, v2, :cond_4

    .line 606
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateIconGroup invalid slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-void

    .line 591
    .end local v3    # "slotId":I
    .end local v8    # "inet":I
    .end local v13    # "contentDesc":[I
    .end local v18    # "discContentDesc":I
    .end local v24    # "stackedDataIcon":I
    .end local v25    # "stackedVoiceIcon":I
    .end local v27    # "dataConnected":Z
    .end local v29    # "dataType":I
    .end local v32    # "level":I
    .end local v33    # "roaming":Z
    .end local v35    # "voiceLevel":I
    .end local v36    # "voiceType":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    move/from16 v32, v0

    .restart local v32    # "level":I
    goto :goto_0

    .line 592
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceLevel:I

    move/from16 v35, v0

    .restart local v35    # "voiceLevel":I
    goto :goto_1

    .line 593
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v8, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    .restart local v8    # "inet":I
    goto :goto_2

    .line 610
    .restart local v3    # "slotId":I
    .restart local v13    # "contentDesc":[I
    .restart local v18    # "discContentDesc":I
    .restart local v24    # "stackedDataIcon":I
    .restart local v25    # "stackedVoiceIcon":I
    .restart local v27    # "dataConnected":Z
    .restart local v29    # "dataType":I
    .restart local v33    # "roaming":Z
    .restart local v36    # "voiceType":I
    :cond_4
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateIconGroup slot:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " style:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mStyle:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 611
    const-string/jumbo v6, " connected:"

    .line 610
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    .line 610
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 611
    const-string/jumbo v6, " inetCondition:"

    .line 610
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 612
    const-string/jumbo v6, " roaming:"

    .line 610
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 612
    const-string/jumbo v6, " level:"

    .line 610
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 612
    const-string/jumbo v6, " voiceLevel:"

    .line 610
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 613
    const-string/jumbo v6, " dataConnected:"

    .line 610
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 614
    const-string/jumbo v6, " dataActivity:"

    .line 610
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataActivity:I

    .line 610
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 615
    const-string/jumbo v6, " CS:"

    .line 610
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 616
    const-string/jumbo v6, "/"

    .line 610
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 616
    invoke-static/range {v36 .. v36}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    .line 610
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 617
    const-string/jumbo v6, ", PS:"

    .line 610
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 618
    const-string/jumbo v6, "/"

    .line 610
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 618
    invoke-static/range {v29 .. v29}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    .line 610
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    move/from16 v0, v29

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/NetworkTypeUtils;->getDataNetTypeFromServiceState(ILandroid/telephony/ServiceState;)I

    move-result v28

    .line 622
    .local v28, "dataNetType":I
    if-eqz v28, :cond_e

    .line 623
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    if-eqz v2, :cond_f

    const/16 v31, 0x1

    .line 624
    .local v31, "isShowVoiceType":Z
    :goto_3
    if-eqz v31, :cond_10

    .line 625
    move/from16 v4, v36

    .line 626
    .local v4, "chosenNetworkType":I
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateVoiceType(II)V

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v5, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v6, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->show4gForLte:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v7, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hspaDataDistinguishable:Z

    move-object/from16 v2, p0

    .line 627
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataType(IIZZZI)V

    .line 631
    move/from16 v0, v32

    move/from16 v1, v33

    invoke-static {v3, v8, v0, v1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getSignalStrengthIcon(IIIZ)I

    move-result v23

    .line 632
    .local v23, "singleSignalIcon":I
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "singleSignalIcon:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v2, :cond_11

    if-ltz v3, :cond_11

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataActivity:I

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getDataActivity(II)I

    move-result v26

    .line 640
    .local v26, "dataActivityId":I
    :goto_5
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->convertMobileStrengthIcon(I)I

    move-result v34

    .line 641
    .local v34, "unstackedSignalIcon":I
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unstackedSignalIcon:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_7
    move/from16 v0, v23

    move/from16 v1, v34

    if-eq v0, v1, :cond_8

    .line 645
    move/from16 v24, v23

    .line 646
    move/from16 v23, v34

    .line 649
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mStyle:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_9

    .line 650
    if-nez v33, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->showDataAndVoice()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 651
    invoke-static/range {v35 .. v35}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getStackedVoiceIcon(I)I

    move-result v25

    .line 659
    :cond_9
    :goto_6
    if-nez v25, :cond_a

    const/16 v24, 0x0

    .line 661
    :cond_a
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getSignalStrengthDes(I)[I

    move-result-object v13

    .line 662
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getSignalNullIcon(I)I

    move-result v16

    .line 663
    .local v16, "sbDiscState":I
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "singleSignalIcon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 665
    const-string/jumbo v6, " dataActivityId="

    .line 664
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 665
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    .line 664
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 666
    const-string/jumbo v6, " stackedDataIcon="

    .line 664
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 666
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    .line 664
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 667
    const-string/jumbo v6, " stackedVoiceIcon="

    .line 664
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 667
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    .line 664
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_b
    const/16 v2, 0x12

    move/from16 v0, v28

    if-ne v0, v2, :cond_13

    .line 672
    const/16 v30, 0x6

    .line 673
    .local v30, "dataTypeIcon":I
    const/16 v22, 0x6

    .line 674
    .local v22, "qsDataTypeIcon":I
    const/16 v20, 0x6

    .line 675
    .local v20, "dataTypeId":I
    const v19, 0x91000c3

    .line 683
    .local v19, "dataContentDesc":I
    :goto_7
    if-eqz v31, :cond_c

    .line 684
    const/16 v20, 0x0

    .line 687
    :cond_c
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v2, :cond_d

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateDataNetType, dataTypeIcon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 689
    const-string/jumbo v6, " qsDataTypeIcon="

    .line 688
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 689
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    .line 688
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 690
    const-string/jumbo v6, " dataContentDesc="

    .line 688
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    new-instance v9, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 693
    invoke-static/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v10

    .line 694
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    .line 695
    const/16 v21, 0x0

    .line 692
    invoke-direct/range {v9 .. v26}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZIIIII)V

    iput-object v9, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 590
    return-void

    .line 622
    .end local v4    # "chosenNetworkType":I
    .end local v16    # "sbDiscState":I
    .end local v19    # "dataContentDesc":I
    .end local v20    # "dataTypeId":I
    .end local v22    # "qsDataTypeIcon":I
    .end local v23    # "singleSignalIcon":I
    .end local v26    # "dataActivityId":I
    .end local v30    # "dataTypeIcon":I
    .end local v31    # "isShowVoiceType":Z
    .end local v34    # "unstackedSignalIcon":I
    :cond_e
    const/16 v31, 0x1

    goto/16 :goto_3

    .line 623
    :cond_f
    const/16 v31, 0x0

    goto/16 :goto_3

    .line 625
    .restart local v31    # "isShowVoiceType":Z
    :cond_10
    move/from16 v4, v28

    .restart local v4    # "chosenNetworkType":I
    goto/16 :goto_4

    .line 637
    .restart local v23    # "singleSignalIcon":I
    :cond_11
    const/16 v26, 0x0

    .restart local v26    # "dataActivityId":I
    goto/16 :goto_5

    .line 652
    .restart local v34    # "unstackedSignalIcon":I
    :cond_12
    if-eqz v33, :cond_9

    if-eqz v26, :cond_9

    .line 654
    move/from16 v0, v32

    invoke-static {v0, v8}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getRoamingSignalIconId(II)I

    move-result v23

    goto/16 :goto_6

    .line 677
    .restart local v16    # "sbDiscState":I
    :cond_13
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getDataTypeIcon(I)I

    move-result v30

    .line 678
    .restart local v30    # "dataTypeIcon":I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getQSDataTypeIcon(I)I

    move-result v22

    .line 679
    .restart local v22    # "qsDataTypeIcon":I
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    aget v20, v2, v3

    .line 680
    .restart local v20    # "dataTypeId":I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getDataTypeDesc(I)I

    move-result v19

    .restart local v19    # "dataContentDesc":I
    goto/16 :goto_7
.end method

.method private getAlternateLteLevel(Landroid/telephony/SignalStrength;)I
    .locals 5
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 784
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    .line 785
    .local v0, "lteRsrp":I
    const/4 v1, 0x0

    .line 786
    .local v1, "rsrpLevel":I
    const/16 v2, -0x2c

    if-le v0, v2, :cond_2

    const/4 v1, 0x0

    .line 792
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 793
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAlternateLteLevel lteRsrp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " rsrpLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_1
    return v1

    .line 787
    :cond_2
    const/16 v2, -0x61

    if-lt v0, v2, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    .line 788
    :cond_3
    const/16 v2, -0x69

    if-lt v0, v2, :cond_4

    const/4 v1, 0x3

    goto :goto_0

    .line 789
    :cond_4
    const/16 v2, -0x71

    if-lt v0, v2, :cond_5

    const/4 v1, 0x2

    goto :goto_0

    .line 790
    :cond_5
    const/16 v2, -0x78

    if-lt v0, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    .line 791
    :cond_6
    const/16 v2, -0x8c

    if-lt v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDataNetworkType()I
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    .line 722
    const/4 v0, 0x0

    return v0

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    return v0
.end method

.method private getNumLevels()I
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x6

    return v0
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 799
    if-eqz p1, :cond_0

    .line 800
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 802
    .local v1, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 803
    :catch_0
    move-exception v0

    .line 804
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v2, "(unknown)"

    return-object v2

    .line 807
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const-string/jumbo v2, "(null)"

    return-object v2
.end method

.method private getSimSlotIndex()I
    .locals 4

    .prologue
    .line 700
    const/4 v0, -0x1

    .line 701
    .local v0, "slotId":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    .line 702
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v0

    .line 704
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSimSlotIndex, slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_1
    return v0
.end method

.method private getVoiceNetworkType()I
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    .line 715
    const/4 v0, 0x0

    return v0

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    return v0
.end method

.method private getVoiceSignalLevel()I
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_0

    .line 748
    const/4 v0, 0x0

    return v0

    .line 750
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    goto :goto_0
.end method

.method private hasService()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 409
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_1

    .line 416
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 423
    return v0

    .line 418
    :pswitch_0
    return v1

    .line 421
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 426
    :cond_1
    return v1

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isCarrierNetworkChangeActive()Z
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    return v0
.end method

.method private isCdma()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->phoneType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isChinaTelecomSim(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 458
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "operator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    return v2

    .line 462
    :cond_0
    const-string/jumbo v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "46011"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "46005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 463
    const-string/jumbo v1, "45502"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "45507"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 462
    if-eqz v1, :cond_2

    .line 464
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 466
    :cond_2
    return v2
.end method

.method private isDataDisabled()Z
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isRoaming()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 440
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCarrierNetworkChangeActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 441
    return v2

    .line 443
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_4

    .line 444
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v0

    .line 445
    .local v0, "iconMode":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v3

    if-eq v3, v1, :cond_3

    .line 446
    if-eqz v0, :cond_1

    .line 447
    if-ne v0, v1, :cond_2

    .line 445
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 447
    goto :goto_0

    :cond_3
    move v1, v2

    .line 445
    goto :goto_0

    .line 449
    .end local v0    # "iconMode":I
    :cond_4
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/telephony/TelephonyManagerEx;->isNetworkRoamingForSlot(I)Z

    move-result v1

    return v1
.end method

.method private mapIconSets()V
    .locals 9

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v4, 0x13

    .line 251
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 253
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 254
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0x11

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    if-nez v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 262
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 261
    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 264
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 265
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 267
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 280
    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 281
    .local v0, "hGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hspaDataDistinguishable:Z

    if-eqz v1, :cond_0

    .line 282
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 285
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 286
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 287
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->show4gForLte:Z

    if-eqz v1, :cond_3

    .line 290
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 291
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hideLtePlus:Z

    if-eqz v1, :cond_2

    .line 292
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 293
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 292
    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 308
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0x12

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    return-void

    .line 269
    .end local v0    # "hGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 270
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 269
    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 272
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 271
    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 273
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 274
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 273
    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 276
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 275
    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_0

    .line 295
    .restart local v0    # "hGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 296
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 295
    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 299
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 300
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hideLtePlus:Z

    if-eqz v1, :cond_4

    .line 301
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 302
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 301
    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 304
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 305
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 304
    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private needUpdateNetwork(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 580
    const-class v1, Lcom/android/systemui/statusbar/CallStateController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CallStateController;

    .line 581
    .local v0, "callStateController":Lcom/android/systemui/statusbar/CallStateController;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/CallStateController;->isMsim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    rsub-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/CallStateController;->getCallState(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSupportDualVolte:Z

    .line 582
    if-eqz v1, :cond_0

    .line 583
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsQcom:Z

    .line 582
    if-eqz v1, :cond_0

    .line 584
    return v2

    .line 587
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private showDataAndVoice()Z
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 754
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mStyle:I

    if-eq v2, v4, :cond_0

    .line 755
    return v3

    .line 757
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataNetworkType()I

    move-result v0

    .line 758
    .local v0, "dataType":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 759
    .local v1, "voiceType":I
    if-eq v0, v5, :cond_1

    .line 760
    if-ne v0, v5, :cond_3

    .line 766
    :cond_1
    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    .line 767
    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    .line 769
    :cond_2
    :goto_0
    return v4

    .line 761
    :cond_3
    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    .line 762
    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    .line 763
    const/16 v2, 0xe

    if-eq v0, v2, :cond_1

    .line 764
    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    .line 765
    const/16 v2, 0x13

    if-eq v0, v2, :cond_1

    .line 771
    :cond_4
    return v3

    .line 768
    :cond_5
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    goto :goto_0
.end method

.method private updateCtSim(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "slotId"    # I

    .prologue
    .line 470
    const-string/jumbo v1, "ss"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "stateExtra":Ljava/lang/String;
    const-string/jumbo v1, "LOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isChinaTelecomSim(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsCtSim:Z

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    const-string/jumbo v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsCtSim:Z

    goto :goto_0
.end method

.method private updateDataSim()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 501
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getDefaultDataSubId()I

    move-result v0

    .line 502
    .local v0, "defaultDataSub":I
    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 503
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v0, v3, :cond_0

    :goto_0
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    .line 500
    :goto_1
    return-void

    .line 503
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 512
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    goto :goto_1
.end method

.method private updateDataType(IIZZZI)V
    .locals 10
    .param p1, "slot"    # I
    .param p2, "type"    # I
    .param p3, "showAtLeast3G"    # Z
    .param p4, "show4GforLte"    # Z
    .param p5, "hspaDistinguishable"    # Z
    .param p6, "inet"    # I

    .prologue
    .line 971
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    aget-object v3, v4, p1

    .line 972
    .local v3, "resName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v5, "com.android.systemui"

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 973
    .local v2, "resId":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 975
    .local v0, "dataTypeArray":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 976
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 1159
    :pswitch_0
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x0

    aput v5, v4, p1

    .line 1160
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    const/4 v5, 0x0

    aput v5, v4, p1

    .line 1161
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const/4 v5, 0x0

    aput v5, v4, p1

    .line 1162
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    const-string/jumbo v5, ""

    aput-object v5, v4, p1

    .line 1163
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x0

    aput v5, v4, p1

    .line 1166
    :goto_1
    const-string/jumbo v4, "MobileSignalController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateDataType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1167
    const-string/jumbo v6, "mSelectedDataTypeIcon[%d]=%d, mSelectedDataActivityIndex=%d"

    .line 1166
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 1168
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    aget v8, v8, p1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    aget v8, v8, p1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    .line 1166
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    return-void

    .line 975
    :cond_0
    const/4 v1, 0x0

    .local v1, "networkOperator":Ljava/lang/String;
    goto :goto_0

    .line 978
    .end local v1    # "networkOperator":Ljava/lang/String;
    :pswitch_1
    if-nez p3, :cond_1

    .line 979
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    .line 980
    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    .line 979
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    .line 981
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const/4 v5, 0x0

    aput v5, v4, p1

    .line 982
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    .line 983
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x0

    aput v5, v4, p1

    .line 984
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x0

    aput v5, v4, p1

    goto :goto_1

    .line 990
    :cond_1
    :pswitch_2
    if-nez p3, :cond_2

    .line 991
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    .line 992
    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    .line 991
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    .line 993
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x902037a

    aput v5, v4, p1

    .line 994
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    .line 995
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x2

    aput v5, v4, p1

    .line 996
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x1

    aput v5, v4, p1

    goto/16 :goto_1

    .line 1003
    :cond_2
    :pswitch_3
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x3

    aput v5, v4, p1

    .line 1004
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    .line 1005
    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    .line 1004
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    .line 1006
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x9020377

    aput v5, v4, p1

    .line 1007
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    .line 1008
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/16 v5, 0x8

    aput v5, v4, p1

    goto/16 :goto_1

    .line 1014
    :pswitch_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMccNncList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1015
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_4

    .line 1016
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_4

    .line 1017
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x6

    aput v5, v4, p1

    .line 1018
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    .line 1019
    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    .line 1018
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    .line 1020
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x9020378

    aput v5, v4, p1

    .line 1021
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    .line 1022
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x3

    aput v5, v4, p1

    .line 1040
    :cond_3
    :goto_2
    const-string/jumbo v4, "MobileSignalController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "datatype = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1041
    const-string/jumbo v6, "; show datatype="

    .line 1040
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1041
    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    .line 1040
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1042
    const-string/jumbo v6, "; networkOperator="

    .line 1040
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1023
    :cond_4
    const/16 v4, 0xa

    if-eq p2, v4, :cond_5

    .line 1024
    const/16 v4, 0x9

    if-ne p2, v4, :cond_6

    .line 1025
    :cond_5
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x4

    aput v5, v4, p1

    .line 1026
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    .line 1027
    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    .line 1026
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    .line 1028
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x902037c

    aput v5, v4, p1

    .line 1029
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    .line 1030
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x4

    aput v5, v4, p1

    goto :goto_2

    .line 1031
    :cond_6
    const/16 v4, 0x8

    if-eq p2, v4, :cond_7

    .line 1032
    const/16 v4, 0xf

    if-ne p2, v4, :cond_3

    .line 1033
    :cond_7
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x5

    aput v5, v4, p1

    .line 1034
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    .line 1035
    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    .line 1034
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    .line 1036
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x902037c

    aput v5, v4, p1

    .line 1037
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    .line 1038
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x5

    aput v5, v4, p1

    goto/16 :goto_2

    .line 1044
    :cond_8
    const/16 v4, 0x8

    if-eq p2, v4, :cond_9

    .line 1045
    const/16 v4, 0x9

    if-ne p2, v4, :cond_a

    .line 1047
    :cond_9
    if-eqz p5, :cond_b

    .line 1048
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x4

    aput v5, v4, p1

    .line 1049
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    .line 1050
    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    .line 1049
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    .line 1051
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x902037c

    aput v5, v4, p1

    .line 1052
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    .line 1053
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x4

    aput v5, v4, p1

    goto/16 :goto_1

    .line 1046
    :cond_a
    const/16 v4, 0xa

    if-eq p2, v4, :cond_9

    .line 1063
    if-eqz p5, :cond_c

    .line 1064
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x5

    aput v5, v4, p1

    .line 1065
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    .line 1066
    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    .line 1065
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    .line 1067
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x902037c

    aput v5, v4, p1

    .line 1068
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    .line 1069
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x5

    aput v5, v4, p1

    goto/16 :goto_1

    .line 1055
    :cond_b
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x3

    aput v5, v4, p1

    .line 1056
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    .line 1057
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    .line 1056
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    .line 1058
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x9020377

    aput v5, v4, p1

    .line 1059
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v4, p1

    .line 1060
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x2

    aput v5, v4, p1

    goto/16 :goto_1

    .line 1071
    :cond_c
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x3

    aput v5, v4, p1

    .line 1072
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    .line 1073
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    .line 1072
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    .line 1074
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x9020377

    aput v5, v4, p1

    .line 1075
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v4, p1

    .line 1076
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x2

    aput v5, v4, p1

    goto/16 :goto_1

    .line 1082
    :pswitch_5
    if-nez p3, :cond_d

    .line 1083
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/16 v5, 0x8

    aput v5, v4, p1

    .line 1084
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    .line 1085
    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    .line 1084
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    .line 1086
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x9020376

    aput v5, v4, p1

    .line 1087
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    .line 1088
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x7

    aput v5, v4, p1

    goto/16 :goto_1

    .line 1094
    :cond_d
    :pswitch_6
    if-nez p3, :cond_e

    .line 1095
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/16 v5, 0x8

    aput v5, v4, p1

    .line 1096
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    .line 1097
    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    .line 1096
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    .line 1098
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x9020376

    aput v5, v4, p1

    .line 1099
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    .line 1100
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x6

    aput v5, v4, p1

    goto/16 :goto_1

    .line 1109
    :cond_e
    :pswitch_7
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x3

    aput v5, v4, p1

    .line 1110
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    .line 1111
    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    .line 1110
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    .line 1112
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x9020377

    aput v5, v4, p1

    .line 1113
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    .line 1114
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x2

    aput v5, v4, p1

    goto/16 :goto_1

    .line 1118
    :pswitch_8
    if-eqz p4, :cond_10

    .line 1119
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x6

    aput v5, v4, p1

    .line 1120
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    .line 1121
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    .line 1120
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    .line 1122
    const/16 v4, 0x13

    if-ne p2, v4, :cond_f

    .line 1124
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x7

    aput v5, v4, p1

    .line 1125
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    .line 1126
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    .line 1125
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    .line 1128
    :cond_f
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x9020378

    aput v5, v4, p1

    .line 1129
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    aput-object v5, v4, p1

    .line 1130
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x3

    aput v5, v4, p1

    goto/16 :goto_1

    .line 1132
    :cond_10
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/16 v5, 0x9

    aput v5, v4, p1

    .line 1133
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    .line 1134
    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    .line 1133
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    .line 1135
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x902037e

    aput v5, v4, p1

    .line 1136
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    .line 1137
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x3

    aput v5, v4, p1

    goto/16 :goto_1

    .line 1142
    :pswitch_9
    if-nez p3, :cond_11

    .line 1143
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x1

    aput v5, v4, p1

    .line 1144
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    .line 1145
    aget-object v6, v0, p2

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    .line 1144
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    .line 1146
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x902037b

    aput v5, v4, p1

    .line 1147
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v5, v5, p2

    aput-object v5, v4, p1

    .line 1148
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x0

    aput v5, v4, p1

    goto/16 :goto_1

    .line 1150
    :cond_11
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v5, 0x3

    aput v5, v4, p1

    .line 1151
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRes:Landroid/content/res/Resources;

    .line 1152
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string/jumbo v7, "com.android.systemui"

    const/4 v8, 0x0

    .line 1151
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, p1

    .line 1153
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v5, 0x9020377

    aput v5, v4, p1

    .line 1154
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v4, p1

    .line 1155
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v5, 0x2

    aput v5, v4, p1

    goto/16 :goto_1

    .line 976
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private final updateTelephony()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 522
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateTelephony: hasService="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 524
    const-string/jumbo v5, " ss="

    .line 523
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 524
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 523
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v2, :cond_9

    move v2, v3

    :goto_0
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    .line 528
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_2

    .line 529
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    .line 530
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showRsrpSignalLevelforLTE:Z

    if-eqz v1, :cond_2

    .line 531
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    .line 532
    .local v0, "dataType":I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    .line 533
    const/16 v1, 0x13

    if-ne v0, v1, :cond_2

    .line 534
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getAlternateLteLevel(Landroid/telephony/SignalStrength;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    .line 538
    .end local v0    # "dataType":I
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_a

    .line 539
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 543
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    if-eqz v2, :cond_3

    .line 544
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    move v4, v3

    .line 543
    :cond_3
    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    .line 545
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateVoiceType(II)V

    .line 547
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    .line 548
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCarrierNetworkChangeActive()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 549
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 553
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-eq v2, v1, :cond_5

    .line 554
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    .line 555
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    .line 558
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_6

    .line 559
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 564
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_7

    .line 565
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 568
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readIconsFromXml:Z

    if-eqz v1, :cond_8

    .line 569
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceSignalLevel()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceLevel:I

    .line 572
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 521
    return-void

    :cond_9
    move v2, v4

    .line 526
    goto/16 :goto_0

    .line 541
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto/16 :goto_1

    .line 550
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 551
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_2

    .line 560
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto :goto_3
.end method

.method private updateVoiceType(II)V
    .locals 4
    .param p1, "slot"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v3, 0x3

    .line 950
    const-string/jumbo v1, ""

    .line 951
    .local v1, "networkNameVoice":Ljava/lang/String;
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v2

    invoke-virtual {v2, p2}, Lmiui/telephony/TelephonyManagerEx;->getNetworkClass(I)I

    move-result v0

    .line 952
    .local v0, "networkClass":I
    if-ne v0, v3, :cond_1

    .line 953
    sget-boolean v2, Lmiui/os/Build;->IS_CT_CUSTOMIZATION_TEST:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;->SUPPORT_CA:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 954
    const/4 v2, 0x7

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 966
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v1, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameVoice:Ljava/lang/String;

    .line 949
    return-void

    .line 956
    :cond_0
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 959
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 960
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 961
    :cond_2
    sget-boolean v2, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-eqz v2, :cond_4

    .line 962
    :cond_3
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 964
    :cond_4
    const-string/jumbo v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected cleanState()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
    .locals 1

    .prologue
    .line 405
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic cleanState()Lcom/android/systemui/statusbar/policy/SignalController$State;
    .locals 1

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 825
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->dump(Ljava/io/PrintWriter;)V

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mSubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mServiceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDataState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDataNetType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    return-void
.end method

.method public getCurrentIconId()I
    .locals 4

    .prologue
    const/4 v2, 0x5

    .line 317
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    .line 319
    .local v0, "level":I
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    const/4 v3, 0x0

    aget-object v1, v1, v3

    if-le v0, v2, :cond_0

    move v0, v2

    .end local v0    # "level":I
    :cond_0
    aget v1, v1, v0

    return v1

    .line 321
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getSignalNullIcon(I)I

    move-result v1

    return v1
.end method

.method public getQsCurrentIconId()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-eqz v0, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getAirplaneModeState(I)I

    move-result v0

    return v0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-ne v0, v2, :cond_1

    .line 330
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getCarrierChangeState(I)I

    move-result v0

    return v0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    if-eqz v0, :cond_3

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result v3

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 332
    :goto_0
    invoke-static {v2, v3, v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getState(IIZ)I

    move-result v0

    return v0

    :cond_2
    move v0, v1

    .line 333
    goto :goto_0

    .line 334
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    if-eqz v0, :cond_4

    .line 335
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getNumLevels()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getEmptyState(I)I

    move-result v0

    return v0

    .line 337
    :cond_4
    return v1
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 480
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataSim()V

    .line 483
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 485
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateCtSim(Landroid/content/Intent;I)V

    .line 486
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsFirstSimStateChange:Z

    if-eqz v1, :cond_0

    .line 487
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsFirstSimStateChange:Z

    .line 488
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/telephony/TelephonyManager;->getPhoneTypeForSlot(I)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->phoneType:I

    goto :goto_0

    .line 490
    :cond_2
    const-string/jumbo v1, "miui.intent.action.ACTION_ENHANCED_4G_LTE_MODE_CHANGE_FOR_SLOT1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 491
    const-string/jumbo v1, "miui.intent.action.ACTION_ENHANCED_4G_LTE_MODE_CHANGE_FOR_SLOT2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 490
    if-eqz v1, :cond_4

    .line 492
    :cond_3
    const-string/jumbo v1, "extra_is_enhanced_4g_lte_on"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mEnableVolteForSlot:Z

    .line 493
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    goto :goto_0

    .line 494
    :cond_4
    const-string/jumbo v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/telephony/TelephonyManager;->getPhoneTypeForSlot(I)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->phoneType:I

    .line 496
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    goto :goto_0
.end method

.method public isEmergencyOnly()Z
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 21
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .prologue
    .line 343
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readIconsFromXml:Z

    if-eqz v1, :cond_0

    .line 344
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->generateIconGroup()V

    .line 346
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 348
    .local v18, "icons":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getContentDescription()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v16

    .line 349
    .local v16, "contentDescription":Ljava/lang/String;
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataContentDescription:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v11

    .line 350
    .local v11, "dataContentDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-ne v1, v4, :cond_7

    .line 351
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    move/from16 v17, v0

    .line 354
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-nez v1, :cond_8

    move/from16 v19, v17

    .line 355
    :goto_1
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-eqz v1, :cond_9

    :cond_1
    const/4 v1, 0x0

    .line 356
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentIconId()I

    move-result v4

    .line 355
    move-object/from16 v0, v16

    invoke-direct {v2, v1, v4, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 358
    .local v2, "statusIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    const/4 v5, 0x0

    .line 359
    .local v5, "qsTypeIcon":I
    const/4 v3, 0x0

    .line 360
    .local v3, "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    const/4 v12, 0x0

    .line 362
    .local v12, "description":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    if-eqz v1, :cond_2

    .line 363
    if-eqz v19, :cond_a

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mQsDataType:I

    .line 364
    :goto_3
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .end local v3    # "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    if-eqz v1, :cond_c

    .line 365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getQsCurrentIconId()I

    move-result v4

    .line 364
    move-object/from16 v0, v16

    invoke-direct {v3, v1, v4, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 366
    .local v3, "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-eqz v1, :cond_d

    const/4 v12, 0x0

    .line 368
    .end local v3    # "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .end local v12    # "description":Ljava/lang/String;
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v1, :cond_3

    .line 369
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    if-eqz v1, :cond_e

    .line 368
    :cond_3
    const/4 v6, 0x0

    .line 371
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v1, :cond_4

    .line 372
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    if-eqz v1, :cond_f

    .line 371
    :cond_4
    const/4 v7, 0x0

    .line 374
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    if-nez v1, :cond_10

    :goto_8
    and-int v19, v19, v17

    .line 375
    .local v19, "showDataIcon":Z
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mStyle:I

    if-nez v1, :cond_11

    const/4 v1, 0x1

    :goto_9
    and-int v19, v19, v1

    .line 377
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v20

    .line 378
    .local v20, "subId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v14

    .line 379
    .local v14, "slot":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v1, :cond_12

    const/4 v8, 0x1

    .line 380
    .local v8, "dataActivityId":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameVoice:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setNetworkNameVoice(ILjava/lang/String;)V

    .line 381
    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    .line 383
    move-object/from16 v0, v18

    iget v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mStackedDataIcon:I

    move-object/from16 v0, v18

    iget v10, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mStackedVoiceIcon:I

    .line 384
    move-object/from16 v0, v18

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mIsWide:Z

    .line 385
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v15, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    move-object/from16 v1, p1

    .line 381
    invoke-interface/range {v1 .. v15}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIIILjava/lang/String;Ljava/lang/String;ZIZ)V

    .line 387
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mEnableVolteForSlot:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegister:Z

    if-eqz v1, :cond_13

    .line 393
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->volteNoService:Z

    .line 396
    :goto_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->volteNoService:Z

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSupportDualVolte:Z

    if-eqz v1, :cond_14

    .line 400
    :cond_6
    :goto_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->volteNoService:Z

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setVolteNoService(IZ)V

    .line 342
    return-void

    .line 350
    .end local v2    # "statusIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .end local v5    # "qsTypeIcon":I
    .end local v8    # "dataActivityId":I
    .end local v14    # "slot":I
    .end local v19    # "showDataIcon":Z
    .end local v20    # "subId":I
    :cond_7
    const/16 v17, 0x0

    .local v17, "dataDisabled":Z
    goto/16 :goto_0

    .line 354
    .end local v17    # "dataDisabled":Z
    :cond_8
    const/16 v19, 0x1

    .local v19, "showDataIcon":Z
    goto/16 :goto_1

    .line 355
    .end local v19    # "showDataIcon":Z
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 363
    .restart local v2    # "statusIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .local v3, "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .restart local v5    # "qsTypeIcon":I
    .restart local v12    # "description":Ljava/lang/String;
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 365
    .end local v3    # "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    :cond_b
    const/4 v1, 0x1

    goto/16 :goto_4

    .line 364
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 366
    .local v3, "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v12, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .local v12, "description":Ljava/lang/String;
    goto/16 :goto_5

    .line 370
    .end local v3    # "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .end local v12    # "description":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v6, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityIn:Z

    .local v6, "activityIn":Z
    goto/16 :goto_6

    .line 373
    .end local v6    # "activityIn":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v7, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityOut:Z

    .local v7, "activityOut":Z
    goto/16 :goto_7

    .line 374
    .end local v7    # "activityOut":Z
    :cond_10
    const/16 v17, 0x1

    goto/16 :goto_8

    .line 375
    .local v19, "showDataIcon":Z
    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_9

    .line 379
    .restart local v14    # "slot":I
    .restart local v20    # "subId":I
    :cond_12
    const/4 v8, 0x0

    .restart local v8    # "dataActivityId":I
    goto/16 :goto_a

    .line 388
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    const/4 v4, 0x6

    if-eq v1, v4, :cond_5

    .line 389
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsCtSim:Z

    .line 387
    if-eqz v1, :cond_5

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-nez v1, :cond_5

    .line 391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->volteNoService:Z

    goto/16 :goto_b

    .line 397
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v1

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v4

    if-eq v1, v4, :cond_6

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->volteNoService:Z

    goto/16 :goto_c
.end method

.method public registerListener()V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 231
    const v2, 0x101e1

    .line 230
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 229
    return-void
.end method

.method setActivity(I)V
    .locals 5
    .param p1, "activity"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 813
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eq p1, v4, :cond_2

    .line 814
    if-ne p1, v2, :cond_3

    move v1, v2

    .line 813
    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityIn:Z

    .line 815
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eq p1, v4, :cond_0

    .line 816
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 815
    :cond_0
    :goto_1
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityOut:Z

    .line 817
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readIconsFromXml:Z

    if-eqz v0, :cond_1

    .line 818
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataActivity:I

    .line 820
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 812
    return-void

    :cond_2
    move v1, v2

    .line 813
    goto :goto_0

    :cond_3
    move v1, v3

    .line 814
    goto :goto_0

    :cond_4
    move v2, v3

    .line 816
    goto :goto_1
.end method

.method public setAirplaneMode(Z)V
    .locals 1
    .param p1, "airplaneMode"    # Z

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 202
    return-void
.end method

.method public setCarrierNetworkChangeMode(Z)V
    .locals 1
    .param p1, "carrierNetworkChangeMode"    # Z

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    .line 223
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    .line 221
    return-void
.end method

.method public setConfiguration(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;)V
    .locals 1
    .param p1, "config"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 192
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readIconsFromXml:Z

    if-nez v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mapIconSets()V

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    .line 190
    return-void
.end method

.method public setImsRegister(Lcom/android/systemui/statusbar/policy/CallbackHandler;Z)V
    .locals 1
    .param p1, "callbackHandler"    # Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .param p2, "imsReg"    # Z

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegister:Z

    .line 729
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setIsImsRegisted(IZ)V

    .line 727
    return-void
.end method

.method public setSpeechHd(Lcom/android/systemui/statusbar/policy/CallbackHandler;Z)V
    .locals 1
    .param p1, "callbackHandler"    # Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .param p2, "hd"    # Z

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->speedHd:Z

    .line 738
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setSpeechHd(IZ)V

    .line 736
    return-void
.end method

.method public setUserSetupComplete(Z)V
    .locals 1
    .param p1, "userSetup"    # Z

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    .line 209
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 207
    return-void
.end method

.method public setVowifi(Lcom/android/systemui/statusbar/policy/CallbackHandler;Z)V
    .locals 1
    .param p1, "callbackHandler"    # Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .param p2, "vowifi"    # Z

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->vowifi:Z

    .line 743
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setVowifi(IZ)V

    .line 741
    return-void
.end method

.method public unregisterListener()V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 242
    return-void
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 3
    .param p1, "connectedTransports"    # Ljava/util/BitSet;
    .param p2, "validatedTransports"    # Ljava/util/BitSet;

    .prologue
    .line 214
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransportType:I

    invoke-virtual {p2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    .line 215
    .local v0, "isValidated":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransportType:I

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    .line 217
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 213
    return-void

    .line 217
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
