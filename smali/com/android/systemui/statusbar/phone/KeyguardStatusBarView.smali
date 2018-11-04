.class public Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
.super Landroid/widget/RelativeLayout;
.source "KeyguardStatusBarView.java"

# interfaces
.implements Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;


# instance fields
.field private mBlockClickActionToStatusBar:Z

.field private mCarrierLabel:Lcom/android/keyguard/CarrierText;

.field private mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

.field private mDarkModeIconColorSingleTone:I

.field private mLightModeIconColorSingleTone:I

.field private mSosObserver:Landroid/database/ContentObserver;

.field private mSosView:Landroid/widget/ImageView;

.field private mStatusBarPrompt:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

.field private mStatusIcons:Landroid/widget/LinearLayout;

.field private mSystemIcons:Landroid/widget/LinearLayout;

.field private mSystemIconsSuperContainer:Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateSosStatusBar()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method private registerSosStateListener()V
    .locals 4

    .prologue
    .line 115
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSosObserver:Landroid/database/ContentObserver;

    .line 127
    const-string/jumbo v1, "key_is_in_miui_sos_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 128
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSosObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 114
    return-void
.end method

.method private updateNotchPromptViewLayout(Landroid/view/View;)V
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x11

    .line 231
    if-eqz p1, :cond_1

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "center":Z
    sget-boolean v3, Lcom/android/systemui/Constants;->IS_NARROW_NOTCH:Z

    if-nez v3, :cond_0

    .line 234
    const/4 v0, 0x1

    .line 237
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 238
    .local v2, "mlp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    .line 239
    .local v1, "centerValueOld":Z
    :goto_0
    if-eq v1, v0, :cond_1

    .line 240
    if-eqz v0, :cond_3

    .line 241
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 245
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    .end local v0    # "center":Z
    .end local v1    # "centerValueOld":Z
    .end local v2    # "mlp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void

    .line 238
    .restart local v0    # "center":Z
    .restart local v2    # "mlp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 243
    .restart local v1    # "centerValueOld":Z
    :cond_3
    const v3, 0x800013

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1
.end method

