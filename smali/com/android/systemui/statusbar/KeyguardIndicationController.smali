.class public Lcom/android/systemui/statusbar/KeyguardIndicationController;
.super Ljava/lang/Object;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyguardIndicationController$1;,
        Lcom/android/systemui/statusbar/KeyguardIndicationController$2;,
        Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;
    }
.end annotation


# instance fields
.field private final mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryLevel:I

.field private mChargeAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mChargingSpeed:I

.field private mChargingWattage:I

.field private final mContext:Landroid/content/Context;

.field private mDarkMode:Z

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private mDozing:Z

.field private final mFastThreshold:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIndicationArea:Landroid/view/ViewGroup;

.field private mMessageToShowOnScreenOn:Ljava/lang/String;

.field private mPowerCharged:Z

.field private mPowerPluggedIn:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mRestingIndication:Ljava/lang/String;

.field private mShouldUpdateBatteryIndication:Z

.field private final mSlowThreshold:I

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

.field private final mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private final mTickReceiver:Landroid/content/BroadcastReceiver;

.field private mTransientIndication:Ljava/lang/String;

.field private mTransientTextColor:I

.field private final mUpArrow:Landroid/widget/ImageView;

.field private mUpArrowIndication:Ljava/lang/String;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVisible:Z

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrowIndication:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFastThreshold:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMessageToShowOnScreenOn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSlowThreshold:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/KeyguardIndicationController;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargeAsyncTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingWattage:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMessageToShowOnScreenOn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShouldUpdateBatteryIndication:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrowIndication:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->clearUpArrowAnimation()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->handleExitArrowAndTextAnimation()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->handleTickReceived()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideChargingClickToDetailInfo()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateChargingInfoIndication()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "indicationArea"    # Landroid/view/ViewGroup;
    .param p3, "upArrow"    # Landroid/widget/ImageView;

    .prologue
    .line 124
    const-string/jumbo v0, "Doze:KeyguardIndication"

    invoke-static {p1, v0}, Lcom/android/systemui/util/wakelock/WakeLockHelper;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v0

    .line 123
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/util/wakelock/WakeLock;Landroid/widget/ImageView;)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->registerCallbacks(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 122
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/util/wakelock/WakeLock;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "indicationArea"    # Landroid/view/ViewGroup;
    .param p3, "wakeLock"    # Lcom/android/systemui/util/wakelock/WakeLock;
    .param p4, "upArrow"    # Landroid/widget/ImageView;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTickReceiver:Landroid/content/BroadcastReceiver;

    .line 360
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    .line 134
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mResources:Landroid/content/res/Resources;

    .line 136
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    .line 138
    const v0, 0x9120129

    .line 137
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 140
    const v0, 0x9120128

    .line 139
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 141
    iput-object p4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrow:Landroid/widget/ImageView;

    .line 142
    new-instance v0, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-direct {v0, p3}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mResources:Landroid/content/res/Resources;

    const v1, 0x90e0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSlowThreshold:I

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mResources:Landroid/content/res/Resources;

    const v1, 0x90e0049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFastThreshold:I

    .line 147
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUserManager:Landroid/os/UserManager;

    .line 149
    const-string/jumbo v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 148
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 152
    const-string/jumbo v0, "device_policy"

    .line 151
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 154
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    .line 133
    return-void
.end method

.method private clearUpArrowAnimation()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->clearAnimation()V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 393
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    .line 388
    return-void
.end method

.method private handleExitArrowAndTextAnimation()V
    .locals 14

    .prologue
    .line 409
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v13

    .line 410
    .local v13, "upArrowFadeOut":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const/high16 v3, 0x10a0000

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v11

    .line 411
    .local v11, "textFadeIn":Landroid/view/animation/Animation;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 412
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 413
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 414
    const/4 v7, 0x1

    const/high16 v8, -0x40000000    # -2.0f

    .line 411
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 415
    .local v0, "upArrowToTop":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 416
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 417
    const/4 v6, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    .line 418
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 415
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 420
    .local v1, "textFromBottom":Landroid/view/animation/Animation;
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v12, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 421
    .local v12, "upArrowExitAnimationSet":Landroid/view/animation/AnimationSet;
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v10, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 423
    .local v10, "textEnterAnimationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 424
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 425
    const-wide/16 v2, 0x1f4

    invoke-virtual {v12, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 427
    invoke-virtual {v10, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 428
    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 429
    const-wide/16 v2, 0x1f4

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 430
    const-wide/16 v2, 0x64

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 432
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 449
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 466
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 467
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v2, v10}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 407
    return-void
.end method

.method private handleTickReceived()V
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_0

    .line 398
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    .line 396
    :cond_0
    return-void
.end method

.method private hideChargingClickToDetailInfo()V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShouldUpdateBatteryIndication:Z

    .line 404
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    .line 402
    return-void
.end method

.method private registerCallbacks(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 6
    .param p1, "monitor"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTickReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandleCompat;->SYSTEM:Landroid/os/UserHandle;

    .line 164
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.TIME_TICK"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 165
    sget-object v4, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    .line 164
    const/4 v4, 0x0

    .line 163
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 160
    return-void
.end method

.method private updateChargingInfoIndication()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargeAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargeAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 321
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 339
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 321
    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargeAsyncTask:Landroid/os/AsyncTask;

    .line 317
    return-void
.end method

.method private updateDisclosure()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 186
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v1, :cond_0

    .line 187
    return-void

    .line 190
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v1}, Landroid/app/admin/DevicePolicyManagerCompat;->isDeviceManaged(Landroid/app/admin/DevicePolicyManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v1}, Landroid/app/admin/DevicePolicyManagerCompat;->getDeviceOwnerOrganizationName(Landroid/app/admin/DevicePolicyManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 193
    .local v0, "organizationName":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 194
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mResources:Landroid/content/res/Resources;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 195
    aput-object v0, v3, v5

    const v4, 0x910019c

    .line 194
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 199
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    .line 185
    .end local v0    # "organizationName":Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 197
    .restart local v0    # "organizationName":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const v2, 0x910019b

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(I)V

    goto :goto_0

    .line 201
    .end local v0    # "organizationName":Ljava/lang/CharSequence;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateIndication()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 281
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_3

    .line 284
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextColor:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextColor(I)V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextColor:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextColor(I)V

    .line 276
    :cond_3
    :goto_1
    return-void

    .line 299
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-eqz v0, :cond_5

    .line 300
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShouldUpdateBatteryIndication:Z

    if-eqz v0, :cond_3

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 304
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrowIndication:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrowIndication:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextColor(I)V

    .line 307
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrow:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDarkMode:Z

    if-eqz v0, :cond_6

    .line 308
    const v0, 0x902024b

    .line 307
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 309
    :cond_6
    const v0, 0x902024a

    goto :goto_2

    .line 311
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRestingIndication:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextColor(I)V

    goto :goto_1
.end method


# virtual methods
.method protected getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object v0
.end method

.method public getTextColor()I
    .locals 2

    .prologue
    .line 795
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mResources:Landroid/content/res/Resources;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDarkMode:Z

    if-eqz v0, :cond_0

    .line 796
    const v0, 0x90c00fa

    .line 795
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 797
    :cond_0
    const v0, 0x90c0105

    goto :goto_0
.end method

.method public hideTransientIndication()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 270
    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    .line 268
    :cond_0
    return-void
.end method

.method public hideTransientIndicationDelayed(J)V
    .locals 3
    .param p1, "delayMs"    # J

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    .line 233
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 232
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 231
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 349
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->clearUpArrowAnimation()V

    .line 347
    :cond_0
    return-void
.end method

.method public setDarkMode(Z)V
    .locals 1
    .param p1, "dark"    # Z

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDarkMode:Z

    if-eq v0, p1, :cond_0

    .line 789
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDarkMode:Z

    .line 790
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    .line 787
    :cond_0
    return-void
.end method

.method public setDozing(Z)V
    .locals 1
    .param p1, "dozing"    # Z

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-ne v0, p1, :cond_0

    .line 472
    return-void

    .line 474
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    .line 475
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    .line 476
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    .line 470
    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0
    .param p1, "statusBarKeyguardViewManager"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 343
    return-void
.end method

.method public setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V
    .locals 0
    .param p1, "userInfoController"    # Lcom/android/systemui/statusbar/policy/UserInfoController;

    .prologue
    .line 225
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    .line 207
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 208
    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    .line 205
    :cond_0
    return-void

    .line 207
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showTransientIndication(I)V
    .locals 1
    .param p1, "transientIndication"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public showTransientIndication(Ljava/lang/String;)V
    .locals 1
    .param p1, "transientIndication"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTextColor()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;I)V

    .line 246
    return-void
.end method

.method public showTransientIndication(Ljava/lang/String;I)V
    .locals 2
    .param p1, "transientIndication"    # Ljava/lang/String;
    .param p2, "textColor"    # I

    .prologue
    const/4 v1, 0x1

    .line 254
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    .line 255
    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextColor:I

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    .line 253
    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 260
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    goto :goto_0
.end method
