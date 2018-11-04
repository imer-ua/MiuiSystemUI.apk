.class public Lcom/android/systemui/statusbar/SignalClusterView;
.super Landroid/widget/LinearLayout;
.source "SignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;
.implements Lcom/android/systemui/statusbar/policy/HotspotController$Callback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/SignalClusterView$1;,
        Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static sFilterColor:I


# instance fields
.field private mActivityEnabled:Z

.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneContentDescription:Ljava/lang/String;

.field private mAirplaneIconId:I

.field private mBlockAirplane:Z

.field private mBlockEthernet:Z

.field private mBlockMobile:Z

.field private mBlockWifi:Z

.field private mDarkIntensity:F

.field mDataConnectedStatus:[Z

.field private final mDemoCallback:Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;

.field mDemoMobileSignal:Landroid/widget/ImageView;

.field private mDemoMode:Z

.field private final mEndPadding:I

.field private final mEndPaddingNothingVisible:I

.field mEthernet:Landroid/widget/ImageView;

.field mEthernetDark:Landroid/widget/ImageView;

.field private mEthernetDescription:Ljava/lang/String;

.field mEthernetGroup:Landroid/view/ViewGroup;

.field private mEthernetIconId:I

.field private mEthernetVisible:Z

.field private mForceBlockWifi:Z

.field private final mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mIconScaleFactor:F

.field private mIconTint:I

.field private mIsAirplaneMode:Z

.field private mLastAirplaneIconId:I

.field private mLastEthernetIconId:I

.field private mLastVpnIconId:I

.field private mLastWifiActivityId:I

.field private mLastWifiBadgeId:I

.field private mLastWifiStrengthId:I

.field private final mMobileDataIconStartPadding:I

.field mMobileSignalGroup:[Landroid/widget/LinearLayout;

.field private final mMobileSignalGroupEndPadding:I

.field private final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field mNoSims:Landroid/widget/ImageView;

.field mNoSimsCombo:Landroid/view/View;

.field mNoSimsDark:Landroid/widget/ImageView;

.field private mNoSimsIcon:I

.field private mNoSimsVisible:Z

.field private mNotchEar:Z

.field private mNotchEarDual:Z

.field private mPhoneStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;",
            ">;"
        }
    .end annotation
.end field

.field private mReadIconsFromXML:Z

.field private final mSecondaryTelephonyPadding:I

.field private final mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field mSignalDualNotchGroup:Landroid/view/ViewGroup;

.field mSignalDualNotchMobile:Landroid/widget/ImageView;

.field mSignalDualNotchMobile2:Landroid/widget/ImageView;

.field mSignalDualNotchMobileInout:Landroid/widget/ImageView;

.field mSignalDualNotchMobileType:Landroid/widget/TextView;

.field mSignalDualNotchMobileUpgrade:Landroid/widget/ImageView;

.field private mSimCnt:I

.field private final mTintArea:Landroid/graphics/Rect;

.field mVowifi:[Landroid/widget/ImageView;

.field mVpn:Landroid/widget/ImageView;

.field private mVpnIconId:I

.field private mVpnVisible:Z

.field private final mWideTypeIconStartPadding:I

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityEnabled:Z

.field mWifiAp:Landroid/widget/ImageView;

.field mWifiApConnectMark:Landroid/widget/ImageView;

.field private mWifiBadgeId:I

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field private mWifiIn:Z

.field mWifiLabel:Lcom/android/systemui/miui/statusbar/WifiLabelText;

.field private mWifiName:Ljava/lang/String;

.field private mWifiNoNetwork:Z

.field private mWifiOut:Z

.field mWifiSignalSpacer:Landroid/view/View;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/SignalClusterView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->setStatusBarNet()Z

    move-result v0

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNotchEarDual:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/SignalClusterView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/SignalClusterView;)Lcom/android/systemui/statusbar/policy/SecurityController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiNoNetwork:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/SignalClusterView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNotchEarDual:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/SignalClusterView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/SignalClusterView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/SignalClusterView;Z)I
    .locals 1
    .param p1, "isBranded"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->currentVpnIconId(Z)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/SignalClusterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    const-string/jumbo v0, "SignalClusterView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    .line 906
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/SignalClusterView;->sFilterColor:I

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 167
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    .line 94
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    .line 95
    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    .line 96
    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastVpnIconId:I

    .line 97
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    .line 98
    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    .line 99
    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetIconId:I

    .line 100
    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiBadgeId:I

    .line 101
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 102
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiNoNetwork:Z

    .line 103
    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 104
    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiBadgeId:I

    .line 105
    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiStrengthId:I

    .line 108
    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    .line 109
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 110
    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 111
    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastAirplaneIconId:I

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    .line 117
    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    .line 119
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    .line 125
    new-array v2, v5, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    .line 135
    new-array v2, v5, [Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDataConnectedStatus:[Z

    .line 136
    new-array v2, v5, [Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    .line 945
    new-instance v2, Lcom/android/systemui/statusbar/SignalClusterView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/SignalClusterView$1;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;)V

    .line 944
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoCallback:Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 171
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x90f0195

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 170
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroupEndPadding:I

    .line 173
    const v2, 0x90f0196

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 172
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataIconStartPadding:I

    .line 174
    const v2, 0x90f0197

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWideTypeIconStartPadding:I

    .line 175
    const v2, 0x90f0198

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecondaryTelephonyPadding:I

    .line 176
    const v2, 0x90f019e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPadding:I

    .line 178
    const v2, 0x90f019f

    .line 177
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPaddingNothingVisible:I

    .line 180
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 181
    .local v1, "typedValue":Landroid/util/TypedValue;
    const v2, 0x90f009b

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 182
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    .line 183
    const-class v2, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 184
    const-class v2, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/SecurityController;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 185
    new-instance v2, Lcom/android/systemui/util/DisableStateTracker;

    invoke-direct {v2, v4, v5}, Lcom/android/systemui/util/DisableStateTracker;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 187
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->updateActivityEnabled()V

    .line 188
    const v2, 0x90d0017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mReadIconsFromXML:Z

    .line 190
    const-class v2, Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/HotspotController;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 166
    return-void
.end method

.method static synthetic access$9999(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private apply()V
    .locals 13

    .prologue
    const/4 v11, -0x1

    const/4 v12, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 654
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v5, :cond_0

    return-void

    .line 655
    :cond_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoMode:Z

    if-eqz v5, :cond_2

    .line 656
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 657
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 656
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 659
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 660
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoMobileSignal:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 661
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 662
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAp:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 663
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    aget-object v5, v5, v6

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 664
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    aget-object v5, v5, v12

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 665
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    const v6, 0x90205f5

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 666
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoMobileSignal:Landroid/widget/ImageView;

    const v6, 0x9020593

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 668
    return-void

    .line 671
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 672
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v2

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 671
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 674
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoMobileSignal:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 675
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v5, :cond_c

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 676
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v5, :cond_d

    .line 677
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastVpnIconId:I

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    if-eq v5, v8, :cond_4

    .line 678
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 679
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastVpnIconId:I

    .line 681
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 685
    :goto_3
    sget-boolean v5, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string/jumbo v8, "SignalClusterView"

    const-string/jumbo v9, "vpn: %s"

    new-array v10, v12, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v5, :cond_e

    const-string/jumbo v5, "VISIBLE"

    :goto_4
    aput-object v5, v10, v6

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_5
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    if-eqz v5, :cond_f

    .line 688
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetIconId:I

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    if-eq v5, v8, :cond_6

    .line 689
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 690
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDark:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 691
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetIconId:I

    .line 693
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDescription:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 694
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 699
    :goto_5
    sget-boolean v5, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string/jumbo v8, "SignalClusterView"

    .line 700
    const-string/jumbo v9, "ethernet: %s"

    new-array v10, v12, [Ljava/lang/Object;

    .line 701
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    if-eqz v5, :cond_10

    const-string/jumbo v5, "VISIBLE"

    :goto_6
    aput-object v5, v10, v6

    .line 700
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 699
    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_7
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiNoNetwork:Z

    if-eqz v5, :cond_11

    .line 732
    :cond_8
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiNoNetwork:Z

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNotchEar:Z

    if-eqz v5, :cond_1b

    .line 739
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiLabel:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiName:Ljava/lang/String;

    invoke-virtual {v5, v12, v8}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->setWifiLabel(ZLjava/lang/String;)V

    .line 740
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 743
    :goto_7
    sget-boolean v5, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v5, :cond_a

    const-string/jumbo v8, "SignalClusterView"

    .line 744
    const-string/jumbo v9, "wifi: %s sig=%d"

    const/4 v5, 0x2

    new-array v10, v5, [Ljava/lang/Object;

    .line 745
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_1c

    const-string/jumbo v5, "VISIBLE"

    :goto_8
    aput-object v5, v10, v6

    .line 746
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v12

    .line 744
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 743
    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_a
    const/4 v0, 0x0

    .line 749
    .local v0, "anyMobileVisible":Z
    const/4 v1, 0x0

    .line 750
    .local v1, "firstMobileTypeId":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "state$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 751
    .local v3, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->apply(Z)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 752
    if-nez v0, :cond_b

    .line 753
    invoke-static {v3}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v1

    .line 754
    const/4 v0, 0x1

    goto :goto_9

    .end local v0    # "anyMobileVisible":Z
    .end local v1    # "firstMobileTypeId":I
    .end local v3    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .end local v4    # "state$iterator":Ljava/util/Iterator;
    :cond_c
    move v5, v7

    .line 675
    goto/16 :goto_2

    .line 683
    :cond_d
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 685
    :cond_e
    const-string/jumbo v5, "GONE"

    goto/16 :goto_4

    .line 696
    :cond_f
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_5

    .line 701
    :cond_10
    const-string/jumbo v5, "GONE"

    goto/16 :goto_6

    .line 704
    :cond_11
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiStrengthId:I

    if-ne v5, v8, :cond_12

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiBadgeId:I

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiBadgeId:I

    if-eq v5, v8, :cond_13

    .line 705
    :cond_12
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiBadgeId:I

    if-ne v5, v11, :cond_17

    .line 706
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 710
    :goto_a
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiStrengthId:I

    .line 711
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiBadgeId:I

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiBadgeId:I

    .line 713
    :cond_13
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-virtual {p0, v5, v8}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 715
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiIn:Z

    if-nez v5, :cond_14

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiOut:Z

    if-eqz v5, :cond_18

    :cond_14
    move v5, v6

    :goto_b
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 716
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiIn:Z

    if-eqz v5, :cond_19

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiOut:Z

    if-eqz v5, :cond_19

    .line 717
    const v5, 0x90205e5

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    .line 723
    :cond_15
    :goto_c
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    if-eq v5, v11, :cond_16

    .line 724
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 725
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    invoke-static {v9, v10, v11}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v9

    .line 724
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/Icons;->get(Ljava/lang/Integer;Z)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 728
    :cond_16
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiLabel:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiName:Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->setWifiLabel(ZLjava/lang/String;)V

    .line 729
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_7

    .line 708
    :cond_17
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiBadgeId:I

    invoke-direct {p0, v5, v8, v9}, Lcom/android/systemui/statusbar/SignalClusterView;->setBadgedWifiIconForView(Landroid/widget/ImageView;II)V

    goto :goto_a

    :cond_18
    move v5, v7

    .line 715
    goto :goto_b

    .line 718
    :cond_19
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiIn:Z

    if-eqz v5, :cond_1a

    .line 719
    const v5, 0x90205e3

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    goto :goto_c

    .line 720
    :cond_1a
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiOut:Z

    if-eqz v5, :cond_15

    .line 721
    const v5, 0x90205e7

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    goto :goto_c

    .line 733
    :cond_1b
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-virtual {p0, v5, v8}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 734
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 735
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiLabel:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiName:Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->setWifiLabel(ZLjava/lang/String;)V

    .line 736
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_7

    .line 745
    :cond_1c
    const-string/jumbo v5, "GONE"

    goto/16 :goto_8

    .line 759
    .restart local v0    # "anyMobileVisible":Z
    .restart local v1    # "firstMobileTypeId":I
    .restart local v4    # "state$iterator":Ljava/util/Iterator;
    :cond_1d
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v5, :cond_24

    .line 760
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastAirplaneIconId:I

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    if-eq v5, v8, :cond_1e

    .line 761
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 762
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastAirplaneIconId:I

    .line 764
    :cond_1e
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneContentDescription:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 765
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 770
    :goto_d
    if-eqz v0, :cond_25

    if-eqz v1, :cond_25

    :cond_1f
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_26

    .line 771
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 776
    :goto_e
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    if-eqz v5, :cond_21

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    if-eqz v5, :cond_21

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    if-eqz v5, :cond_21

    .line 777
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsIcon:I

    if-nez v5, :cond_20

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getNoSimIcon()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsIcon:I

    .line 778
    :cond_20
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsIcon:I

    if-eqz v5, :cond_21

    .line 779
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsIcon:I

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 780
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsIcon:I

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 783
    :cond_21
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsCombo:Landroid/view/View;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    if-eqz v8, :cond_22

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v8, :cond_23

    :cond_22
    move v6, v7

    :cond_23
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 653
    return-void

    .line 767
    :cond_24
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d

    .line 770
    :cond_25
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    if-nez v5, :cond_1f

    .line 773
    :cond_26
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e
.end method

.method private applyDarkIntensity(FLandroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p1, "darkIntensity"    # F
    .param p2, "lightIcon"    # Landroid/view/View;
    .param p3, "darkIcon"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 865
    cmpl-float v2, p1, v3

    if-lez v2, :cond_2

    const/4 v1, 0x1

    .local v1, "isDarkMode":Z
    :goto_0
    move-object v2, p3

    .line 866
    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 867
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 868
    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 869
    sget v2, Lcom/android/systemui/statusbar/SignalClusterView;->sFilterColor:I

    if-nez v2, :cond_0

    .line 870
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x90c009c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/SignalClusterView;->sFilterColor:I

    .line 872
    :cond_0
    sget v2, Lcom/android/systemui/statusbar/SignalClusterView;->sFilterColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 877
    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 878
    if-eqz v1, :cond_5

    :goto_3
    invoke-virtual {p3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 864
    return-void

    .line 865
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "isDarkMode":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isDarkMode":Z
    goto :goto_0

    .line 874
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    :cond_4
    move v2, v4

    .line 877
    goto :goto_2

    :cond_5
    move v4, v3

    .line 878
    goto :goto_3
.end method

.method private applyIconTint()V
    .locals 6

    .prologue
    const v4, 0x90205da

    .line 844
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    const v2, 0x902059d

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 846
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v1

    .line 847
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    .line 845
    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->applyDarkIntensity(FLandroid/view/View;Landroid/view/View;)V

    .line 848
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoMode:Z

    if-eqz v1, :cond_0

    const v1, 0x90205f5

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 849
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiApConnectMark:Landroid/widget/ImageView;

    const v2, 0x90205df

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 850
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAp:Landroid/widget/ImageView;

    const v2, 0x90205e1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 851
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 852
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 853
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiLabel:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setTextColor(Landroid/widget/TextView;)V

    .line 854
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 855
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v3

    .line 854
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/Icons;->get(Ljava/lang/Integer;Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 856
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDark:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->applyDarkIntensity(FLandroid/view/View;Landroid/view/View;)V

    .line 857
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoMobileSignal:Landroid/widget/ImageView;

    const v2, 0x9020593

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 858
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoMobileSignal:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v3

    .line 857
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/Icons;->get(Ljava/lang/Integer;Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 859
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 860
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setIconTint(IFLandroid/graphics/Rect;)V

    .line 859
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 848
    .end local v0    # "i":I
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    goto/16 :goto_0

    .line 843
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method private currentVpnIconId(Z)I
    .locals 1
    .param p1, "isBranded"    # Z

    .prologue
    .line 882
    if-eqz p1, :cond_0

    const v0, 0x902035e

    :goto_0
    return v0

    :cond_0
    const v0, 0x90205dc

    goto :goto_0
.end method

.method private static getColorAttr(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .prologue
    const/4 v3, 0x0

    .line 826
    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 827
    .local v1, "ta":Landroid/content/res/TypedArray;
    const/4 v2, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 828
    .local v0, "colorAccent":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 829
    return v0
.end method

.method private getNoSimIcon()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 557
    const/4 v3, 0x0

    .line 559
    .local v3, "resId":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 561
    .local v2, "res":Landroid/content/res/Resources;
    const v5, 0x90d0017

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_0

    return v3

    .line 564
    :cond_0
    const v5, 0x90b0071

    :try_start_0
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 569
    .local v1, "noSimArray":[Ljava/lang/String;
    if-nez v1, :cond_1

    return v3

    .line 565
    .end local v1    # "noSimArray":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    return v3

    .line 571
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v1    # "noSimArray":[Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    aget-object v4, v1, v5

    .line 572
    .local v4, "resName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 573
    sget-boolean v5, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "SignalClusterView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getNoSimIcon resId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " resName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_2
    return v3
.end method

.method private getState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .locals 5
    .param p1, "slot"    # I

    .prologue
    .line 547
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "state$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 548
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 549
    return-object v0

    .line 552
    .end local v0    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_1
    const-string/jumbo v2, "SignalClusterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected subscription "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/4 v2, 0x0

    return-object v2
.end method

.method private getWifiName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "rssi"    # Ljava/lang/String;

    .prologue
    .line 886
    const-string/jumbo v0, ""

    .line 887
    .local v0, "wifiName":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 888
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    const v2, 0x9100128

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 893
    :goto_0
    return-object v0

    .line 890
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hasCorrectSubs(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "subs":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v4, 0x0

    .line 534
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 535
    .local v0, "N":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 536
    return v4

    .line 538
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 539
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2

    if-eq v3, v2, :cond_1

    .line 540
    return v4

    .line 538
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 543
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private inflatePhoneState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .locals 3
    .param p1, "slot"    # I

    .prologue
    .line 578
    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;ILandroid/content/Context;)V

    .line 579
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    array-length v1, v1

    if-gt p1, v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    aget-object v1, v1, p1

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 584
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    return-object v0
.end method

.method private maybeScaleVpnAndNoSimsIcons()V
    .locals 4

    .prologue
    .line 278
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 279
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    .line 285
    new-instance v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    .line 284
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    .line 287
    new-instance v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    .line 286
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    return-void
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 898
    if-nez p1, :cond_0

    return-object v1

    .line 899
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 900
    .local v0, "length":I
    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 901
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 903
    :cond_1
    return-object p1
.end method

.method private setBadgedWifiIconForView(Landroid/widget/ImageView;II)V
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "wifiPieId"    # I
    .param p3, "badgeId"    # I

    .prologue
    .line 813
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 814
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 815
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 813
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 819
    .local v0, "icon":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x901013a

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->getColorAttr(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 821
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->setScaledIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 811
    return-void
.end method

.method private setIconForView(Landroid/widget/ImageView;I)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "iconId"    # I

    .prologue
    .line 792
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 794
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->setScaledIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 790
    return-void
.end method

.method private setScaledIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 798
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 799
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 797
    :goto_0
    return-void

    .line 801
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    invoke-direct {v0, p2, v1}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setStatusBarNet()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    const-string v1, "icon_setnet"

    invoke-static {v0, v1}, Landroid/preference/MiuiCoreSettingsPreference;->getKeyParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private updateActivityEnabled()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90d002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mActivityEnabled:Z

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90d0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityEnabled:Z

    .line 359
    return-void
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 954
    const-string/jumbo v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 955
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoMode:Z

    .line 956
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 957
    :cond_1
    const-string/jumbo v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoMode:Z

    .line 959
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 606
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 607
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 608
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 610
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "state$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 612
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 614
    .end local v0    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 649
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 292
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 295
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    .line 296
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnBranded()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->currentVpnIconId(Z)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    .line 298
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "state$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 299
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 300
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 306
    .end local v0    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_1
    const-class v2, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/TunerService;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "icon_blacklist"

    aput-object v4, v3, v5

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 308
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 309
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    .line 310
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v2, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 311
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Ljava/lang/Object;)V

    .line 312
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v2, p0}, Lcom/android/systemui/statusbar/policy/HotspotController;->addCallback(Ljava/lang/Object;)V

    .line 314
    const-class v2, Lcom/android/systemui/statusbar/policy/DemoModeController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DemoModeController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoCallback:Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/DemoModeController;->addCallback(Ljava/lang/Object;)V

    .line 291
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 262
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 261
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2
    .param p1, "tintArea"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .prologue
    .line 834
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    .line 835
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 836
    .local v0, "changed":Z
    :goto_0
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    .line 837
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 838
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 839
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    .line 833
    :cond_0
    return-void

    .line 834
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 835
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 319
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_0
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v1, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 323
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->removeCallback(Ljava/lang/Object;)V

    .line 324
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 325
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/HotspotController;->removeCallback(Ljava/lang/Object;)V

    .line 326
    const-class v1, Lcom/android/systemui/statusbar/policy/DemoModeController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DemoModeController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoCallback:Lcom/android/systemui/statusbar/policy/DemoModeController$DemoModeCallback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/DemoModeController;->removeCallback(Ljava/lang/Object;)V

    .line 328
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 318
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 228
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 230
    const v0, 0x91202ab

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    .line 231
    const v0, 0x91202ac

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    .line 232
    const v0, 0x91202ad

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    .line 233
    const v0, 0x91202ae

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDark:Landroid/widget/ImageView;

    .line 234
    const v0, 0x91202bb

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 235
    const v0, 0x91202bc

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 236
    const v0, 0x91202be

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 237
    const v0, 0x91202ba

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAp:Landroid/widget/ImageView;

    .line 238
    const v0, 0x91202bf

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/WifiLabelText;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiLabel:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    .line 239
    const v0, 0x91202b9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 240
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    const v0, 0x91202b1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 241
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    const v0, 0x91202b3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 242
    const v0, 0x91202b7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    .line 243
    const v0, 0x91202b4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDemoMobileSignal:Landroid/widget/ImageView;

    .line 244
    const v0, 0x91202b8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    .line 245
    const v0, 0x91202b6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsCombo:Landroid/view/View;

    .line 246
    const v0, 0x91202c0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    .line 247
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    const v0, 0x91202b0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v2

    .line 248
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    const v0, 0x91202b2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v3

    .line 249
    const v0, 0x91202bd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiApConnectMark:Landroid/widget/ImageView;

    .line 250
    const v0, 0x91202b5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchGroup:Landroid/view/ViewGroup;

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchGroup:Landroid/view/ViewGroup;

    const v1, 0x91201fb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobile:Landroid/widget/ImageView;

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchGroup:Landroid/view/ViewGroup;

    const v1, 0x91201fc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobile2:Landroid/widget/ImageView;

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchGroup:Landroid/view/ViewGroup;

    const v1, 0x91200c4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchGroup:Landroid/view/ViewGroup;

    const v1, 0x91201f6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileInout:Landroid/widget/ImageView;

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchGroup:Landroid/view/ViewGroup;

    const v1, 0x91201f7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileUpgrade:Landroid/widget/ImageView;

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->maybeScaleVpnAndNoSimsIcons()V

    .line 227
    return-void
.end method

.method public onHotspotChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 356
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAp:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNotchEar:Z

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    return-void

    .line 356
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 333
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 336
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    .line 332
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 5
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 619
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 621
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 622
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 623
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDark:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 624
    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetIconId:I

    .line 627
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 628
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 629
    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiStrengthId:I

    .line 630
    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiBadgeId:I

    .line 633
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "state$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 634
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 635
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    goto :goto_0

    .line 639
    .end local v0    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    .line 640
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 641
    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastAirplaneIconId:I

    .line 644
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 618
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .prologue
    .line 342
    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SignalClusterView$2;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->post(Ljava/lang/Runnable;)Z

    .line 341
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 205
    const-string/jumbo v5, "icon_blacklist"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 206
    return-void

    .line 208
    :cond_0
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerHelper;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v2

    .line 209
    .local v2, "blockList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string/jumbo v5, "airplane"

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 210
    .local v0, "blockAirplane":Z
    const-string/jumbo v5, "mobile"

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 211
    .local v3, "blockMobile":Z
    const-string/jumbo v5, "wifi"

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 212
    .local v4, "blockWifi":Z
    const-string/jumbo v5, "ethernet"

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 214
    .local v1, "blockEthernet":Z
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockAirplane:Z

    if-ne v0, v5, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    if-eq v3, v5, :cond_3

    .line 216
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockAirplane:Z

    .line 217
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    .line 218
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockEthernet:Z

    .line 219
    if-nez v4, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mForceBlockWifi:Z

    :goto_1
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockWifi:Z

    .line 221
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 222
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 204
    :cond_2
    return-void

    .line 215
    :cond_3
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockEthernet:Z

    if-ne v1, v5, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockWifi:Z

    if-eq v4, v5, :cond_2

    goto :goto_0

    .line 219
    :cond_4
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .prologue
    const/4 v0, 0x0

    .line 477
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockEthernet:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    .line 478
    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    .line 479
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDescription:Ljava/lang/String;

    .line 481
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 476
    return-void

    .line 477
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 2
    .param p1, "icon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .prologue
    const/4 v0, 0x0

    .line 590
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockAirplane:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 591
    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 592
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneContentDescription:Ljava/lang/String;

    .line 594
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 589
    return-void

    .line 590
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setIsImsRegisted(IZ)V
    .locals 1
    .param p1, "slot"    # I
    .param p2, "imsRegisted"    # Z

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->getState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    move-result-object v0

    .line 410
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    if-nez v0, :cond_0

    .line 411
    return-void

    .line 413
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setIsImsRegisted(Z)V

    .line 408
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 598
    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIIILjava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 3
    .param p1, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p2, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "statusType"    # I
    .param p4, "qsType"    # I
    .param p5, "activityIn"    # Z
    .param p6, "activityOut"    # Z
    .param p7, "dataActivityId"    # I
    .param p8, "stackedDataId"    # I
    .param p9, "stackedVoiceId"    # I
    .param p10, "typeContentDescription"    # Ljava/lang/String;
    .param p11, "description"    # Ljava/lang/String;
    .param p12, "isWide"    # Z
    .param p13, "slot"    # I
    .param p14, "roaming"    # Z

    .prologue
    .line 454
    move/from16 v0, p13

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->getState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    move-result-object v1

    .line 455
    .local v1, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    if-nez v1, :cond_0

    .line 456
    return-void

    .line 459
    :cond_0
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set7(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    .line 460
    iget v2, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set4(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 461
    invoke-static {v1, p3}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set6(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 462
    iget-object v2, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;

    .line 463
    invoke-static {v1, p10}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set5(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;

    .line 464
    if-eqz p3, :cond_3

    .end local p12    # "isWide":Z
    :goto_1
    invoke-static {v1, p12}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    .line 465
    move/from16 v0, p14

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mRoaming:Z

    .line 466
    if-eqz p5, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mActivityEnabled:Z

    :goto_2
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityIn:Z

    .line 467
    if-eqz p6, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mActivityEnabled:Z

    :goto_3
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityOut:Z

    .line 468
    invoke-static {v1, p7}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 469
    invoke-static {v1, p8}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set8(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 470
    invoke-static {v1, p9}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set9(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 472
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 453
    return-void

    .line 459
    .restart local p12    # "isWide":Z
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 464
    :cond_3
    const/4 p12, 0x0

    goto :goto_1

    .line 466
    .end local p12    # "isWide":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 467
    :cond_5
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public setNetworkNameVoice(ILjava/lang/String;)V
    .locals 1
    .param p1, "slot"    # I
    .param p2, "networkNameVoice"    # Ljava/lang/String;

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->getState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    move-result-object v0

    .line 443
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    if-nez v0, :cond_0

    .line 444
    return-void

    .line 446
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setNetworkNameVoice(Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public setNoSims(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    const/4 v0, 0x0

    .line 486
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    .line 487
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 485
    return-void

    .line 486
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setNotchEar()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 380
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNotchEar:Z

    .line 381
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAp:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 382
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAp:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 386
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 387
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 388
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 386
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    .end local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 395
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 396
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 397
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v1

    .line 398
    .local v1, "slotId":I
    sget-boolean v2, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-eqz v2, :cond_3

    .line 399
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setIsImsRegisted(IZ)V

    .line 401
    :cond_3
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setVolteNoService(IZ)V

    .line 402
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setSpeechHd(IZ)V

    .line 395
    .end local v1    # "slotId":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 379
    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method public setSpeechHd(IZ)V
    .locals 1
    .param p1, "slot"    # I
    .param p2, "hd"    # Z

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->getState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    move-result-object v0

    .line 426
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    if-nez v0, :cond_0

    .line 427
    return-void

    .line 429
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setSpeechHd(Z)V

    .line 424
    return-void
.end method

.method public setSubs(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "subs":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v5, 0x0

    .line 492
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->hasCorrectSubs(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 493
    return-void

    .line 495
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 496
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 497
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    .line 498
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 496
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 502
    .local v1, "n":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_6

    .line 503
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->inflatePhoneState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 504
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 506
    .local v3, "subId":I
    const-class v4, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->getSignalState()Lcom/android/systemui/statusbar/policy/NetworkController$SignalState;

    move-result-object v2

    .line 507
    .local v2, "signalState":Lcom/android/systemui/statusbar/policy/NetworkController$SignalState;
    iget-object v4, v2, Lcom/android/systemui/statusbar/policy/NetworkController$SignalState;->imsMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 508
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v6

    iget-object v4, v2, Lcom/android/systemui/statusbar/policy/NetworkController$SignalState;->imsMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v6, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->setIsImsRegisted(IZ)V

    .line 511
    :cond_3
    iget-object v4, v2, Lcom/android/systemui/statusbar/policy/NetworkController$SignalState;->vowifiMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 512
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v6

    iget-object v4, v2, Lcom/android/systemui/statusbar/policy/NetworkController$SignalState;->vowifiMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v6, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->setVowifi(IZ)V

    .line 515
    :cond_4
    iget-object v4, v2, Lcom/android/systemui/statusbar/policy/NetworkController$SignalState;->speedHdMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 516
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v6

    iget-object v4, v2, Lcom/android/systemui/statusbar/policy/NetworkController$SignalState;->speedHdMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v6, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->setSpeechHd(IZ)V

    .line 502
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 520
    .end local v2    # "signalState":Lcom/android/systemui/statusbar/policy/NetworkController$SignalState;
    .end local v3    # "subId":I
    :cond_6
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimCnt:I

    .line 521
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNotchEar:Z

    if-eqz v4, :cond_7

    .line 522
    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimCnt:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_9

    const/4 v4, 0x1

    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNotchEarDual:Z

    .line 523
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchGroup:Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    .line 524
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchGroup:Landroid/view/ViewGroup;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNotchEarDual:Z

    if-eqz v6, :cond_a

    :goto_3
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 528
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 529
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    .line 491
    :cond_8
    return-void

    :cond_9
    move v4, v5

    .line 522
    goto :goto_2

    .line 524
    :cond_a
    const/16 v5, 0x8

    goto :goto_3
.end method

.method public setTextColor(Landroid/widget/TextView;)V
    .locals 5
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const v1, 0x90c0140

    const/4 v4, 0x0

    .line 929
    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 930
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    invoke-static {v2, p1, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    const/4 v0, 0x1

    .line 931
    .local v0, "isDark":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 932
    const v1, 0x90c009c

    .line 931
    :cond_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 928
    :goto_1
    return-void

    .line 930
    .end local v0    # "isDark":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isDark":Z
    goto :goto_0

    .line 935
    .end local v0    # "isDark":Z
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    invoke-static {v2, p1, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    const/4 v0, 0x1

    .line 936
    .restart local v0    # "isDark":Z
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_3

    .line 937
    const v1, 0x90c0141

    .line 936
    :cond_3
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 935
    .end local v0    # "isDark":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "isDark":Z
    goto :goto_2
.end method

.method public setVolteNoService(IZ)V
    .locals 1
    .param p1, "slot"    # I
    .param p2, "show"    # Z

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->getState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    move-result-object v0

    .line 418
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    if-nez v0, :cond_0

    .line 419
    return-void

    .line 421
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setVolteNoService(Z)V

    .line 416
    return-void
.end method

.method public setVowifi(IZ)V
    .locals 2
    .param p1, "slot"    # I
    .param p2, "vowifi"    # Z

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVowifi:[Landroid/widget/ImageView;

    aget-object v1, v0, p1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNotchEar:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    :cond_0
    return-void

    .line 434
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;Z)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p4, "activityIn"    # Z
    .param p5, "activityOut"    # Z
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "isTransient"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 367
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockWifi:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 368
    iget v0, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 369
    iget v0, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->iconOverlay:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiBadgeId:I

    .line 370
    iget-object v0, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 371
    invoke-direct {p0, p6}, Lcom/android/systemui/statusbar/SignalClusterView;->getWifiName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiName:Ljava/lang/String;

    .line 372
    if-eqz p4, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mActivityEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiIn:Z

    .line 373
    if-eqz p5, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mActivityEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiOut:Z

    .line 374
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    const v3, 0x90205f8

    if-ne v0, v3, :cond_4

    :goto_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiNoNetwork:Z

    .line 376
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 366
    return-void

    :cond_1
    move v0, v2

    .line 367
    goto :goto_0

    :cond_2
    move v0, v1

    .line 372
    goto :goto_1

    :cond_3
    move v0, v1

    .line 373
    goto :goto_2

    :cond_4
    move v2, v1

    .line 374
    goto :goto_3
.end method

.method protected updateIcon(Landroid/widget/ImageView;I)V
    .locals 6
    .param p1, "icon"    # Landroid/widget/ImageView;
    .param p2, "drawableId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 908
    if-nez p2, :cond_1

    .line 909
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    invoke-static {v3, p1, v4}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    const/4 v0, 0x1

    .line 912
    .local v0, "darkMode":Z
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/Icons;->get(Ljava/lang/Integer;Z)I

    move-result v2

    .line 913
    .local v2, "resId":I
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 914
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 915
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 916
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 917
    sget v3, Lcom/android/systemui/statusbar/SignalClusterView;->sFilterColor:I

    if-nez v3, :cond_2

    .line 918
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90c009c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/android/systemui/statusbar/SignalClusterView;->sFilterColor:I

    .line 920
    :cond_2
    sget v3, Lcom/android/systemui/statusbar/SignalClusterView;->sFilterColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 911
    .end local v0    # "darkMode":Z
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "resId":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "darkMode":Z
    goto :goto_1

    .line 922
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "resId":I
    :cond_4
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method
