.class public Lcom/android/systemui/qs/QSFooter;
.super Landroid/widget/FrameLayout;
.source "QSFooter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mAlarmShowing:Z

.field private mAlarmStatus:Landroid/widget/TextView;

.field private mAlarmStatusCollapsed:Landroid/view/View;

.field private mAlwaysShowMultiUserSwitch:Z

.field private mAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mDate:Landroid/view/View;

.field private mDateTimeGroup:Landroid/view/View;

.field protected mEdit:Landroid/view/View;

.field protected mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

.field private mExpanded:Z

.field private mExpansionAmount:F

.field private mKeyguardShowing:Z

.field private mListening:Z

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field protected mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

.field private mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field protected mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

.field private mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

.field protected mSettingsContainer:Landroid/view/View;

.field private mShowEditIcon:Z

.field private mShowEmergencyCallsOnly:Z

.field private mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSFooter;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSFooter;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSFooter;)Lcom/android/systemui/qs/QSPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSFooter;I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSFooter;->updateAnimator(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSFooter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateVisibilities()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method private createSettingsAlphaAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 246
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEditIcon:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlwaysShowMultiUserSwitch:Z

    if-eqz v1, :cond_0

    .line 247
    const/4 v1, 0x0

    return-object v1

    .line 250
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 251
    .local v0, "animatorBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 253
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEditIcon:Z

    if-eqz v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mEdit:Landroid/view/View;

    const-string/jumbo v2, "alpha"

    new-array v3, v8, [F

    aput v4, v3, v6

    aput v5, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 257
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlwaysShowMultiUserSwitch:Z

    if-nez v1, :cond_2

    .line 258
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const-string/jumbo v2, "alpha"

    new-array v3, v8, [F

    aput v4, v3, v6

    aput v5, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 261
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    return-object v1
.end method

.method private startSettingsActivity()V
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    const/4 v2, 0x1

    .line 390
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 389
    return-void
.end method

.method private updateAlarmVisibilities()V
    .locals 2

    .prologue
    .line 298
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatusCollapsed:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 297
    return-void

    .line 298
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateAnimator(I)V
    .locals 14
    .param p1, "width"    # I

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 172
    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles(Landroid/content/Context;)I

    move-result v1

    .line 173
    .local v1, "numTiles":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x90f0120

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 174
    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x90f0121

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 173
    sub-int v3, v4, v5

    .line 175
    .local v3, "size":I
    mul-int v4, v1, v3

    sub-int v4, p1, v4

    add-int/lit8 v5, v1, -0x1

    div-int v2, v4, v5

    .line 176
    .local v2, "remaining":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x90f01fa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 178
    .local v0, "defSpace":I
    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 179
    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsContainer:Landroid/view/View;

    const-string/jumbo v6, "translationX"

    .line 178
    new-array v7, v12, [F

    .line 179
    sub-int v8, v2, v0

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v7, v10

    aput v9, v7, v11

    .line 178
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    .line 180
    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    const-string/jumbo v6, "rotation"

    .line 178
    new-array v7, v12, [F

    .line 180
    const/high16 v8, -0x3d100000    # -120.0f

    aput v8, v7, v10

    aput v9, v7, v11

    .line 178
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 182
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmShowing:Z

    if-eqz v4, :cond_0

    .line 183
    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    const-string/jumbo v6, "alpha"

    new-array v7, v12, [F

    aput v13, v7, v10

    aput v9, v7, v11

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    .line 184
    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mDateTimeGroup:Landroid/view/View;

    const-string/jumbo v6, "translationX"

    .line 183
    new-array v7, v12, [F

    .line 184
    aput v9, v7, v10

    iget-object v8, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v7, v11

    .line 183
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    .line 185
    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatus:Landroid/widget/TextView;

    const-string/jumbo v6, "alpha"

    .line 183
    new-array v7, v12, [F

    .line 185
    aput v9, v7, v10

    aput v13, v7, v11

    .line 183
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    .line 186
    new-instance v5, Lcom/android/systemui/qs/QSFooter$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/QSFooter$3;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    .line 183
    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 203
    :goto_0
    iget v4, p0, Lcom/android/systemui/qs/QSFooter;->mExpansionAmount:F

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSFooter;->setExpansion(F)V

    .line 171
    return-void

    .line 198
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 199
    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatus:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    invoke-virtual {v4, v13}, Landroid/view/View;->setAlpha(F)V

    .line 201
    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mDateTimeGroup:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method

.method private updateListeners()V
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mListening:Z

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addCallback(Ljava/lang/Object;)V

    .line 340
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasVoiceCallingFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    .line 342
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->removeCallback(Ljava/lang/Object;)V

    .line 346
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    .line 347
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    goto :goto_0
.end method

.method private updateResources()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatus:Landroid/widget/TextView;

    const v1, 0x90f0177

    invoke-static {v0, v1}, Lcom/android/systemui/FontUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 221
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateSettingsAnimator()V

    .line 218
    return-void
.end method

.method private updateSettingsAnimator()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->createSettingsAlphaAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->isLayoutRtl()Z

    move-result v0

    .line 228
    .local v0, "isRtl":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-nez v2, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/qs/QSFooter$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSFooter$4;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 224
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    :cond_1
    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0
.end method

.method private updateVisibilities()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 324
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateAlarmVisibilities()V

    .line 325
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsContainer:Landroid/view/View;

    const v4, 0x9120246

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 326
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/proxy/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    .line 328
    .local v0, "isDemo":Z
    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpanded:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlwaysShowMultiUserSwitch:Z

    if-eqz v1, :cond_1

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->hasMultipleUsers()Z

    move-result v1

    .line 328
    if-eqz v1, :cond_1

    .line 329
    if-eqz v0, :cond_3

    :cond_1
    move v1, v3

    .line 328
    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setVisibility(I)V

    .line 332
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEditIcon:Z

    if-eqz v1, :cond_2

    .line 333
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mEdit:Landroid/view/View;

    if-nez v0, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFooter;->mExpanded:Z

    if-eqz v4, :cond_4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 323
    :cond_2
    return-void

    :cond_3
    move v1, v2

    .line 330
    goto :goto_0

    :cond_4
    move v2, v3

    .line 333
    goto :goto_1
.end method


# virtual methods
.method public getExpandView()Landroid/view/View;
    .locals 1

    .prologue
    .line 310
    const v0, 0x9120247

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 360
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    if-ne p1, v1, :cond_3

    .line 361
    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v2, Lcom/android/systemui/qs/QSFooter$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSFooter$6;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 368
    return-void

    .line 370
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    .line 371
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpanded:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x196

    .line 370
    :goto_0
    invoke-static {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 373
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SettingsButton;->isTunerClick()Z

    move-result v1

    if-nez v1, :cond_1

    .line 374
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->startSettingsActivity()V

    .line 359
    :cond_1
    :goto_1
    return-void

    .line 372
    :cond_2
    const/16 v1, 0x1ea

    goto :goto_0

    .line 376
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mDateTimeGroup:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 377
    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    .line 378
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 377
    :goto_2
    const/16 v4, 0x3a2

    invoke-static {v3, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 379
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_5

    .line 380
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 381
    .local v0, "showIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_1

    .end local v0    # "showIntent":Landroid/app/PendingIntent;
    :cond_4
    move v1, v2

    .line 378
    goto :goto_2

    .line 383
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v3, Landroid/content/Intent;

    .line 384
    const-string/jumbo v4, "android.intent.action.SHOW_ALARMS"

    .line 383
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateResources()V

    .line 207
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    .line 294
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 292
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const v6, 0x1020003

    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 109
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x90d0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEditIcon:Z

    .line 114
    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mEdit:Landroid/view/View;

    .line 115
    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mEdit:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEditIcon:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEditIcon:Z

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qs/QSFooter$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/QSFooter$1;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :cond_0
    const v1, 0x9120241

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mDateTimeGroup:Landroid/view/View;

    .line 132
    const v1, 0x91200a3

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    .line 134
    const v1, 0x9120247

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    .line 135
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    .line 136
    const v4, 0x90d002a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setVisibility(I)V

    .line 139
    const v1, 0x9120245

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/SettingsButton;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    .line 140
    const v1, 0x9120244

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsContainer:Landroid/view/View;

    .line 141
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v1, 0x91202cd

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatusCollapsed:Landroid/view/View;

    .line 144
    const v1, 0x912015d

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatus:Landroid/widget/TextView;

    .line 145
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mDateTimeGroup:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v1, 0x9120242

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 148
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const v2, 0x9120243

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 149
    const v1, 0x90d0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlwaysShowMultiUserSwitch:Z

    .line 153
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SettingsButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    .line 154
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateResources()V

    .line 158
    const-class v1, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 159
    const-class v1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 160
    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 161
    new-instance v1, Lcom/android/systemui/qs/QSFooter$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFooter$2;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 108
    return-void

    :cond_1
    move v1, v3

    .line 115
    goto/16 :goto_0

    :cond_2
    move v2, v3

    .line 137
    goto/16 :goto_1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    .line 215
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateResources()V

    .line 213
    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "picture"    # Landroid/graphics/drawable/Drawable;
    .param p3, "userAccount"    # Ljava/lang/String;

    .prologue
    .line 406
    return-void
.end method

.method public setEmergencyCallsOnly(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 396
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEmergencyCallsOnly:Z

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 397
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 398
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEmergencyCallsOnly:Z

    .line 399
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpanded:Z

    if-eqz v1, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->updateEverything()V

    .line 395
    :cond_0
    return-void

    .line 396
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 0
    .param p1, "icon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .prologue
    .line 426
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 271
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooter;->mExpanded:Z

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->updateEverything()V

    .line 269
    return-void
.end method

.method public setExpansion(F)V
    .locals 2
    .param p1, "headerExpansionFraction"    # F

    .prologue
    .line 276
    iput p1, p0, Lcom/android/systemui/qs/QSFooter;->mExpansionAmount:F

    .line 277
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mKeyguardShowing:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 278
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 285
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateAlarmVisibilities()V

    .line 287
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    const v0, 0x3f6e147b    # 0.93f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setExpanded(Z)V

    .line 275
    return-void

    :cond_3
    move v0, p1

    .line 279
    goto :goto_0

    .line 287
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 0
    .param p1, "icon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .prologue
    .line 430
    return-void
.end method

.method public setIsImsRegisted(IZ)V
    .locals 0
    .param p1, "slot"    # I
    .param p2, "imsRegisted"    # Z

    .prologue
    .line 438
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1
    .param p1, "keyguardShowing"    # Z

    .prologue
    .line 265
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooter;->mKeyguardShowing:Z

    .line 266
    iget v0, p0, Lcom/android/systemui/qs/QSFooter;->mExpansionAmount:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooter;->setExpansion(F)V

    .line 264
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mListening:Z

    if-ne p1, v0, :cond_0

    .line 303
    return-void

    .line 305
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooter;->mListening:Z

    .line 306
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateListeners()V

    .line 301
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 434
    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIIILjava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0
    .param p1, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p2, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "statusType"    # I
    .param p4, "qsType"    # I
    .param p5, "activityIn"    # Z
    .param p6, "activityOut"    # Z
    .param p7, "dataActivityId"    # I
    .param p8, "stackedDataIcon"    # I
    .param p9, "stackedVoiceIcon"    # I
    .param p10, "typeContentDescription"    # Ljava/lang/String;
    .param p11, "description"    # Ljava/lang/String;
    .param p12, "isWide"    # Z
    .param p13, "slot"    # I
    .param p14, "roaming"    # Z

    .prologue
    .line 414
    return-void
.end method

.method public setNetworkNameVoice(ILjava/lang/String;)V
    .locals 0
    .param p1, "slot"    # I
    .param p2, "networkNameVoice"    # Ljava/lang/String;

    .prologue
    .line 458
    return-void
.end method

.method public setNoSims(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 422
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1
    .param p1, "qsPanel"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooter;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 353
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 351
    :cond_0
    return-void
.end method

.method public setSpeechHd(IZ)V
    .locals 0
    .param p1, "slot"    # I
    .param p2, "hd"    # Z

    .prologue
    .line 450
    return-void
.end method

.method public setSubs(Ljava/util/List;)V
    .locals 0
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
    .line 418
    .local p1, "subs":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    return-void
.end method

.method public setVolteNoService(IZ)V
    .locals 0
    .param p1, "slot"    # I
    .param p2, "show"    # Z

    .prologue
    .line 446
    return-void
.end method

.method public setVowifi(IZ)V
    .locals 0
    .param p1, "slot"    # I
    .param p2, "vowifi"    # Z

    .prologue
    .line 442
    return-void
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p4, "activityIn"    # Z
    .param p5, "activityOut"    # Z
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "isTransient"    # Z

    .prologue
    .line 410
    return-void
.end method

.method public updateEverything()V
    .locals 1

    .prologue
    .line 314
    new-instance v0, Lcom/android/systemui/qs/QSFooter$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFooter$5;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooter;->post(Ljava/lang/Runnable;)Z

    .line 313
    return-void
.end method
