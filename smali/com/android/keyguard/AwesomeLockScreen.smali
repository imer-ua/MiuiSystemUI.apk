.class public Lcom/android/keyguard/AwesomeLockScreen;
.super Landroid/widget/FrameLayout;
.source "AwesomeLockScreen.java"

# interfaces
.implements Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/AwesomeLockScreen$1;
    }
.end annotation


# static fields
.field private static mRootHolder:Lcom/android/keyguard/RootHolder;

.field private static mThemeChanged:I

.field private static sStartTime:J

.field static sSuppressNextLockSound:Z

.field private static sTotalWakenTime:J


# instance fields
.field private isPaused:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mInitSuccessful:Z

.field private mIsFocus:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

.field private mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mPasswordMode:I

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWakeStartTime:J


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/AwesomeLockScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mInitSuccessful:Z

    return v0
.end method

.method static synthetic -get1()Lcom/android/keyguard/RootHolder;
    .locals 1

    sget-object v0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/AwesomeLockScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/AwesomeLockScreen;->collapsePanel()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/android/keyguard/RootHolder;

    invoke-direct {v0}, Lcom/android/keyguard/RootHolder;-><init>()V

    sput-object v0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    .line 35
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->isPaused:Z

    .line 60
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mIsFocus:Z

    .line 166
    new-instance v7, Lcom/android/keyguard/AwesomeLockScreen$1;

    invoke-direct {v7, p0}, Lcom/android/keyguard/AwesomeLockScreen$1;-><init>(Lcom/android/keyguard/AwesomeLockScreen;)V

    iput-object v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 106
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 107
    new-instance v7, Lcom/android/keyguard/LockPatternUtilsWrapper;

    iget-object v8, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v7, v8}, Lcom/android/keyguard/LockPatternUtilsWrapper;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    .line 108
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/keyguard/AwesomeLockScreen;->setFocusable(Z)V

    .line 109
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/keyguard/AwesomeLockScreen;->setFocusableInTouchMode(Z)V

    .line 111
    const-string/jumbo v7, "audio"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    iput-object v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 115
    .local v0, "con":Landroid/content/res/Configuration;
    iget-object v7, v0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget v6, v7, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    .line 116
    .local v6, "version":I
    sget v7, Lcom/android/keyguard/AwesomeLockScreen;->mThemeChanged:I

    if-le v6, v7, :cond_0

    .line 117
    invoke-static {}, Lcom/android/keyguard/AwesomeLockScreen;->clearCache()V

    .line 118
    sput v6, Lcom/android/keyguard/AwesomeLockScreen;->mThemeChanged:I

    .line 121
    :cond_0
    sget-object v7, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    iget-object v8, p0, Lcom/android/keyguard/AwesomeLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, p0}, Lcom/android/keyguard/RootHolder;->init(Landroid/content/Context;Lcom/android/keyguard/AwesomeLockScreen;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 122
    const-string/jumbo v7, "AwesomeLockScreen"

    const-string/jumbo v8, "fail to init RootHolder"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 127
    :cond_1
    new-instance v5, Landroid/security/MiuiLockPatternUtils;

    invoke-direct {v5, p1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 128
    .local v5, "utils":Landroid/security/MiuiLockPatternUtils;
    iget-object v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-virtual {v7}, Lcom/android/keyguard/LockPatternUtilsWrapper;->isOwnerInfoEnabled()Z

    move-result v2

    .line 129
    .local v2, "ownerInfoEnabled":Z
    if-eqz v2, :cond_4

    invoke-virtual {v5}, Landroid/security/MiuiLockPatternUtils;->getOwnerInfo()Ljava/lang/String;

    move-result-object v3

    .line 130
    :goto_0
    const-string/jumbo v7, "owner_info"

    sget-object v8, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    invoke-virtual {v8}, Lcom/android/keyguard/RootHolder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v8

    iget-object v8, v8, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-static {v7, v8, v3}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    .line 132
    new-instance v1, Lcom/android/keyguard/HeiHeiGestureView;

    iget-object v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Lcom/android/keyguard/HeiHeiGestureView;-><init>(Landroid/content/Context;)V

    .line 133
    .local v1, "gestureView":Lcom/android/keyguard/HeiHeiGestureView;
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7}, Lcom/android/keyguard/HeiHeiGestureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance v7, Lcom/android/keyguard/AwesomeLockScreen$2;

    invoke-direct {v7, p0}, Lcom/android/keyguard/AwesomeLockScreen$2;-><init>(Lcom/android/keyguard/AwesomeLockScreen;)V

    invoke-virtual {v1, v7}, Lcom/android/keyguard/HeiHeiGestureView;->setOnTriggerListener(Lcom/android/keyguard/HeiHeiGestureView$OnTriggerListener;)V

    .line 141
    invoke-virtual {p0, v1}, Lcom/android/keyguard/AwesomeLockScreen;->addView(Landroid/view/View;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/keyguard/AwesomeLockScreen;->getPasswordMode()I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mPasswordMode:I

    .line 145
    sget-object v7, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    invoke-virtual {v7}, Lcom/android/keyguard/RootHolder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v7

    iget-object v7, v7, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const-string/jumbo v8, "__password_mode"

    iget v9, p0, Lcom/android/keyguard/AwesomeLockScreen;->mPasswordMode:I

    int-to-double v10, v9

    invoke-virtual {v7, v8, v10, v11}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 147
    sget-object v7, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    invoke-virtual {v7}, Lcom/android/keyguard/RootHolder;->getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->setLockscreenCallback(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;)V

    .line 148
    sget-object v7, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    iget-object v8, p0, Lcom/android/keyguard/AwesomeLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/android/keyguard/RootHolder;->createView(Landroid/content/Context;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    move-result-object v7

    iput-object v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    .line 150
    iget-object v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    if-eqz v7, :cond_2

    .line 151
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    .line 152
    const/4 v8, -0x1

    .line 151
    invoke-direct {v4, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 153
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v1, v7, v4}, Lcom/android/keyguard/HeiHeiGestureView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mInitSuccessful:Z

    .line 158
    .end local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    sget-wide v8, Lcom/android/keyguard/AwesomeLockScreen;->sStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    sput-wide v8, Lcom/android/keyguard/AwesomeLockScreen;->sStartTime:J

    .line 161
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/keyguard/AwesomeLockScreen;->mWakeStartTime:J

    .line 162
    invoke-virtual {p0}, Lcom/android/keyguard/AwesomeLockScreen;->onPause()V

    .line 163
    sget-object v7, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    invoke-virtual {v7}, Lcom/android/keyguard/RootHolder;->getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v8

    iget v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mPasswordMode:I

    if-eqz v7, :cond_5

    const/high16 v7, -0x1000000

    :goto_1
    invoke-virtual {v8, v7}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->setBgColor(I)V

    .line 104
    return-void

    .line 129
    .end local v1    # "gestureView":Lcom/android/keyguard/HeiHeiGestureView;
    :cond_4
    const/4 v3, 0x0

    .local v3, "ownerString":Ljava/lang/String;
    goto/16 :goto_0

    .line 163
    .end local v3    # "ownerString":Ljava/lang/String;
    .restart local v1    # "gestureView":Lcom/android/keyguard/HeiHeiGestureView;
    :cond_5
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p3, "panelView"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p4, "panelBar"    # Lcom/android/systemui/statusbar/phone/PanelBar;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/keyguard/AwesomeLockScreen;-><init>(Landroid/content/Context;)V

    .line 89
    iput-object p2, p0, Lcom/android/keyguard/AwesomeLockScreen;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 90
    iput-object p3, p0, Lcom/android/keyguard/AwesomeLockScreen;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 91
    iput-object p4, p0, Lcom/android/keyguard/AwesomeLockScreen;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v0, p3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->setPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 87
    :cond_0
    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    invoke-virtual {v0}, Lcom/android/keyguard/RootHolder;->clear()V

    .line 190
    return-void
.end method

.method private collapsePanel()V
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->collapse(ZF)V

    .line 329
    return-void
.end method

.method private pause()V
    .locals 6

    .prologue
    .line 249
    iget-boolean v2, p0, Lcom/android/keyguard/AwesomeLockScreen;->mInitSuccessful:Z

    if-nez v2, :cond_0

    .line 250
    return-void

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->pause()V

    .line 254
    sget-object v2, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    invoke-virtual {v2}, Lcom/android/keyguard/RootHolder;->getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v2

    const-string/jumbo v3, "pause"

    invoke-virtual {v2, v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->onCommand(Ljava/lang/String;)V

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/keyguard/AwesomeLockScreen;->mWakeStartTime:J

    sub-long v0, v2, v4

    .line 257
    .local v0, "wakenTime":J
    sget-wide v2, Lcom/android/keyguard/AwesomeLockScreen;->sTotalWakenTime:J

    add-long/2addr v2, v0

    sput-wide v2, Lcom/android/keyguard/AwesomeLockScreen;->sTotalWakenTime:J

    .line 248
    return-void
.end method

.method private resume()V
    .locals 4

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mInitSuccessful:Z

    if-nez v0, :cond_0

    .line 276
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->resume()V

    .line 278
    sget-object v0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    invoke-virtual {v0}, Lcom/android/keyguard/RootHolder;->getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v0

    const-string/jumbo v1, "resume"

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->onCommand(Ljava/lang/String;)V

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mWakeStartTime:J

    .line 274
    return-void
.end method

.method private sendLockscreenIntentTypeAnalytics(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 334
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.TRACK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, "analyticsIntent":Landroid/content/Intent;
    const-string/jumbo v1, "eventId"

    .line 336
    const-string/jumbo v2, "lockscreen_intent_type"

    .line 335
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string/jumbo v2, "eventObj"

    .line 338
    if-nez p1, :cond_0

    const-string/jumbo v1, ""

    .line 337
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    return-void

    .line 338
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateStatusBarColormode()V
    .locals 0

    .prologue
    .line 382
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/RootHolder;->cleanUp(Lcom/android/keyguard/AwesomeLockScreen;)V

    .line 284
    return-void
.end method

.method public cleanUpView()V
    .locals 2

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mInitSuccessful:Z

    if-nez v0, :cond_0

    .line 396
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->finish()V

    .line 398
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->cleanUp(Z)V

    .line 394
    return-void
.end method

.method public getPasswordMode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 350
    iget-object v1, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-virtual {v1}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getKeyguardStoredPasswordQuality()I

    move-result v0

    .line 351
    .local v0, "pass":I
    if-nez v0, :cond_0

    .line 352
    return v2

    .line 353
    :cond_0
    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x30000

    if-ne v0, v1, :cond_2

    .line 355
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 357
    :cond_2
    const/16 v1, 0xa

    return v1
.end method

.method public haptic(I)V
    .locals 1
    .param p1, "effectId"    # I

    .prologue
    .line 372
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/AwesomeLockScreen;->performHapticFeedback(I)Z

    .line 371
    return-void
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/LockPatternUtilsWrapper;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isSoundEnable()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 377
    iget-object v2, p0, Lcom/android/keyguard/AwesomeLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 378
    const-string/jumbo v3, "lockscreen_sounds_enabled"

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    const/4 v5, 0x1

    .line 377
    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 379
    .local v0, "lockSoundsEnabled":Z
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/AwesomeLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .end local v0    # "lockSoundsEnabled":Z
    :goto_1
    return v0

    .line 377
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "lockSoundsEnabled":Z
    goto :goto_0

    :cond_1
    move v0, v1

    .line 379
    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/AwesomeLockScreen;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 207
    invoke-direct {p0}, Lcom/android/keyguard/AwesomeLockScreen;->updateStatusBarColormode()V

    .line 204
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 219
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/AwesomeLockScreen;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/keyguard/AwesomeLockScreen;->cleanUp()V

    .line 214
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 211
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->isPaused:Z

    if-eqz v0, :cond_0

    .line 240
    return-void

    .line 243
    :cond_0
    const-string/jumbo v0, "AwesomeLockScreen"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->isPaused:Z

    .line 245
    invoke-direct {p0}, Lcom/android/keyguard/AwesomeLockScreen;->pause()V

    .line 238
    return-void
.end method

.method public onResume(Z)V
    .locals 2
    .param p1, "resumeAnimation"    # Z

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->isPaused:Z

    if-nez v0, :cond_0

    .line 263
    return-void

    .line 266
    :cond_0
    const-string/jumbo v0, "AwesomeLockScreen"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->isPaused:Z

    .line 268
    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mIsFocus:Z

    if-eqz v0, :cond_1

    .line 269
    invoke-direct {p0}, Lcom/android/keyguard/AwesomeLockScreen;->resume()V

    .line 271
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/AwesomeLockScreen;->updateStatusBarColormode()V

    .line 261
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mInitSuccessful:Z

    if-nez v0, :cond_0

    .line 423
    invoke-direct {p0}, Lcom/android/keyguard/AwesomeLockScreen;->collapsePanel()V

    .line 424
    const/4 v0, 0x1

    return v0

    .line 426
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 403
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 404
    iput-boolean p1, p0, Lcom/android/keyguard/AwesomeLockScreen;->mIsFocus:Z

    .line 405
    if-nez p1, :cond_1

    .line 406
    invoke-direct {p0}, Lcom/android/keyguard/AwesomeLockScreen;->pause()V

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->isPaused:Z

    if-nez v0, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/android/keyguard/AwesomeLockScreen;->resume()V

    goto :goto_0
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->userActivity()V

    .line 361
    return-void
.end method

.method public rebindView()V
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mInitSuccessful:Z

    if-nez v0, :cond_0

    .line 183
    return-void

    .line 185
    :cond_0
    sget-object v0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    invoke-virtual {v0}, Lcom/android/keyguard/RootHolder;->getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->setLockscreenCallback(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;)V

    .line 186
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->rebindRoot()V

    .line 181
    return-void
.end method

.method public unlockVerify(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "delay"    # I

    .prologue
    const/4 v4, 0x0

    .line 318
    invoke-virtual {p0}, Lcom/android/keyguard/AwesomeLockScreen;->getPasswordMode()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mPasswordMode:I

    .line 319
    sget-object v0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    invoke-virtual {v0}, Lcom/android/keyguard/RootHolder;->getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string/jumbo v1, "__password_mode"

    iget v2, p0, Lcom/android/keyguard/AwesomeLockScreen;->mPasswordMode:I

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 322
    iget v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mPasswordMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mPasswordMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 323
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/AwesomeLockScreen;->collapsePanel()V

    .line 324
    const/4 v0, 0x1

    return v0

    .line 326
    :cond_1
    return v4
.end method

.method public unlocked(Landroid/content/Intent;I)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "delay"    # I

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/android/keyguard/AwesomeLockScreen;->sendLockscreenIntentTypeAnalytics(Landroid/content/Intent;)V

    .line 297
    new-instance v0, Lcom/android/keyguard/AwesomeLockScreen$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/AwesomeLockScreen$3;-><init>(Lcom/android/keyguard/AwesomeLockScreen;)V

    .line 308
    .local v0, "action":Ljava/lang/Runnable;
    int-to-long v2, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/AwesomeLockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 312
    const-string/jumbo v1, "AwesomeLockScreen"

    const-string/jumbo v2, "lockscreen awake time: [%d sec] in time range: [%d sec]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 313
    sget-wide v4, Lcom/android/keyguard/AwesomeLockScreen;->sTotalWakenTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sget-wide v6, Lcom/android/keyguard/AwesomeLockScreen;->sStartTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 312
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void
.end method