.method private updateSosStatusBar()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 133
    const-string/jumbo v3, "key_is_in_miui_sos_mode"

    .line 132
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 133
    const/4 v3, 0x1

    .line 132
    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    .line 134
    .local v0, "showSos":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/CarrierText;->forceHide(Z)V

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSosView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 138
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSosView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    :cond_1
    return-void

    .line 132
    .end local v0    # "showSos":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "showSos":Z
    goto :goto_0

    .line 138
    :cond_3
    const/16 v1, 0x8

    goto :goto_1
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 179
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->registerSosStateListener()V

    .line 180
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NARROW_NOTCH:Z

    if-eqz v0, :cond_2

    .line 181
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;-><init>(Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->setShieldDarkReceiver(Z)V

    .line 183
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NARROW_NOTCH:Z

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mWhiteList:Landroid/util/ArraySet;

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mWhiteList:Landroid/util/ArraySet;

    const-string/jumbo v1, "volume"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mWhiteList:Landroid/util/ArraySet;

    const-string/jumbo v1, "quiet"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mWhiteList:Landroid/util/ArraySet;

    const-string/jumbo v1, "alarm_clock"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_1
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 177
    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 195
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSosObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    if-eqz v0, :cond_0

    .line 198
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 194
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const v2, 0x91202fb

    .line 79
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 80
    const v0, 0x912015f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    .line 81
    const v0, 0x9120162

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSosView:Landroid/widget/ImageView;

    .line 82
    const v0, 0x9120161

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    .line 83
    const v0, 0x91202f8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIcons:Landroid/widget/LinearLayout;

    .line 85
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_1

    .line 86
    const v0, 0x91202b0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 87
    .local v8, "signalClusterView":Lcom/android/systemui/statusbar/SignalClusterView;
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/SignalClusterView;->setNotchEar()V

    .line 88
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NARROW_NOTCH:Z

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :cond_0
    const v0, 0x91202fa

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NetworkSpeedView;

    .line 92
    .local v7, "networkSpeedView":Lcom/android/systemui/statusbar/NetworkSpeedView;
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setNotch()V

    .line 93
    const v0, 0x91202c7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/BatteryMeterView;

    .line 94
    .local v6, "batteryMeterView":Lcom/android/systemui/BatteryMeterView;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/android/systemui/BatteryMeterView;->setNortchEar(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateNotchPromptViewLayout(Landroid/view/View;)V

    .line 97
    .end local v6    # "batteryMeterView":Lcom/android/systemui/BatteryMeterView;
    .end local v7    # "networkSpeedView":Lcom/android/systemui/statusbar/NetworkSpeedView;
    .end local v8    # "signalClusterView":Lcom/android/systemui/statusbar/SignalClusterView;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    const v1, 0x90c0086

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDarkModeIconColorSingleTone:I

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    const v1, 0x90c0089

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLightModeIconColorSingleTone:I

    .line 99
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 101
    const/16 v4, 0xf

    .line 105
    .local v4, "disableFlags":I
    const-class v0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusBarPrompt:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusBarPrompt:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    .line 107
    const-string/jumbo v1, "KeyguardStatusBarView"

    const/4 v2, 0x0

    move-object v3, p0

    move-object v5, p0

    .line 106
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->addStatusBarPrompt(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewGroup;ILcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;)V

    .line 78
    return-void
.end method

.method public onPromptStateChanged(Z)V
    .locals 2
    .param p1, "isNormalMode"    # Z

    .prologue
    .line 252
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    .line 251
    :cond_0
    return-void

    .line 253
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 173
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 160
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusBarPrompt:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->blockClickAction()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBlockClickActionToStatusBar:Z

    .line 161
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBlockClickActionToStatusBar:Z

    if-eqz v0, :cond_0

    .line 162
    return v1

    .line 166
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBlockClickActionToStatusBar:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusBarPrompt:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->handleClickAction()V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBlockClickActionToStatusBar:Z

    .line 169
    return v1

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDarkMode(Z)V
    .locals 10
    .param p1, "isDark"    # Z

    .prologue
    const/4 v9, 0x0

    .line 203
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz p1, :cond_1

    .line 204
    const v6, 0x90c0141

    .line 203
    :goto_0
    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/android/keyguard/CarrierText;->setTextColor(I)V

    .line 206
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 207
    .local v0, "area":Landroid/graphics/Rect;
    if-eqz p1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 208
    .local v1, "darkIntensity":F
    :goto_1
    if-eqz p1, :cond_3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDarkModeIconColorSingleTone:I

    .line 210
    .local v4, "tint":I
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSosView:Landroid/widget/ImageView;

    const v7, 0x90205c2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSosView:Landroid/widget/ImageView;

    invoke-static {v0, v8, v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/Icons;->get(Ljava/lang/Integer;Z)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 213
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 214
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    if-eqz v6, :cond_0

    .line 215
    check-cast v5, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    .end local v5    # "view":Landroid/view/View;
    invoke-interface {v5, v0, v1, v4}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 212
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 205
    .end local v0    # "area":Landroid/graphics/Rect;
    .end local v1    # "darkIntensity":F
    .end local v2    # "i":I
    .end local v4    # "tint":I
    :cond_1
    const v6, 0x90c0140

    goto :goto_0

    .line 207
    .restart local v0    # "area":Landroid/graphics/Rect;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "darkIntensity":F
    goto :goto_1

    .line 208
    :cond_3
    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLightModeIconColorSingleTone:I

    .restart local v4    # "tint":I
    goto :goto_2

    .line 218
    .restart local v2    # "i":I
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    if-eqz v6, :cond_5

    .line 219
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-virtual {v6, v0, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->setDarkIntensity(Landroid/graphics/Rect;FI)V

    .line 221
    :cond_5
    const/4 v2, 0x0

    :goto_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_7

    .line 222
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v6, :cond_6

    .line 223
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 224
    .local v3, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v6}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 225
    invoke-static {v0, v3, v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v7

    .line 224
    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/Icons;->get(Ljava/lang/Integer;Z)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    .line 221
    .end local v3    # "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 202
    :cond_7
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 145
    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 143
    :cond_0
    return-void
.end method
